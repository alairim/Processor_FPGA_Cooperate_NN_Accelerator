// ==============================================================
// File generated on Sun Dec 11 07:36:32 +0100 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    template< int D ,int U ,int TI ,int TD > struct ap_axiu;
    template<> struct ap_axiu<32, 4, 5, 5> {
        ap_uint<32> data;
        ap_uint<4> keep;
        ap_uint<4> strb;
        ap_uint<4> user;
        ap_uint<1> last;
        ap_uint<5> id;
        ap_uint<5> dest;
       } ;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "out_stream_keep_V"
#define AUTOTB_TVOUT_out_stream_keep_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_keep_V.dat"
#define AUTOTB_TVIN_out_stream_keep_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_keep_V.dat"
// wrapc file define: "out_stream_strb_V"
#define AUTOTB_TVOUT_out_stream_strb_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_strb_V.dat"
#define AUTOTB_TVIN_out_stream_strb_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_strb_V.dat"
// wrapc file define: "out_stream_user_V"
#define AUTOTB_TVOUT_out_stream_user_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_user_V.dat"
#define AUTOTB_TVIN_out_stream_user_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_user_V.dat"
// wrapc file define: "out_stream_last_V"
#define AUTOTB_TVOUT_out_stream_last_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_last_V.dat"
#define AUTOTB_TVIN_out_stream_last_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_last_V.dat"
// wrapc file define: "out_stream_id_V"
#define AUTOTB_TVOUT_out_stream_id_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_id_V.dat"
#define AUTOTB_TVIN_out_stream_id_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_id_V.dat"
// wrapc file define: "out_stream_dest_V"
#define AUTOTB_TVOUT_out_stream_dest_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_dest_V.dat"
#define AUTOTB_TVIN_out_stream_dest_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_dest_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_stream_keep_V"
#define AUTOTB_TVOUT_PC_out_stream_keep_V  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_keep_V.dat"
// tvout file define: "out_stream_strb_V"
#define AUTOTB_TVOUT_PC_out_stream_strb_V  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_strb_V.dat"
// tvout file define: "out_stream_user_V"
#define AUTOTB_TVOUT_PC_out_stream_user_V  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_user_V.dat"
// tvout file define: "out_stream_last_V"
#define AUTOTB_TVOUT_PC_out_stream_last_V  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_last_V.dat"
// tvout file define: "out_stream_id_V"
#define AUTOTB_TVOUT_PC_out_stream_id_V  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_id_V.dat"
// tvout file define: "out_stream_dest_V"
#define AUTOTB_TVOUT_PC_out_stream_dest_V  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_dest_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			out_stream_keep_V_depth = 0;
			out_stream_strb_V_depth = 0;
			out_stream_user_V_depth = 0;
			out_stream_last_V_depth = 0;
			out_stream_id_V_depth = 0;
			out_stream_dest_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{out_stream_keep_V " << out_stream_keep_V_depth << "}\n";
			total_list << "{out_stream_strb_V " << out_stream_strb_V_depth << "}\n";
			total_list << "{out_stream_user_V " << out_stream_user_V_depth << "}\n";
			total_list << "{out_stream_last_V " << out_stream_last_V_depth << "}\n";
			total_list << "{out_stream_id_V " << out_stream_id_V_depth << "}\n";
			total_list << "{out_stream_dest_V " << out_stream_dest_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int out_stream_keep_V_depth;
		int out_stream_strb_V_depth;
		int out_stream_user_V_depth;
		int out_stream_last_V_depth;
		int out_stream_id_V_depth;
		int out_stream_dest_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void mult_accel_core_call (
ap_axiu<32, 4, 5, 5 > in_stream[1568],
ap_axiu<32, 4, 5, 5 > out_stream[1]);

