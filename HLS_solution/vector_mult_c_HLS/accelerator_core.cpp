/* --------------------------------------------------------
Modify by Yuhzi Chen
Reference: xapp1170 matrix multiplication example
.C file for floating point vector multiplication
Contains vector multiplication function in software and hardware
AXI4-Stream interface with Vivado HLS
Testbench for validation
 --------------------------------------------------------*/
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <ap_axi_sdata.h>

typedef ap_axiu<32,4,5,5> AXI_VAL;
typedef float T;

const int SIZE = 784;
#define DB_DEBUG

/* --------------------------------------------------------
Vector multiplication function in software
 --------------------------------------------------------*/
template <typename T, int SIZE>
void vector_multiply_sw(T a[SIZE], T b[SIZE], T* out)
{
	for (int i = 0; i < SIZE; ++i)
		*out += a[i] * b[i];
	return;
}

/* --------------------------------------------------------
Vector multiplication function in hardware
 --------------------------------------------------------*/
template <typename T, int SIZE>
void vector_multiply_hw(T a[SIZE], T b[SIZE], T* out)
{
	// Partition BRAM
	int const FACTOR = SIZE/10;
#pragma HLS INLINE off
#pragma HLS array_partition variable=a block factor=FACTOR
#pragma HLS array_partition variable=b block factor=FACTOR
	T sum = 0;
	for (int i = 0; i < SIZE; ++i)
	    sum += a[i] * b[i];
	*out = sum;
	return;
}

/* --------------------------------------------------------
// Installation functions of axi stream
 --------------------------------------------------------*/
template <typename T, int U, int TI, int TD>
inline T pop_stream(ap_axiu <sizeof(T)*8,U,TI,TD> const &e)
{
#pragma HLS INLINE off

	// Instead use a union
    // Direct type-cast of uint -> float, share the same data-slot
	assert(sizeof(T) == sizeof(int));
	union
	{
		int ival;
		T oval;
	} converter;
	converter.ival = e.data;
	T ret = converter.oval;

	volatile ap_uint<sizeof(T)> strb = e.strb;
	volatile ap_uint<sizeof(T)> keep = e.keep;
	volatile ap_uint<U> user = e.user;
	volatile ap_uint<1> last = e.last;
	volatile ap_uint<TI> id = e.id;
	volatile ap_uint<TD> dest = e.dest;

	return ret;
}

template <typename T, int U, int TI, int TD>
inline ap_axiu <sizeof(T)*8,U,TI,TD> push_stream(T const &v, bool last = false)
{
#pragma HLS INLINE off
	ap_axiu<sizeof(T)*8,U,TI,TD> e;

	// Use a union, b/c reinterpret_cast not supported
    // Direct type-cast of uint -> float
	assert(sizeof(T) == sizeof(int));
	union
	{
		int oval;
		T ival;
	} converter;
	converter.ival = v;
	e.data = converter.oval;

	// Set it to sizeof(T) ones
	e.strb = -1;
	e.keep = 15;
	e.user = 0;
	e.last = last ? 1 : 0;
	e.id = 0;
	e.dest = 0;
	return e;
}

/* --------------------------------------------------------
// Accelerator entry function: DUT-Design Under Test(top level function)
 --------------------------------------------------------*/
template <typename T, int SIZE, int U, int TI, int TD>
void mult_accel_core (
	AXI_VAL in_stream[2*SIZE],
	AXI_VAL out_stream[1])
{
	T a[SIZE];
	T b[SIZE];
	T out;

	assert(sizeof(T)*8 == 32);

	// Stream in first vector
	for(int i=0; i<SIZE; i++)
		a[i] = pop_stream<T,U,TI,TD>(in_stream[i]);

    // Stream in second vector
    for(int i=0; i<SIZE; i++)
    {
        int k = i + SIZE;
    	b[i] = pop_stream<T,U,TI,TD>(in_stream[k]);
    }
    
    // Multiplication
    vector_multiply_hw<T, SIZE>(a,b,&out);

    // Stream out result
    out_stream[0] = push_stream<T,U,TI,TD>(out,1);

    return;
}

// this is the top level design that will be synthesized into RTL
void mult_accel_core_call (AXI_VAL in_stream[2*SIZE], AXI_VAL out_stream[1])
{
	// Map ports to Vivado HLS interfaces
	#pragma HLS INTERFACE ap_fifo port=in_stream
	#pragma HLS INTERFACE ap_fifo port=out_stream

	// Map HLS ports to AXI interfaces
	#pragma HLS RESOURCE variable=in_stream  core=AXIS metadata="-bus_bundle INPUT_STREAM"
	#pragma HLS RESOURCE variable=out_stream core=AXIS metadata="-bus_bundle OUTPUT_STREAM"
	#pragma HLS RESOURCE variable=return core=AXI4LiteS metadata="-bus_bundle CONTROL_BUS"
	
	mult_accel_core <T, SIZE, 4, 5, 5>(in_stream, out_stream);
	
	return;
}

/* --------------------------------------------------------
Testbench for the hardware function
 --------------------------------------------------------*/
template <typename T, int SIZE, int U, int TI, int TD>
int vector_multiply_tb(void)
{
	int i, err;

	T vector_a[SIZE];
	T vector_b[SIZE];
	T mult_sw;
	T mult_hw;

	// Vector Initiation
	for(i = 0; i<SIZE; i++)
		vector_a[i] = (float)(i/2);

	for(i = 0; i<SIZE; i++)
		vector_b[i] = (float)(i/4);

#ifdef DB_DEBUG

	printf("DEBUGGING AXI4 STREAMING DATA TYPES!\n");

	// Prepare data for the DUT
	AXI_VAL inp_stream[2*SIZE];
	AXI_VAL out_stream[1];

	assert(sizeof(T)*8 == 32);
	// Stream in the first input
	for(int i=0; i<SIZE; i++)
		inp_stream[i] = push_stream<T,U,TI,TD>(vector_a[i],0);
        
    // Stream in the second input
    for(int i=0; i<SIZE; i++)
        inp_stream[i+SIZE] = push_stream<T,U,TI,TD>(vector_b[i],i == (SIZE-1));

    // AXIS entry
    mult_accel_core_call(inp_stream, out_stream);
    
    // Extract the output from the out stream
    mult_hw = pop_stream<T,U,TI,TD>(out_stream[0]);

#else

	printf("NORMAL MODE\n");

	vector_multiply_hw<T, SIZE>(vector_a, vector_b, &mult_hw);

#endif

	// Software implementation
	vector_multiply_sw<T, SIZE>(vector_a, vector_b, &mult_sw);

	// Comparison
	err = 0;
	if (mult_sw != mult_hw)
		err = 1;

	if (err == 0)
		printf("Test successful! - Result matched: %f\n", mult_sw);
	else
		printf("Test failed! - DIF sw: %f  hw: %f\n", mult_sw, mult_hw);

	return err;
}

int main(void)
{
	int ret_val = 0;

	ret_val = vector_multiply_tb<T, SIZE, 4,5,5>();

	return ret_val;
}