void AESL_WRAP_mult_accel_core_call (
ap_axiu<32, 4, 5, 5 > in_stream[1568],
ap_axiu<32, 4, 5, 5 > out_stream[1])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "out_stream_keep_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_keep_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_keep_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_keep_V, AESL_token); // data

			sc_bv<4> *out_stream_keep_V_pc_buffer = new sc_bv<4>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_stream_keep_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_keep_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_keep_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_keep_V
				{
					// bitslice(3, 0)
					// {
						// celement: out_stream.keep.V(3, 0)
						// {
							sc_lv<4>* out_stream_keep_V_lv0_0_0_1 = new sc_lv<4>[1];
						// }
					// }

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.keep.V(3, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out_stream[0].keep) != NULL) // check the null address if the c port is array or others
								{
									out_stream_keep_V_lv0_0_0_1[hls_map_index].range(3, 0) = sc_bv<4>(out_stream_keep_V_pc_buffer[hls_map_index].range(3, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.keep.V(3, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out_stream[i_0].keep
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out_stream[0].keep
								// output_left_conversion : out_stream[i_0].keep
								// output_type_conversion : (out_stream_keep_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out_stream[0].keep) != NULL) // check the null address if the c port is array or others
								{
									out_stream[i_0].keep = (out_stream_keep_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_stream_keep_V_pc_buffer;
		}

		// output port post check: "out_stream_strb_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_strb_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_strb_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_strb_V, AESL_token); // data

			sc_bv<4> *out_stream_strb_V_pc_buffer = new sc_bv<4>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_stream_strb_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_strb_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_strb_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_strb_V
				{
					// bitslice(3, 0)
					// {
						// celement: out_stream.strb.V(3, 0)
						// {
							sc_lv<4>* out_stream_strb_V_lv0_0_0_1 = new sc_lv<4>[1];
						// }
					// }

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.strb.V(3, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out_stream[0].strb) != NULL) // check the null address if the c port is array or others
								{
									out_stream_strb_V_lv0_0_0_1[hls_map_index].range(3, 0) = sc_bv<4>(out_stream_strb_V_pc_buffer[hls_map_index].range(3, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.strb.V(3, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out_stream[i_0].strb
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out_stream[0].strb
								// output_left_conversion : out_stream[i_0].strb
								// output_type_conversion : (out_stream_strb_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out_stream[0].strb) != NULL) // check the null address if the c port is array or others
								{
									out_stream[i_0].strb = (out_stream_strb_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_stream_strb_V_pc_buffer;
		}

		// output port post check: "out_stream_user_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_user_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_user_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_user_V, AESL_token); // data

			sc_bv<4> *out_stream_user_V_pc_buffer = new sc_bv<4>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_stream_user_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_user_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_user_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_user_V
				{
					// bitslice(3, 0)
					// {
						// celement: out_stream.user.V(3, 0)
						// {
							sc_lv<4>* out_stream_user_V_lv0_0_0_1 = new sc_lv<4>[1];
						// }
					// }

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.user.V(3, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out_stream[0].user) != NULL) // check the null address if the c port is array or others
								{
									out_stream_user_V_lv0_0_0_1[hls_map_index].range(3, 0) = sc_bv<4>(out_stream_user_V_pc_buffer[hls_map_index].range(3, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.user.V(3, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out_stream[i_0].user
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out_stream[0].user
								// output_left_conversion : out_stream[i_0].user
								// output_type_conversion : (out_stream_user_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out_stream[0].user) != NULL) // check the null address if the c port is array or others
								{
									out_stream[i_0].user = (out_stream_user_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_stream_user_V_pc_buffer;
		}

		// output port post check: "out_stream_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_last_V, AESL_token); // data

			sc_bv<1> *out_stream_last_V_pc_buffer = new sc_bv<1>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_stream_last_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_last_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: out_stream.last.V(0, 0)
						// {
							sc_lv<1>* out_stream_last_V_lv0_0_0_1 = new sc_lv<1>[1];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.last.V(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out_stream[0].last) != NULL) // check the null address if the c port is array or others
								{
									out_stream_last_V_lv0_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(out_stream_last_V_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.last.V(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out_stream[i_0].last
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out_stream[0].last
								// output_left_conversion : out_stream[i_0].last
								// output_type_conversion : (out_stream_last_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out_stream[0].last) != NULL) // check the null address if the c port is array or others
								{
									out_stream[i_0].last = (out_stream_last_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_stream_last_V_pc_buffer;
		}

		// output port post check: "out_stream_id_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_id_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_id_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_id_V, AESL_token); // data

			sc_bv<5> *out_stream_id_V_pc_buffer = new sc_bv<5>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_stream_id_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_id_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_id_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_id_V
				{
					// bitslice(4, 0)
					// {
						// celement: out_stream.id.V(4, 0)
						// {
							sc_lv<5>* out_stream_id_V_lv0_0_0_1 = new sc_lv<5>[1];
						// }
					// }

					// bitslice(4, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.id.V(4, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out_stream[0].id) != NULL) // check the null address if the c port is array or others
								{
									out_stream_id_V_lv0_0_0_1[hls_map_index].range(4, 0) = sc_bv<5>(out_stream_id_V_pc_buffer[hls_map_index].range(4, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(4, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.id.V(4, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out_stream[i_0].id
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out_stream[0].id
								// output_left_conversion : out_stream[i_0].id
								// output_type_conversion : (out_stream_id_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out_stream[0].id) != NULL) // check the null address if the c port is array or others
								{
									out_stream[i_0].id = (out_stream_id_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_stream_id_V_pc_buffer;
		}

		// output port post check: "out_stream_dest_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_dest_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_dest_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_dest_V, AESL_token); // data

			sc_bv<5> *out_stream_dest_V_pc_buffer = new sc_bv<5>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_stream_dest_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_dest_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_dest_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_dest_V
				{
					// bitslice(4, 0)
					// {
						// celement: out_stream.dest.V(4, 0)
						// {
							sc_lv<5>* out_stream_dest_V_lv0_0_0_1 = new sc_lv<5>[1];
						// }
					// }

					// bitslice(4, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.dest.V(4, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out_stream[0].dest) != NULL) // check the null address if the c port is array or others
								{
									out_stream_dest_V_lv0_0_0_1[hls_map_index].range(4, 0) = sc_bv<5>(out_stream_dest_V_pc_buffer[hls_map_index].range(4, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(4, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.dest.V(4, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out_stream[i_0].dest
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out_stream[0].dest
								// output_left_conversion : out_stream[i_0].dest
								// output_type_conversion : (out_stream_dest_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out_stream[0].dest) != NULL) // check the null address if the c port is array or others
								{
									out_stream[i_0].dest = (out_stream_dest_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_stream_dest_V_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "out_stream_keep_V"
		char* tvin_out_stream_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_keep_V);
		char* tvout_out_stream_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_keep_V);

		// "out_stream_strb_V"
		char* tvin_out_stream_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_strb_V);
		char* tvout_out_stream_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_strb_V);

		// "out_stream_user_V"
		char* tvin_out_stream_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_user_V);
		char* tvout_out_stream_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_user_V);

		// "out_stream_last_V"
		char* tvin_out_stream_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_last_V);
		char* tvout_out_stream_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_last_V);

		// "out_stream_id_V"
		char* tvin_out_stream_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_id_V);
		char* tvout_out_stream_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_id_V);

		// "out_stream_dest_V"
		char* tvin_out_stream_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_dest_V);
		char* tvout_out_stream_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_dest_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_out_stream_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_stream_keep_V, tvin_out_stream_keep_V);

		sc_bv<4>* out_stream_keep_V_tvin_wrapc_buffer = new sc_bv<4>[1];

		// RTL Name: out_stream_keep_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.keep.V(3, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].keep
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].keep
						// regulate_c_name       : out_stream_keep_V
						// input_type_conversion : (out_stream[i_0].keep).to_string(2).c_str()
						if (&(out_stream[0].keep) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_stream_keep_V_tmp_mem;
							out_stream_keep_V_tmp_mem = (out_stream[i_0].keep).to_string(2).c_str();
							out_stream_keep_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = out_stream_keep_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_stream_keep_V, "%s\n", (out_stream_keep_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_stream_keep_V, tvin_out_stream_keep_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_keep_V_depth);
		sprintf(tvin_out_stream_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_stream_keep_V, tvin_out_stream_keep_V);

		// release memory allocation
		delete [] out_stream_keep_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_stream_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_stream_strb_V, tvin_out_stream_strb_V);

		sc_bv<4>* out_stream_strb_V_tvin_wrapc_buffer = new sc_bv<4>[1];

		// RTL Name: out_stream_strb_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.strb.V(3, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].strb
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].strb
						// regulate_c_name       : out_stream_strb_V
						// input_type_conversion : (out_stream[i_0].strb).to_string(2).c_str()
						if (&(out_stream[0].strb) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_stream_strb_V_tmp_mem;
							out_stream_strb_V_tmp_mem = (out_stream[i_0].strb).to_string(2).c_str();
							out_stream_strb_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = out_stream_strb_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_stream_strb_V, "%s\n", (out_stream_strb_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_stream_strb_V, tvin_out_stream_strb_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_strb_V_depth);
		sprintf(tvin_out_stream_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_stream_strb_V, tvin_out_stream_strb_V);

		// release memory allocation
		delete [] out_stream_strb_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_stream_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_stream_user_V, tvin_out_stream_user_V);

		sc_bv<4>* out_stream_user_V_tvin_wrapc_buffer = new sc_bv<4>[1];

		// RTL Name: out_stream_user_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.user.V(3, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].user
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].user
						// regulate_c_name       : out_stream_user_V
						// input_type_conversion : (out_stream[i_0].user).to_string(2).c_str()
						if (&(out_stream[0].user) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_stream_user_V_tmp_mem;
							out_stream_user_V_tmp_mem = (out_stream[i_0].user).to_string(2).c_str();
							out_stream_user_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = out_stream_user_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_stream_user_V, "%s\n", (out_stream_user_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_stream_user_V, tvin_out_stream_user_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_user_V_depth);
		sprintf(tvin_out_stream_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_stream_user_V, tvin_out_stream_user_V);

		// release memory allocation
		delete [] out_stream_user_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_stream_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_stream_last_V, tvin_out_stream_last_V);

		sc_bv<1>* out_stream_last_V_tvin_wrapc_buffer = new sc_bv<1>[1];

		// RTL Name: out_stream_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.last.V(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].last
						// regulate_c_name       : out_stream_last_V
						// input_type_conversion : (out_stream[i_0].last).to_string(2).c_str()
						if (&(out_stream[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_stream_last_V_tmp_mem;
							out_stream_last_V_tmp_mem = (out_stream[i_0].last).to_string(2).c_str();
							out_stream_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = out_stream_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_stream_last_V, "%s\n", (out_stream_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_stream_last_V, tvin_out_stream_last_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_last_V_depth);
		sprintf(tvin_out_stream_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_stream_last_V, tvin_out_stream_last_V);

		// release memory allocation
		delete [] out_stream_last_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_stream_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_stream_id_V, tvin_out_stream_id_V);

		sc_bv<5>* out_stream_id_V_tvin_wrapc_buffer = new sc_bv<5>[1];

		// RTL Name: out_stream_id_V
		{
			// bitslice(4, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.id.V(4, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].id
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].id
						// regulate_c_name       : out_stream_id_V
						// input_type_conversion : (out_stream[i_0].id).to_string(2).c_str()
						if (&(out_stream[0].id) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<5> out_stream_id_V_tmp_mem;
							out_stream_id_V_tmp_mem = (out_stream[i_0].id).to_string(2).c_str();
							out_stream_id_V_tvin_wrapc_buffer[hls_map_index].range(4, 0) = out_stream_id_V_tmp_mem.range(4, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_stream_id_V, "%s\n", (out_stream_id_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_stream_id_V, tvin_out_stream_id_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_id_V_depth);
		sprintf(tvin_out_stream_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_stream_id_V, tvin_out_stream_id_V);

		// release memory allocation
		delete [] out_stream_id_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_stream_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_stream_dest_V, tvin_out_stream_dest_V);

		sc_bv<5>* out_stream_dest_V_tvin_wrapc_buffer = new sc_bv<5>[1];

		// RTL Name: out_stream_dest_V
		{
			// bitslice(4, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.dest.V(4, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].dest
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].dest
						// regulate_c_name       : out_stream_dest_V
						// input_type_conversion : (out_stream[i_0].dest).to_string(2).c_str()
						if (&(out_stream[0].dest) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<5> out_stream_dest_V_tmp_mem;
							out_stream_dest_V_tmp_mem = (out_stream[i_0].dest).to_string(2).c_str();
							out_stream_dest_V_tvin_wrapc_buffer[hls_map_index].range(4, 0) = out_stream_dest_V_tmp_mem.range(4, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_stream_dest_V, "%s\n", (out_stream_dest_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_stream_dest_V, tvin_out_stream_dest_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_dest_V_depth);
		sprintf(tvin_out_stream_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_stream_dest_V, tvin_out_stream_dest_V);

		// release memory allocation
		delete [] out_stream_dest_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		mult_accel_core_call(in_stream, out_stream);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_out_stream_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_keep_V, tvout_out_stream_keep_V);

		sc_bv<4>* out_stream_keep_V_tvout_wrapc_buffer = new sc_bv<4>[1];

		// RTL Name: out_stream_keep_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.keep.V(3, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].keep
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].keep
						// regulate_c_name       : out_stream_keep_V
						// input_type_conversion : (out_stream[i_0].keep).to_string(2).c_str()
						if (&(out_stream[0].keep) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_stream_keep_V_tmp_mem;
							out_stream_keep_V_tmp_mem = (out_stream[i_0].keep).to_string(2).c_str();
							out_stream_keep_V_tvout_wrapc_buffer[hls_map_index].range(3, 0) = out_stream_keep_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_stream_keep_V, "%s\n", (out_stream_keep_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_keep_V, tvout_out_stream_keep_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_keep_V_depth);
		sprintf(tvout_out_stream_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_keep_V, tvout_out_stream_keep_V);

		// release memory allocation
		delete [] out_stream_keep_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_stream_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_strb_V, tvout_out_stream_strb_V);

		sc_bv<4>* out_stream_strb_V_tvout_wrapc_buffer = new sc_bv<4>[1];

		// RTL Name: out_stream_strb_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.strb.V(3, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].strb
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].strb
						// regulate_c_name       : out_stream_strb_V
						// input_type_conversion : (out_stream[i_0].strb).to_string(2).c_str()
						if (&(out_stream[0].strb) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_stream_strb_V_tmp_mem;
							out_stream_strb_V_tmp_mem = (out_stream[i_0].strb).to_string(2).c_str();
							out_stream_strb_V_tvout_wrapc_buffer[hls_map_index].range(3, 0) = out_stream_strb_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_stream_strb_V, "%s\n", (out_stream_strb_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_strb_V, tvout_out_stream_strb_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_strb_V_depth);
		sprintf(tvout_out_stream_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_strb_V, tvout_out_stream_strb_V);

		// release memory allocation
		delete [] out_stream_strb_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_stream_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_user_V, tvout_out_stream_user_V);

		sc_bv<4>* out_stream_user_V_tvout_wrapc_buffer = new sc_bv<4>[1];

		// RTL Name: out_stream_user_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.user.V(3, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].user
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].user
						// regulate_c_name       : out_stream_user_V
						// input_type_conversion : (out_stream[i_0].user).to_string(2).c_str()
						if (&(out_stream[0].user) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_stream_user_V_tmp_mem;
							out_stream_user_V_tmp_mem = (out_stream[i_0].user).to_string(2).c_str();
							out_stream_user_V_tvout_wrapc_buffer[hls_map_index].range(3, 0) = out_stream_user_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_stream_user_V, "%s\n", (out_stream_user_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_user_V, tvout_out_stream_user_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_user_V_depth);
		sprintf(tvout_out_stream_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_user_V, tvout_out_stream_user_V);

		// release memory allocation
		delete [] out_stream_user_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_stream_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_last_V, tvout_out_stream_last_V);

		sc_bv<1>* out_stream_last_V_tvout_wrapc_buffer = new sc_bv<1>[1];

		// RTL Name: out_stream_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.last.V(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].last
						// regulate_c_name       : out_stream_last_V
						// input_type_conversion : (out_stream[i_0].last).to_string(2).c_str()
						if (&(out_stream[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_stream_last_V_tmp_mem;
							out_stream_last_V_tmp_mem = (out_stream[i_0].last).to_string(2).c_str();
							out_stream_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_stream_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_stream_last_V, "%s\n", (out_stream_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_last_V, tvout_out_stream_last_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_last_V_depth);
		sprintf(tvout_out_stream_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_last_V, tvout_out_stream_last_V);

		// release memory allocation
		delete [] out_stream_last_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_stream_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_id_V, tvout_out_stream_id_V);

		sc_bv<5>* out_stream_id_V_tvout_wrapc_buffer = new sc_bv<5>[1];

		// RTL Name: out_stream_id_V
		{
			// bitslice(4, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.id.V(4, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].id
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].id
						// regulate_c_name       : out_stream_id_V
						// input_type_conversion : (out_stream[i_0].id).to_string(2).c_str()
						if (&(out_stream[0].id) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<5> out_stream_id_V_tmp_mem;
							out_stream_id_V_tmp_mem = (out_stream[i_0].id).to_string(2).c_str();
							out_stream_id_V_tvout_wrapc_buffer[hls_map_index].range(4, 0) = out_stream_id_V_tmp_mem.range(4, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_stream_id_V, "%s\n", (out_stream_id_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_id_V, tvout_out_stream_id_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_id_V_depth);
		sprintf(tvout_out_stream_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_id_V, tvout_out_stream_id_V);

		// release memory allocation
		delete [] out_stream_id_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_stream_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_dest_V, tvout_out_stream_dest_V);

		sc_bv<5>* out_stream_dest_V_tvout_wrapc_buffer = new sc_bv<5>[1];

		// RTL Name: out_stream_dest_V
		{
			// bitslice(4, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.dest.V(4, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out_stream[i_0].dest
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out_stream[0].dest
						// regulate_c_name       : out_stream_dest_V
						// input_type_conversion : (out_stream[i_0].dest).to_string(2).c_str()
						if (&(out_stream[0].dest) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<5> out_stream_dest_V_tmp_mem;
							out_stream_dest_V_tmp_mem = (out_stream[i_0].dest).to_string(2).c_str();
							out_stream_dest_V_tvout_wrapc_buffer[hls_map_index].range(4, 0) = out_stream_dest_V_tmp_mem.range(4, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_stream_dest_V, "%s\n", (out_stream_dest_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_dest_V, tvout_out_stream_dest_V);
		}

		tcl_file.set_num(1, &tcl_file.out_stream_dest_V_depth);
		sprintf(tvout_out_stream_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_dest_V, tvout_out_stream_dest_V);

		// release memory allocation
		delete [] out_stream_dest_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "out_stream_keep_V"
		delete [] tvout_out_stream_keep_V;
		delete [] tvin_out_stream_keep_V;
		// release memory allocation: "out_stream_strb_V"
		delete [] tvout_out_stream_strb_V;
		delete [] tvin_out_stream_strb_V;
		// release memory allocation: "out_stream_user_V"
		delete [] tvout_out_stream_user_V;
		delete [] tvin_out_stream_user_V;
		// release memory allocation: "out_stream_last_V"
		delete [] tvout_out_stream_last_V;
		delete [] tvin_out_stream_last_V;
		// release memory allocation: "out_stream_id_V"
		delete [] tvout_out_stream_id_V;
		delete [] tvin_out_stream_id_V;
		// release memory allocation: "out_stream_dest_V"
		delete [] tvout_out_stream_dest_V;
		delete [] tvin_out_stream_dest_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

