////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: UART_synthesis.v
// /___/   /\     Timestamp: Sat Mar 14 13:22:02 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim UART.ngc UART_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: UART.ngc
// Output file	: C:\Users\Sanuj Kulshrestha\Documents\Xilinx-Workspace\UART\netgen\synthesis\UART_synthesis.v
// # of Modules	: 1
// Design Name	: UART
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module UART (
  clk, tx_switch, uart_rx, uart_tx, tx_data_in, rx_data_out
);
  input clk;
  input tx_switch;
  input uart_rx;
  output uart_tx;
  input [7 : 0] tx_data_in;
  output [7 : 0] rx_data_out;
  wire tx_data_in_7_IBUF_0;
  wire tx_data_in_6_IBUF_1;
  wire tx_data_in_5_IBUF_2;
  wire tx_data_in_4_IBUF_3;
  wire tx_data_in_3_IBUF_4;
  wire tx_data_in_2_IBUF_5;
  wire tx_data_in_1_IBUF_6;
  wire tx_data_in_0_IBUF_7;
  wire clk_BUFGP_8;
  wire tx_switch_IBUF_9;
  wire uart_rx_IBUF_10;
  wire \tx_UART0/tx_flag_11 ;
  wire \tx_UART0/tx_line_12 ;
  wire tx_start_21;
  wire pState_tx_FSM_FFd1_22;
  wire pState_tx_FSM_FFd2_23;
  wire N0;
  wire N1;
  wire \pState_tx_FSM_FFd2-In ;
  wire \pState_tx_FSM_FFd1-In ;
  wire \pState_tx_FSM_FFd1-In2 ;
  wire \tx_UART0/GND_4_o_prescl[10]_equal_5_o ;
  wire \tx_UART0/index[3]_X_4_o_Mux_5_o ;
  wire \tx_UART0/_n0050 ;
  wire \tx_UART0/_n0053_58 ;
  wire \tx_UART0/tx_flag_start_AND_1_o ;
  wire \rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ;
  wire \rx_UART0/Madd_index[3]_GND_5_o_add_8_OUT_cy<1> ;
  wire \rx_UART0/_n0108_inv ;
  wire \rx_UART0/_n0075 ;
  wire \rx_UART0/index[3]_index[3]_mux_16_OUT<0> ;
  wire \rx_UART0/index[3]_index[3]_mux_16_OUT<1> ;
  wire \rx_UART0/index[3]_index[3]_mux_16_OUT<2> ;
  wire \rx_UART0/index[3]_index[3]_mux_16_OUT<3> ;
  wire \rx_UART0/datafll[0]_rx_line_MUX_77_o ;
  wire \rx_UART0/datafll[1]_rx_line_MUX_76_o ;
  wire \rx_UART0/datafll[2]_rx_line_MUX_75_o ;
  wire \rx_UART0/datafll[3]_rx_line_MUX_74_o ;
  wire \rx_UART0/datafll[4]_rx_line_MUX_73_o ;
  wire \rx_UART0/datafll[5]_rx_line_MUX_72_o ;
  wire \rx_UART0/datafll[6]_rx_line_MUX_71_o ;
  wire \rx_UART0/datafll[7]_rx_line_MUX_70_o ;
  wire \rx_UART0/datafll[8]_rx_line_MUX_69_o ;
  wire \rx_UART0/datafll[9]_rx_line_MUX_68_o ;
  wire \rx_UART0/rx_flag_123 ;
  wire N2;
  wire N4;
  wire \rx_UART0/_n00751_147 ;
  wire \rx_UART0/_n00752_148 ;
  wire \rx_UART0/_n00753_149 ;
  wire N6;
  wire \tx_UART0/Mcount_prescl_cy<9>_rt_171 ;
  wire \tx_UART0/Mcount_prescl_cy<8>_rt_172 ;
  wire \tx_UART0/Mcount_prescl_cy<7>_rt_173 ;
  wire \tx_UART0/Mcount_prescl_cy<6>_rt_174 ;
  wire \tx_UART0/Mcount_prescl_cy<5>_rt_175 ;
  wire \tx_UART0/Mcount_prescl_cy<4>_rt_176 ;
  wire \tx_UART0/Mcount_prescl_cy<3>_rt_177 ;
  wire \tx_UART0/Mcount_prescl_cy<2>_rt_178 ;
  wire \tx_UART0/Mcount_prescl_cy<1>_rt_179 ;
  wire \rx_UART0/Mcount_prescl_cy<9>_rt_180 ;
  wire \rx_UART0/Mcount_prescl_cy<8>_rt_181 ;
  wire \rx_UART0/Mcount_prescl_cy<7>_rt_182 ;
  wire \rx_UART0/Mcount_prescl_cy<6>_rt_183 ;
  wire \rx_UART0/Mcount_prescl_cy<5>_rt_184 ;
  wire \rx_UART0/Mcount_prescl_cy<4>_rt_185 ;
  wire \rx_UART0/Mcount_prescl_cy<3>_rt_186 ;
  wire \rx_UART0/Mcount_prescl_cy<2>_rt_187 ;
  wire \rx_UART0/Mcount_prescl_cy<1>_rt_188 ;
  wire \tx_UART0/Mcount_prescl_xor<10>_rt_189 ;
  wire \rx_UART0/Mcount_prescl_xor<10>_rt_190 ;
  wire \tx_UART0/tx_line_rstpot_191 ;
  wire \tx_UART0/tx_flag_rstpot1_192 ;
  wire \rx_UART0/rx_flag_rstpot1_193 ;
  wire \rx_UART0/data_7_rstpot_194 ;
  wire \rx_UART0/data_6_rstpot_195 ;
  wire \rx_UART0/data_5_rstpot_196 ;
  wire \rx_UART0/data_4_rstpot_197 ;
  wire \rx_UART0/data_3_rstpot_198 ;
  wire \rx_UART0/data_2_rstpot_199 ;
  wire \rx_UART0/data_1_rstpot_200 ;
  wire \rx_UART0/data_0_rstpot_201 ;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire \tx_UART0/index_3_rstpot_210 ;
  wire \tx_UART0/index_2_rstpot_211 ;
  wire \tx_UART0/index_1_rstpot_212 ;
  wire \tx_UART0/index_0_rstpot_213 ;
  wire N26;
  wire N28;
  wire N30;
  wire N31;
  wire N33;
  wire N35;
  wire N39;
  wire N41;
  wire N43;
  wire N61;
  wire N63;
  wire N65;
  wire N67;
  wire \tx_UART0/prescl_10_rstpot_227 ;
  wire \tx_UART0/prescl_9_rstpot_228 ;
  wire \tx_UART0/prescl_8_rstpot_229 ;
  wire \tx_UART0/prescl_7_rstpot_230 ;
  wire \tx_UART0/prescl_6_rstpot_231 ;
  wire \tx_UART0/prescl_5_rstpot_232 ;
  wire \tx_UART0/prescl_4_rstpot_233 ;
  wire \tx_UART0/prescl_3_rstpot_234 ;
  wire \tx_UART0/prescl_2_rstpot_235 ;
  wire \tx_UART0/prescl_1_rstpot_236 ;
  wire \tx_UART0/prescl_0_rstpot_237 ;
  wire \rx_UART0/prescl_10_rstpot_238 ;
  wire \rx_UART0/prescl_9_rstpot_239 ;
  wire \rx_UART0/prescl_8_rstpot_240 ;
  wire \rx_UART0/prescl_7_rstpot_241 ;
  wire \rx_UART0/prescl_6_rstpot_242 ;
  wire \rx_UART0/prescl_5_rstpot_243 ;
  wire \rx_UART0/prescl_4_rstpot_244 ;
  wire \rx_UART0/prescl_3_rstpot_245 ;
  wire \rx_UART0/prescl_2_rstpot_246 ;
  wire \rx_UART0/prescl_1_rstpot_247 ;
  wire \rx_UART0/prescl_0_rstpot_248 ;
  wire \tx_UART0/index_2_rstpot1_249 ;
  wire \tx_UART0/index_3_rstpot1_250 ;
  wire \tx_UART0/index_1_rstpot1_251 ;
  wire \tx_UART0/index_0_rstpot1_252 ;
  wire \tx_UART0/tx_flag_1_253 ;
  wire N71;
  wire N72;
  wire [7 : 0] \rx_UART0/data ;
  wire [3 : 0] \tx_UART0/index ;
  wire [9 : 0] \tx_UART0/Mcount_prescl_cy ;
  wire [0 : 0] \tx_UART0/Mcount_prescl_lut ;
  wire [10 : 0] \tx_UART0/Result ;
  wire [10 : 0] \tx_UART0/prescl ;
  wire [8 : 1] \tx_UART0/datafll ;
  wire [9 : 0] \rx_UART0/Mcount_prescl_cy ;
  wire [0 : 0] \rx_UART0/Mcount_prescl_lut ;
  wire [3 : 0] \rx_UART0/index ;
  wire [10 : 0] \rx_UART0/Result ;
  wire [10 : 0] \rx_UART0/prescl ;
  wire [9 : 0] \rx_UART0/datafll ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  tx_start (
    .C(clk_BUFGP_8),
    .D(\pState_tx_FSM_FFd1-In2 ),
    .Q(tx_start_21)
  );
  FD #(
    .INIT ( 1'b0 ))
  pState_tx_FSM_FFd1 (
    .C(clk_BUFGP_8),
    .D(\pState_tx_FSM_FFd1-In ),
    .Q(pState_tx_FSM_FFd1_22)
  );
  FD #(
    .INIT ( 1'b0 ))
  pState_tx_FSM_FFd2 (
    .C(clk_BUFGP_8),
    .D(\pState_tx_FSM_FFd2-In ),
    .Q(pState_tx_FSM_FFd2_23)
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<10>  (
    .CI(\tx_UART0/Mcount_prescl_cy [9]),
    .LI(\tx_UART0/Mcount_prescl_xor<10>_rt_189 ),
    .O(\tx_UART0/Result [10])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<9>  (
    .CI(\tx_UART0/Mcount_prescl_cy [8]),
    .LI(\tx_UART0/Mcount_prescl_cy<9>_rt_171 ),
    .O(\tx_UART0/Result [9])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<9>  (
    .CI(\tx_UART0/Mcount_prescl_cy [8]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<9>_rt_171 ),
    .O(\tx_UART0/Mcount_prescl_cy [9])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<8>  (
    .CI(\tx_UART0/Mcount_prescl_cy [7]),
    .LI(\tx_UART0/Mcount_prescl_cy<8>_rt_172 ),
    .O(\tx_UART0/Result [8])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<8>  (
    .CI(\tx_UART0/Mcount_prescl_cy [7]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<8>_rt_172 ),
    .O(\tx_UART0/Mcount_prescl_cy [8])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<7>  (
    .CI(\tx_UART0/Mcount_prescl_cy [6]),
    .LI(\tx_UART0/Mcount_prescl_cy<7>_rt_173 ),
    .O(\tx_UART0/Result [7])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<7>  (
    .CI(\tx_UART0/Mcount_prescl_cy [6]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<7>_rt_173 ),
    .O(\tx_UART0/Mcount_prescl_cy [7])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<6>  (
    .CI(\tx_UART0/Mcount_prescl_cy [5]),
    .LI(\tx_UART0/Mcount_prescl_cy<6>_rt_174 ),
    .O(\tx_UART0/Result [6])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<6>  (
    .CI(\tx_UART0/Mcount_prescl_cy [5]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<6>_rt_174 ),
    .O(\tx_UART0/Mcount_prescl_cy [6])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<5>  (
    .CI(\tx_UART0/Mcount_prescl_cy [4]),
    .LI(\tx_UART0/Mcount_prescl_cy<5>_rt_175 ),
    .O(\tx_UART0/Result [5])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<5>  (
    .CI(\tx_UART0/Mcount_prescl_cy [4]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<5>_rt_175 ),
    .O(\tx_UART0/Mcount_prescl_cy [5])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<4>  (
    .CI(\tx_UART0/Mcount_prescl_cy [3]),
    .LI(\tx_UART0/Mcount_prescl_cy<4>_rt_176 ),
    .O(\tx_UART0/Result [4])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<4>  (
    .CI(\tx_UART0/Mcount_prescl_cy [3]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<4>_rt_176 ),
    .O(\tx_UART0/Mcount_prescl_cy [4])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<3>  (
    .CI(\tx_UART0/Mcount_prescl_cy [2]),
    .LI(\tx_UART0/Mcount_prescl_cy<3>_rt_177 ),
    .O(\tx_UART0/Result [3])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<3>  (
    .CI(\tx_UART0/Mcount_prescl_cy [2]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<3>_rt_177 ),
    .O(\tx_UART0/Mcount_prescl_cy [3])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<2>  (
    .CI(\tx_UART0/Mcount_prescl_cy [1]),
    .LI(\tx_UART0/Mcount_prescl_cy<2>_rt_178 ),
    .O(\tx_UART0/Result [2])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<2>  (
    .CI(\tx_UART0/Mcount_prescl_cy [1]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<2>_rt_178 ),
    .O(\tx_UART0/Mcount_prescl_cy [2])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<1>  (
    .CI(\tx_UART0/Mcount_prescl_cy [0]),
    .LI(\tx_UART0/Mcount_prescl_cy<1>_rt_179 ),
    .O(\tx_UART0/Result [1])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<1>  (
    .CI(\tx_UART0/Mcount_prescl_cy [0]),
    .DI(N1),
    .S(\tx_UART0/Mcount_prescl_cy<1>_rt_179 ),
    .O(\tx_UART0/Mcount_prescl_cy [1])
  );
  XORCY   \tx_UART0/Mcount_prescl_xor<0>  (
    .CI(N1),
    .LI(\tx_UART0/Mcount_prescl_lut [0]),
    .O(\tx_UART0/Result [0])
  );
  MUXCY   \tx_UART0/Mcount_prescl_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\tx_UART0/Mcount_prescl_lut [0]),
    .O(\tx_UART0/Mcount_prescl_cy [0])
  );
  FDE   \tx_UART0/datafll_8  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_7_IBUF_0),
    .Q(\tx_UART0/datafll [8])
  );
  FDE   \tx_UART0/datafll_7  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_6_IBUF_1),
    .Q(\tx_UART0/datafll [7])
  );
  FDE   \tx_UART0/datafll_6  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_5_IBUF_2),
    .Q(\tx_UART0/datafll [6])
  );
  FDE   \tx_UART0/datafll_5  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_4_IBUF_3),
    .Q(\tx_UART0/datafll [5])
  );
  FDE   \tx_UART0/datafll_4  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_3_IBUF_4),
    .Q(\tx_UART0/datafll [4])
  );
  FDE   \tx_UART0/datafll_3  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_2_IBUF_5),
    .Q(\tx_UART0/datafll [3])
  );
  FDE   \tx_UART0/datafll_2  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_1_IBUF_6),
    .Q(\tx_UART0/datafll [2])
  );
  FDE   \tx_UART0/datafll_1  (
    .C(clk_BUFGP_8),
    .CE(\tx_UART0/tx_flag_start_AND_1_o ),
    .D(tx_data_in_0_IBUF_7),
    .Q(\tx_UART0/datafll [1])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<10>  (
    .CI(\rx_UART0/Mcount_prescl_cy [9]),
    .LI(\rx_UART0/Mcount_prescl_xor<10>_rt_190 ),
    .O(\rx_UART0/Result [10])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<9>  (
    .CI(\rx_UART0/Mcount_prescl_cy [8]),
    .LI(\rx_UART0/Mcount_prescl_cy<9>_rt_180 ),
    .O(\rx_UART0/Result [9])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<9>  (
    .CI(\rx_UART0/Mcount_prescl_cy [8]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<9>_rt_180 ),
    .O(\rx_UART0/Mcount_prescl_cy [9])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<8>  (
    .CI(\rx_UART0/Mcount_prescl_cy [7]),
    .LI(\rx_UART0/Mcount_prescl_cy<8>_rt_181 ),
    .O(\rx_UART0/Result [8])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<8>  (
    .CI(\rx_UART0/Mcount_prescl_cy [7]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<8>_rt_181 ),
    .O(\rx_UART0/Mcount_prescl_cy [8])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<7>  (
    .CI(\rx_UART0/Mcount_prescl_cy [6]),
    .LI(\rx_UART0/Mcount_prescl_cy<7>_rt_182 ),
    .O(\rx_UART0/Result [7])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<7>  (
    .CI(\rx_UART0/Mcount_prescl_cy [6]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<7>_rt_182 ),
    .O(\rx_UART0/Mcount_prescl_cy [7])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<6>  (
    .CI(\rx_UART0/Mcount_prescl_cy [5]),
    .LI(\rx_UART0/Mcount_prescl_cy<6>_rt_183 ),
    .O(\rx_UART0/Result [6])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<6>  (
    .CI(\rx_UART0/Mcount_prescl_cy [5]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<6>_rt_183 ),
    .O(\rx_UART0/Mcount_prescl_cy [6])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<5>  (
    .CI(\rx_UART0/Mcount_prescl_cy [4]),
    .LI(\rx_UART0/Mcount_prescl_cy<5>_rt_184 ),
    .O(\rx_UART0/Result [5])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<5>  (
    .CI(\rx_UART0/Mcount_prescl_cy [4]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<5>_rt_184 ),
    .O(\rx_UART0/Mcount_prescl_cy [5])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<4>  (
    .CI(\rx_UART0/Mcount_prescl_cy [3]),
    .LI(\rx_UART0/Mcount_prescl_cy<4>_rt_185 ),
    .O(\rx_UART0/Result [4])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<4>  (
    .CI(\rx_UART0/Mcount_prescl_cy [3]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<4>_rt_185 ),
    .O(\rx_UART0/Mcount_prescl_cy [4])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<3>  (
    .CI(\rx_UART0/Mcount_prescl_cy [2]),
    .LI(\rx_UART0/Mcount_prescl_cy<3>_rt_186 ),
    .O(\rx_UART0/Result [3])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<3>  (
    .CI(\rx_UART0/Mcount_prescl_cy [2]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<3>_rt_186 ),
    .O(\rx_UART0/Mcount_prescl_cy [3])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<2>  (
    .CI(\rx_UART0/Mcount_prescl_cy [1]),
    .LI(\rx_UART0/Mcount_prescl_cy<2>_rt_187 ),
    .O(\rx_UART0/Result [2])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<2>  (
    .CI(\rx_UART0/Mcount_prescl_cy [1]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<2>_rt_187 ),
    .O(\rx_UART0/Mcount_prescl_cy [2])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<1>  (
    .CI(\rx_UART0/Mcount_prescl_cy [0]),
    .LI(\rx_UART0/Mcount_prescl_cy<1>_rt_188 ),
    .O(\rx_UART0/Result [1])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<1>  (
    .CI(\rx_UART0/Mcount_prescl_cy [0]),
    .DI(N1),
    .S(\rx_UART0/Mcount_prescl_cy<1>_rt_188 ),
    .O(\rx_UART0/Mcount_prescl_cy [1])
  );
  XORCY   \rx_UART0/Mcount_prescl_xor<0>  (
    .CI(N1),
    .LI(\rx_UART0/Mcount_prescl_lut [0]),
    .O(\rx_UART0/Result [0])
  );
  MUXCY   \rx_UART0/Mcount_prescl_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\rx_UART0/Mcount_prescl_lut [0]),
    .O(\rx_UART0/Mcount_prescl_cy [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rx_UART0/index_3  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/_n0108_inv ),
    .D(\rx_UART0/index[3]_index[3]_mux_16_OUT<3> ),
    .Q(\rx_UART0/index [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rx_UART0/index_2  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/_n0108_inv ),
    .D(\rx_UART0/index[3]_index[3]_mux_16_OUT<2> ),
    .Q(\rx_UART0/index [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rx_UART0/index_1  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/_n0108_inv ),
    .D(\rx_UART0/index[3]_index[3]_mux_16_OUT<1> ),
    .Q(\rx_UART0/index [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rx_UART0/index_0  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/_n0108_inv ),
    .D(\rx_UART0/index[3]_index[3]_mux_16_OUT<0> ),
    .Q(\rx_UART0/index [0])
  );
  FDE   \rx_UART0/datafll_9  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[9]_rx_line_MUX_68_o ),
    .Q(\rx_UART0/datafll [9])
  );
  FDE   \rx_UART0/datafll_8  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[8]_rx_line_MUX_69_o ),
    .Q(\rx_UART0/datafll [8])
  );
  FDE   \rx_UART0/datafll_7  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[7]_rx_line_MUX_70_o ),
    .Q(\rx_UART0/datafll [7])
  );
  FDE   \rx_UART0/datafll_6  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[6]_rx_line_MUX_71_o ),
    .Q(\rx_UART0/datafll [6])
  );
  FDE   \rx_UART0/datafll_5  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[5]_rx_line_MUX_72_o ),
    .Q(\rx_UART0/datafll [5])
  );
  FDE   \rx_UART0/datafll_4  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[4]_rx_line_MUX_73_o ),
    .Q(\rx_UART0/datafll [4])
  );
  FDE   \rx_UART0/datafll_3  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[3]_rx_line_MUX_74_o ),
    .Q(\rx_UART0/datafll [3])
  );
  FDE   \rx_UART0/datafll_2  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[2]_rx_line_MUX_75_o ),
    .Q(\rx_UART0/datafll [2])
  );
  FDE   \rx_UART0/datafll_1  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[1]_rx_line_MUX_76_o ),
    .Q(\rx_UART0/datafll [1])
  );
  FDE   \rx_UART0/datafll_0  (
    .C(clk_BUFGP_8),
    .CE(\rx_UART0/rx_flag_123 ),
    .D(\rx_UART0/datafll[0]_rx_line_MUX_77_o ),
    .Q(\rx_UART0/datafll [0])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \pState_tx_FSM_FFd1-In21  (
    .I0(pState_tx_FSM_FFd1_22),
    .I1(tx_switch_IBUF_9),
    .I2(pState_tx_FSM_FFd2_23),
    .O(\pState_tx_FSM_FFd1-In2 )
  );
  LUT4 #(
    .INIT ( 16'hDF8A ))
  \pState_tx_FSM_FFd2-In1  (
    .I0(pState_tx_FSM_FFd1_22),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(pState_tx_FSM_FFd2_23),
    .I3(tx_switch_IBUF_9),
    .O(\pState_tx_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \tx_UART0/tx_flag_start_AND_1_o1  (
    .I0(\tx_UART0/tx_flag_11 ),
    .I1(tx_start_21),
    .O(\tx_UART0/tx_flag_start_AND_1_o )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \rx_UART0/Mmux_datafll[3]_rx_line_MUX_74_o11  (
    .I0(\rx_UART0/datafll [3]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [2]),
    .I3(\rx_UART0/index [1]),
    .I4(\rx_UART0/index [0]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[3]_rx_line_MUX_74_o )
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAAA8AAAAAAA ))
  \rx_UART0/Mmux_datafll[7]_rx_line_MUX_70_o11  (
    .I0(\rx_UART0/datafll [7]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [2]),
    .I3(\rx_UART0/index [1]),
    .I4(\rx_UART0/index [0]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[7]_rx_line_MUX_70_o )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \rx_UART0/Mmux_datafll[2]_rx_line_MUX_75_o11  (
    .I0(\rx_UART0/datafll [2]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [2]),
    .I3(\rx_UART0/index [0]),
    .I4(\rx_UART0/index [1]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[2]_rx_line_MUX_75_o )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \rx_UART0/Mmux_datafll[6]_rx_line_MUX_71_o11  (
    .I0(\rx_UART0/datafll [6]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [0]),
    .I3(\rx_UART0/index [2]),
    .I4(\rx_UART0/index [1]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[6]_rx_line_MUX_71_o )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \rx_UART0/Mmux_datafll[1]_rx_line_MUX_76_o11  (
    .I0(\rx_UART0/datafll [1]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [2]),
    .I3(\rx_UART0/index [1]),
    .I4(\rx_UART0/index [0]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[1]_rx_line_MUX_76_o )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \rx_UART0/Mmux_datafll[5]_rx_line_MUX_72_o11  (
    .I0(\rx_UART0/datafll [5]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [1]),
    .I3(\rx_UART0/index [2]),
    .I4(\rx_UART0/index [0]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[5]_rx_line_MUX_72_o )
  );
  LUT6 #(
    .INIT ( 64'hABAAAAAAA8AAAAAA ))
  \rx_UART0/Mmux_datafll[9]_rx_line_MUX_68_o11  (
    .I0(\rx_UART0/datafll [9]),
    .I1(\rx_UART0/index [2]),
    .I2(\rx_UART0/index [1]),
    .I3(\rx_UART0/index [3]),
    .I4(\rx_UART0/index [0]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[9]_rx_line_MUX_68_o )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \rx_UART0/Mmux_datafll[4]_rx_line_MUX_73_o11  (
    .I0(\rx_UART0/datafll [4]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [1]),
    .I3(\rx_UART0/index [0]),
    .I4(\rx_UART0/index [2]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[4]_rx_line_MUX_73_o )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \rx_UART0/index[3]_Decoder_2_OUT<0><3>11  (
    .I0(\rx_UART0/index [2]),
    .I1(\rx_UART0/index [1]),
    .I2(\rx_UART0/index [0]),
    .O(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \rx_UART0/Madd_index[3]_GND_5_o_add_8_OUT_cy<1>11  (
    .I0(\rx_UART0/index [1]),
    .I1(\rx_UART0/index [0]),
    .O(\rx_UART0/Madd_index[3]_GND_5_o_add_8_OUT_cy<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW0  (
    .I0(\tx_UART0/prescl [0]),
    .I1(\tx_UART0/prescl [10]),
    .I2(\tx_UART0/prescl [1]),
    .I3(\tx_UART0/prescl [8]),
    .I4(\tx_UART0/prescl [7]),
    .I5(\tx_UART0/prescl [4]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000000080000 ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>  (
    .I0(\tx_UART0/prescl [6]),
    .I1(\tx_UART0/prescl [5]),
    .I2(\tx_UART0/prescl [3]),
    .I3(\tx_UART0/prescl [2]),
    .I4(\tx_UART0/prescl [9]),
    .I5(N2),
    .O(\tx_UART0/GND_4_o_prescl[10]_equal_5_o )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0E000000000 ))
  \tx_UART0/_n0053_SW0  (
    .I0(\tx_UART0/prescl [1]),
    .I1(\tx_UART0/prescl [4]),
    .I2(\tx_UART0/prescl [7]),
    .I3(\tx_UART0/prescl [2]),
    .I4(\tx_UART0/prescl [3]),
    .I5(\tx_UART0/prescl [5]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hCCC80000C8C80000 ))
  \tx_UART0/_n0053  (
    .I0(\tx_UART0/prescl [8]),
    .I1(\tx_UART0/prescl [10]),
    .I2(\tx_UART0/prescl [9]),
    .I3(\tx_UART0/prescl [6]),
    .I4(\tx_UART0/tx_flag_11 ),
    .I5(N4),
    .O(\tx_UART0/_n0053_58 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \rx_UART0/_n00751  (
    .I0(\rx_UART0/prescl [8]),
    .I1(\rx_UART0/prescl [9]),
    .O(\rx_UART0/_n00751_147 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \rx_UART0/_n00752  (
    .I0(\rx_UART0/prescl [1]),
    .I1(\rx_UART0/prescl [4]),
    .I2(\rx_UART0/prescl [2]),
    .I3(\rx_UART0/prescl [3]),
    .O(\rx_UART0/_n00752_148 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \rx_UART0/_n00753  (
    .I0(\rx_UART0/prescl [7]),
    .I1(\rx_UART0/prescl [6]),
    .I2(\rx_UART0/prescl [5]),
    .O(\rx_UART0/_n00753_149 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \rx_UART0/GND_5_o_prescl[10]_equal_7_o<10>_SW0  (
    .I0(\rx_UART0/prescl [0]),
    .I1(\rx_UART0/prescl [10]),
    .I2(\rx_UART0/prescl [1]),
    .I3(\rx_UART0/prescl [8]),
    .I4(\rx_UART0/prescl [7]),
    .I5(\rx_UART0/prescl [4]),
    .O(N6)
  );
  IBUF   tx_data_in_7_IBUF (
    .I(tx_data_in[7]),
    .O(tx_data_in_7_IBUF_0)
  );
  IBUF   tx_data_in_6_IBUF (
    .I(tx_data_in[6]),
    .O(tx_data_in_6_IBUF_1)
  );
  IBUF   tx_data_in_5_IBUF (
    .I(tx_data_in[5]),
    .O(tx_data_in_5_IBUF_2)
  );
  IBUF   tx_data_in_4_IBUF (
    .I(tx_data_in[4]),
    .O(tx_data_in_4_IBUF_3)
  );
  IBUF   tx_data_in_3_IBUF (
    .I(tx_data_in[3]),
    .O(tx_data_in_3_IBUF_4)
  );
  IBUF   tx_data_in_2_IBUF (
    .I(tx_data_in[2]),
    .O(tx_data_in_2_IBUF_5)
  );
  IBUF   tx_data_in_1_IBUF (
    .I(tx_data_in[1]),
    .O(tx_data_in_1_IBUF_6)
  );
  IBUF   tx_data_in_0_IBUF (
    .I(tx_data_in[0]),
    .O(tx_data_in_0_IBUF_7)
  );
  IBUF   tx_switch_IBUF (
    .I(tx_switch),
    .O(tx_switch_IBUF_9)
  );
  IBUF   uart_rx_IBUF (
    .I(uart_rx),
    .O(uart_rx_IBUF_10)
  );
  OBUF   rx_data_out_7_OBUF (
    .I(\rx_UART0/data [7]),
    .O(rx_data_out[7])
  );
  OBUF   rx_data_out_6_OBUF (
    .I(\rx_UART0/data [6]),
    .O(rx_data_out[6])
  );
  OBUF   rx_data_out_5_OBUF (
    .I(\rx_UART0/data [5]),
    .O(rx_data_out[5])
  );
  OBUF   rx_data_out_4_OBUF (
    .I(\rx_UART0/data [4]),
    .O(rx_data_out[4])
  );
  OBUF   rx_data_out_3_OBUF (
    .I(\rx_UART0/data [3]),
    .O(rx_data_out[3])
  );
  OBUF   rx_data_out_2_OBUF (
    .I(\rx_UART0/data [2]),
    .O(rx_data_out[2])
  );
  OBUF   rx_data_out_1_OBUF (
    .I(\rx_UART0/data [1]),
    .O(rx_data_out[1])
  );
  OBUF   rx_data_out_0_OBUF (
    .I(\rx_UART0/data [0]),
    .O(rx_data_out[0])
  );
  OBUF   uart_tx_OBUF (
    .I(\tx_UART0/tx_line_12 ),
    .O(uart_tx)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<9>_rt  (
    .I0(\tx_UART0/prescl [9]),
    .O(\tx_UART0/Mcount_prescl_cy<9>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<8>_rt  (
    .I0(\tx_UART0/prescl [8]),
    .O(\tx_UART0/Mcount_prescl_cy<8>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<7>_rt  (
    .I0(\tx_UART0/prescl [7]),
    .O(\tx_UART0/Mcount_prescl_cy<7>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<6>_rt  (
    .I0(\tx_UART0/prescl [6]),
    .O(\tx_UART0/Mcount_prescl_cy<6>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<5>_rt  (
    .I0(\tx_UART0/prescl [5]),
    .O(\tx_UART0/Mcount_prescl_cy<5>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<4>_rt  (
    .I0(\tx_UART0/prescl [4]),
    .O(\tx_UART0/Mcount_prescl_cy<4>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<3>_rt  (
    .I0(\tx_UART0/prescl [3]),
    .O(\tx_UART0/Mcount_prescl_cy<3>_rt_177 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<2>_rt  (
    .I0(\tx_UART0/prescl [2]),
    .O(\tx_UART0/Mcount_prescl_cy<2>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_cy<1>_rt  (
    .I0(\tx_UART0/prescl [1]),
    .O(\tx_UART0/Mcount_prescl_cy<1>_rt_179 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<9>_rt  (
    .I0(\rx_UART0/prescl [9]),
    .O(\rx_UART0/Mcount_prescl_cy<9>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<8>_rt  (
    .I0(\rx_UART0/prescl [8]),
    .O(\rx_UART0/Mcount_prescl_cy<8>_rt_181 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<7>_rt  (
    .I0(\rx_UART0/prescl [7]),
    .O(\rx_UART0/Mcount_prescl_cy<7>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<6>_rt  (
    .I0(\rx_UART0/prescl [6]),
    .O(\rx_UART0/Mcount_prescl_cy<6>_rt_183 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<5>_rt  (
    .I0(\rx_UART0/prescl [5]),
    .O(\rx_UART0/Mcount_prescl_cy<5>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<4>_rt  (
    .I0(\rx_UART0/prescl [4]),
    .O(\rx_UART0/Mcount_prescl_cy<4>_rt_185 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<3>_rt  (
    .I0(\rx_UART0/prescl [3]),
    .O(\rx_UART0/Mcount_prescl_cy<3>_rt_186 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<2>_rt  (
    .I0(\rx_UART0/prescl [2]),
    .O(\rx_UART0/Mcount_prescl_cy<2>_rt_187 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_cy<1>_rt  (
    .I0(\rx_UART0/prescl [1]),
    .O(\rx_UART0/Mcount_prescl_cy<1>_rt_188 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \tx_UART0/Mcount_prescl_xor<10>_rt  (
    .I0(\tx_UART0/prescl [10]),
    .O(\tx_UART0/Mcount_prescl_xor<10>_rt_189 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \rx_UART0/Mcount_prescl_xor<10>_rt  (
    .I0(\rx_UART0/prescl [10]),
    .O(\rx_UART0/Mcount_prescl_xor<10>_rt_190 )
  );
  FD   \tx_UART0/tx_line  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/tx_line_rstpot_191 ),
    .Q(\tx_UART0/tx_line_12 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/tx_flag  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/tx_flag_rstpot1_192 ),
    .Q(\tx_UART0/tx_flag_11 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/rx_flag  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/rx_flag_rstpot1_193 ),
    .Q(\rx_UART0/rx_flag_123 )
  );
  FD   \rx_UART0/data_7  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_7_rstpot_194 ),
    .Q(\rx_UART0/data [7])
  );
  FD   \rx_UART0/data_6  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_6_rstpot_195 ),
    .Q(\rx_UART0/data [6])
  );
  FD   \rx_UART0/data_5  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_5_rstpot_196 ),
    .Q(\rx_UART0/data [5])
  );
  FD   \rx_UART0/data_4  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_4_rstpot_197 ),
    .Q(\rx_UART0/data [4])
  );
  FD   \rx_UART0/data_3  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_3_rstpot_198 ),
    .Q(\rx_UART0/data [3])
  );
  FD   \rx_UART0/data_2  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_2_rstpot_199 ),
    .Q(\rx_UART0/data [2])
  );
  FD   \rx_UART0/data_1  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_1_rstpot_200 ),
    .Q(\rx_UART0/data [1])
  );
  FD   \rx_UART0/data_0  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/data_0_rstpot_201 ),
    .Q(\rx_UART0/data [0])
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_7_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [8]),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_6_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [7]),
    .O(N10)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_5_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [6]),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_4_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [5]),
    .O(N14)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_3_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [4]),
    .O(N16)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_2_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [3]),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_1_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [2]),
    .O(N20)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \rx_UART0/data_0_rstpot_SW0  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/datafll [9]),
    .I2(\rx_UART0/datafll [1]),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'hE2AA ))
  \tx_UART0/tx_line_rstpot  (
    .I0(\tx_UART0/tx_line_12 ),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/index[3]_X_4_o_Mux_5_o ),
    .I3(\tx_UART0/GND_4_o_prescl[10]_equal_5_o ),
    .O(\tx_UART0/tx_line_rstpot_191 )
  );
  LUT6 #(
    .INIT ( 64'hFF55FF57FFFFFFFF ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW1  (
    .I0(\tx_UART0/index [3]),
    .I1(\tx_UART0/index [2]),
    .I2(\tx_UART0/index [1]),
    .I3(\tx_UART0/prescl [2]),
    .I4(\tx_UART0/index [0]),
    .I5(\tx_UART0/tx_flag_1_253 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \tx_UART0/_n00501  (
    .I0(\tx_UART0/prescl [9]),
    .I1(\tx_UART0/prescl [3]),
    .I2(\tx_UART0/prescl [5]),
    .I3(\tx_UART0/prescl [6]),
    .I4(N26),
    .I5(N2),
    .O(\tx_UART0/_n0050 )
  );
  LUT5 #(
    .INIT ( 32'hFFF7FFFF ))
  \rx_UART0/GND_5_o_prescl[10]_equal_7_o<10>_SW1  (
    .I0(\rx_UART0/prescl [9]),
    .I1(\rx_UART0/prescl [6]),
    .I2(\rx_UART0/prescl [2]),
    .I3(\rx_UART0/prescl [3]),
    .I4(\rx_UART0/prescl [5]),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'hCCAAF000 ))
  \tx_UART0/Mmux_index[3]_X_4_o_Mux_5_o24_SW0  (
    .I0(\tx_UART0/datafll [1]),
    .I1(\tx_UART0/datafll [3]),
    .I2(\tx_UART0/datafll [2]),
    .I3(\tx_UART0/index [1]),
    .I4(\tx_UART0/index [0]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \tx_UART0/Mmux_index[3]_X_4_o_Mux_5_o24_SW1  (
    .I0(\tx_UART0/datafll [4]),
    .I1(\tx_UART0/datafll [5]),
    .I2(\tx_UART0/datafll [7]),
    .I3(\tx_UART0/datafll [6]),
    .I4(\tx_UART0/index [1]),
    .I5(\tx_UART0/index [0]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'hFFBBFCB8CF8BCC88 ))
  \tx_UART0/Mmux_index[3]_X_4_o_Mux_5_o24  (
    .I0(\tx_UART0/datafll [8]),
    .I1(\tx_UART0/index [3]),
    .I2(\tx_UART0/index [2]),
    .I3(\tx_UART0/index [0]),
    .I4(N30),
    .I5(N31),
    .O(\tx_UART0/index[3]_X_4_o_Mux_5_o )
  );
  LUT6 #(
    .INIT ( 64'hFDFFFFFFFFFFFFFF ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW2  (
    .I0(\tx_UART0/index [3]),
    .I1(\tx_UART0/prescl [2]),
    .I2(\tx_UART0/prescl [3]),
    .I3(\tx_UART0/prescl [5]),
    .I4(\tx_UART0/prescl [9]),
    .I5(\tx_UART0/prescl [6]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \rx_UART0/GND_5_o_prescl[10]_equal_7_o<10>_SW2  (
    .I0(\rx_UART0/prescl [5]),
    .I1(\rx_UART0/prescl [6]),
    .I2(\rx_UART0/prescl [9]),
    .I3(\rx_UART0/prescl [3]),
    .I4(\rx_UART0/prescl [2]),
    .I5(\rx_UART0/rx_flag_123 ),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0000006C00000020 ))
  \rx_UART0/Mmux_index[3]_index[3]_mux_16_OUT41  (
    .I0(\rx_UART0/index [2]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/Madd_index[3]_GND_5_o_add_8_OUT_cy<1> ),
    .I3(N35),
    .I4(N6),
    .I5(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .O(\rx_UART0/index[3]_index[3]_mux_16_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0000005A00000012 ))
  \rx_UART0/Mmux_index[3]_index[3]_mux_16_OUT31  (
    .I0(\rx_UART0/index [2]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/Madd_index[3]_GND_5_o_add_8_OUT_cy<1> ),
    .I3(N35),
    .I4(N6),
    .I5(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .O(\rx_UART0/index[3]_index[3]_mux_16_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFFFDFFFF ))
  \rx_UART0/GND_5_o_prescl[10]_equal_7_o<10>_SW4  (
    .I0(\rx_UART0/prescl [6]),
    .I1(\rx_UART0/index [0]),
    .I2(\rx_UART0/prescl [3]),
    .I3(\rx_UART0/prescl [2]),
    .I4(\rx_UART0/prescl [5]),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'h000000A000000020 ))
  \rx_UART0/Mmux_index[3]_index[3]_mux_16_OUT11  (
    .I0(\rx_UART0/prescl [9]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/rx_flag_123 ),
    .I3(N39),
    .I4(N6),
    .I5(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .O(\rx_UART0/index[3]_index[3]_mux_16_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFEB ))
  \rx_UART0/GND_5_o_prescl[10]_equal_7_o<10>_SW5  (
    .I0(\rx_UART0/prescl [3]),
    .I1(\rx_UART0/index [1]),
    .I2(\rx_UART0/index [0]),
    .I3(\rx_UART0/prescl [2]),
    .I4(\rx_UART0/index [3]),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'h0000000000008000 ))
  \rx_UART0/Mmux_index[3]_index[3]_mux_16_OUT21  (
    .I0(\rx_UART0/prescl [5]),
    .I1(\rx_UART0/prescl [6]),
    .I2(\rx_UART0/prescl [9]),
    .I3(\rx_UART0/rx_flag_123 ),
    .I4(N41),
    .I5(N6),
    .O(\rx_UART0/index[3]_index[3]_mux_16_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000400000000000 ))
  \rx_UART0/GND_5_o_prescl[10]_equal_7_o<10>_SW6  (
    .I0(\rx_UART0/prescl [2]),
    .I1(\rx_UART0/prescl [6]),
    .I2(\rx_UART0/prescl [9]),
    .I3(\rx_UART0/prescl [5]),
    .I4(\rx_UART0/prescl [3]),
    .I5(\rx_UART0/index [3]),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_7_rstpot  (
    .I0(\rx_UART0/data [7]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N8),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_7_rstpot_194 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_6_rstpot  (
    .I0(\rx_UART0/data [6]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N10),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_6_rstpot_195 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_5_rstpot  (
    .I0(\rx_UART0/data [5]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N12),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_5_rstpot_196 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_4_rstpot  (
    .I0(\rx_UART0/data [4]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N14),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_4_rstpot_197 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_3_rstpot  (
    .I0(\rx_UART0/data [3]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N16),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_3_rstpot_198 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_2_rstpot  (
    .I0(\rx_UART0/data [2]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N18),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_2_rstpot_199 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_1_rstpot  (
    .I0(\rx_UART0/data [1]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N20),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_1_rstpot_200 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAA2EAAAAAAAA ))
  \rx_UART0/data_0_rstpot  (
    .I0(\rx_UART0/data [0]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(N22),
    .I3(N6),
    .I4(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .I5(N43),
    .O(\rx_UART0/data_0_rstpot_201 )
  );
  LUT6 #(
    .INIT ( 64'h0000000020000000 ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW3  (
    .I0(\tx_UART0/index [2]),
    .I1(\tx_UART0/prescl [2]),
    .I2(\tx_UART0/prescl [9]),
    .I3(\tx_UART0/prescl [5]),
    .I4(\tx_UART0/prescl [6]),
    .I5(\tx_UART0/prescl [3]),
    .O(N61)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA6AAAAAAA ))
  \tx_UART0/index_3_rstpot  (
    .I0(\tx_UART0/index [3]),
    .I1(\tx_UART0/index [1]),
    .I2(\tx_UART0/index [0]),
    .I3(\tx_UART0/tx_flag_11 ),
    .I4(N61),
    .I5(N2),
    .O(\tx_UART0/index_3_rstpot_210 )
  );
  LUT5 #(
    .INIT ( 32'h02000000 ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW4  (
    .I0(\tx_UART0/prescl [5]),
    .I1(\tx_UART0/prescl [3]),
    .I2(\tx_UART0/prescl [2]),
    .I3(\tx_UART0/prescl [9]),
    .I4(\tx_UART0/prescl [6]),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA6AAAAAAA ))
  \tx_UART0/index_2_rstpot  (
    .I0(\tx_UART0/index [2]),
    .I1(\tx_UART0/index [1]),
    .I2(\tx_UART0/index [0]),
    .I3(\tx_UART0/tx_flag_11 ),
    .I4(N63),
    .I5(N2),
    .O(\tx_UART0/index_2_rstpot_211 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW5  (
    .I0(\tx_UART0/prescl [3]),
    .I1(\tx_UART0/prescl [9]),
    .I2(\tx_UART0/prescl [6]),
    .I3(\tx_UART0/prescl [2]),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA6AAA ))
  \tx_UART0/index_1_rstpot  (
    .I0(\tx_UART0/index [1]),
    .I1(\tx_UART0/index [0]),
    .I2(\tx_UART0/prescl [5]),
    .I3(\tx_UART0/tx_flag_11 ),
    .I4(N65),
    .I5(N2),
    .O(\tx_UART0/index_1_rstpot_212 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \tx_UART0/GND_4_o_prescl[10]_equal_5_o<10>_SW6  (
    .I0(\tx_UART0/prescl [2]),
    .I1(\tx_UART0/prescl [9]),
    .I2(\tx_UART0/prescl [6]),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA9AAA ))
  \tx_UART0/index_0_rstpot  (
    .I0(\tx_UART0/index [0]),
    .I1(\tx_UART0/prescl [3]),
    .I2(\tx_UART0/prescl [5]),
    .I3(\tx_UART0/tx_flag_11 ),
    .I4(N67),
    .I5(N2),
    .O(\tx_UART0/index_0_rstpot_213 )
  );
  LUT6 #(
    .INIT ( 64'hC5C5C505C505C505 ))
  \rx_UART0/_n00754  (
    .I0(uart_rx_IBUF_10),
    .I1(\rx_UART0/prescl [10]),
    .I2(\rx_UART0/rx_flag_123 ),
    .I3(\rx_UART0/_n00751_147 ),
    .I4(\rx_UART0/_n00753_149 ),
    .I5(\rx_UART0/_n00752_148 ),
    .O(\rx_UART0/_n0075 )
  );
  LUT6 #(
    .INIT ( 64'h050505F505050535 ))
  \rx_UART0/_n0108_inv1  (
    .I0(uart_rx_IBUF_10),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/rx_flag_123 ),
    .I3(N28),
    .I4(N6),
    .I5(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .O(\rx_UART0/_n0108_inv )
  );
  LUT6 #(
    .INIT ( 64'hF5F5F5F5F5F5F535 ))
  \rx_UART0/rx_flag_rstpot1  (
    .I0(uart_rx_IBUF_10),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/rx_flag_123 ),
    .I3(N28),
    .I4(N6),
    .I5(\rx_UART0/index[3]_Decoder_2_OUT<0><3>1 ),
    .O(\rx_UART0/rx_flag_rstpot1_193 )
  );
  LUT4 #(
    .INIT ( 16'hA2E6 ))
  \pState_tx_FSM_FFd1-In1  (
    .I0(pState_tx_FSM_FFd1_22),
    .I1(pState_tx_FSM_FFd2_23),
    .I2(\tx_UART0/tx_flag_11 ),
    .I3(tx_switch_IBUF_9),
    .O(\pState_tx_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \rx_UART0/Mmux_datafll[0]_rx_line_MUX_77_o11  (
    .I0(\rx_UART0/datafll [0]),
    .I1(\rx_UART0/index [3]),
    .I2(\rx_UART0/index [0]),
    .I3(\rx_UART0/index [1]),
    .I4(\rx_UART0/index [2]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[0]_rx_line_MUX_77_o )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \rx_UART0/Mmux_datafll[8]_rx_line_MUX_69_o11  (
    .I0(\rx_UART0/datafll [8]),
    .I1(\rx_UART0/index [0]),
    .I2(\rx_UART0/index [1]),
    .I3(\rx_UART0/index [2]),
    .I4(\rx_UART0/index [3]),
    .I5(uart_rx_IBUF_10),
    .O(\rx_UART0/datafll[8]_rx_line_MUX_69_o )
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_10_rstpot  (
    .I0(\tx_UART0/prescl [10]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [10]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_10_rstpot_227 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_10  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_10_rstpot_227 ),
    .Q(\tx_UART0/prescl [10])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_9_rstpot  (
    .I0(\tx_UART0/prescl [9]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [9]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_9_rstpot_228 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_9  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_9_rstpot_228 ),
    .Q(\tx_UART0/prescl [9])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_8_rstpot  (
    .I0(\tx_UART0/prescl [8]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [8]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_8_rstpot_229 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_8  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_8_rstpot_229 ),
    .Q(\tx_UART0/prescl [8])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_7_rstpot  (
    .I0(\tx_UART0/prescl [7]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [7]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_7_rstpot_230 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_7  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_7_rstpot_230 ),
    .Q(\tx_UART0/prescl [7])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_6_rstpot  (
    .I0(\tx_UART0/prescl [6]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [6]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_6_rstpot_231 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_6  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_6_rstpot_231 ),
    .Q(\tx_UART0/prescl [6])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_5_rstpot  (
    .I0(\tx_UART0/prescl [5]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [5]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_5_rstpot_232 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_5  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_5_rstpot_232 ),
    .Q(\tx_UART0/prescl [5])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_4_rstpot  (
    .I0(\tx_UART0/prescl [4]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [4]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_4_rstpot_233 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_4  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_4_rstpot_233 ),
    .Q(\tx_UART0/prescl [4])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_3_rstpot  (
    .I0(\tx_UART0/prescl [3]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [3]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_3_rstpot_234 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_3  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_3_rstpot_234 ),
    .Q(\tx_UART0/prescl [3])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_2_rstpot  (
    .I0(\tx_UART0/prescl [2]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [2]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_2_rstpot_235 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_2  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_2_rstpot_235 ),
    .Q(\tx_UART0/prescl [2])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_1_rstpot  (
    .I0(\tx_UART0/prescl [1]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [1]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_1_rstpot_236 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_1  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_1_rstpot_236 ),
    .Q(\tx_UART0/prescl [1])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \tx_UART0/prescl_0_rstpot  (
    .I0(\tx_UART0/prescl [0]),
    .I1(\tx_UART0/tx_flag_11 ),
    .I2(\tx_UART0/Result [0]),
    .I3(\tx_UART0/_n0053_58 ),
    .O(\tx_UART0/prescl_0_rstpot_237 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/prescl_0  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/prescl_0_rstpot_237 ),
    .Q(\tx_UART0/prescl [0])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_10_rstpot  (
    .I0(\rx_UART0/prescl [10]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [10]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_10_rstpot_238 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_10  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_10_rstpot_238 ),
    .Q(\rx_UART0/prescl [10])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_9_rstpot  (
    .I0(\rx_UART0/prescl [9]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [9]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_9_rstpot_239 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_9  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_9_rstpot_239 ),
    .Q(\rx_UART0/prescl [9])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_8_rstpot  (
    .I0(\rx_UART0/prescl [8]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [8]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_8_rstpot_240 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_8  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_8_rstpot_240 ),
    .Q(\rx_UART0/prescl [8])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_7_rstpot  (
    .I0(\rx_UART0/prescl [7]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [7]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_7_rstpot_241 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_7  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_7_rstpot_241 ),
    .Q(\rx_UART0/prescl [7])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_6_rstpot  (
    .I0(\rx_UART0/prescl [6]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [6]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_6_rstpot_242 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_6  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_6_rstpot_242 ),
    .Q(\rx_UART0/prescl [6])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_5_rstpot  (
    .I0(\rx_UART0/prescl [5]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [5]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_5_rstpot_243 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_5  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_5_rstpot_243 ),
    .Q(\rx_UART0/prescl [5])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_4_rstpot  (
    .I0(\rx_UART0/prescl [4]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [4]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_4_rstpot_244 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_4  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_4_rstpot_244 ),
    .Q(\rx_UART0/prescl [4])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_3_rstpot  (
    .I0(\rx_UART0/prescl [3]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [3]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_3_rstpot_245 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_3  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_3_rstpot_245 ),
    .Q(\rx_UART0/prescl [3])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_2_rstpot  (
    .I0(\rx_UART0/prescl [2]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [2]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_2_rstpot_246 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_2  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_2_rstpot_246 ),
    .Q(\rx_UART0/prescl [2])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_1_rstpot  (
    .I0(\rx_UART0/prescl [1]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [1]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_1_rstpot_247 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_1  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_1_rstpot_247 ),
    .Q(\rx_UART0/prescl [1])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \rx_UART0/prescl_0_rstpot  (
    .I0(\rx_UART0/prescl [0]),
    .I1(\rx_UART0/rx_flag_123 ),
    .I2(\rx_UART0/Result [0]),
    .I3(\rx_UART0/_n0075 ),
    .O(\rx_UART0/prescl_0_rstpot_248 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \rx_UART0/prescl_0  (
    .C(clk_BUFGP_8),
    .D(\rx_UART0/prescl_0_rstpot_248 ),
    .Q(\rx_UART0/prescl [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \tx_UART0/index_2_rstpot1  (
    .I0(\tx_UART0/index_2_rstpot_211 ),
    .I1(\tx_UART0/_n0050 ),
    .O(\tx_UART0/index_2_rstpot1_249 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/index_2  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/index_2_rstpot1_249 ),
    .Q(\tx_UART0/index [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \tx_UART0/index_3_rstpot1  (
    .I0(\tx_UART0/index_3_rstpot_210 ),
    .I1(\tx_UART0/_n0050 ),
    .O(\tx_UART0/index_3_rstpot1_250 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/index_3  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/index_3_rstpot1_250 ),
    .Q(\tx_UART0/index [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \tx_UART0/index_1_rstpot1  (
    .I0(\tx_UART0/index_1_rstpot_212 ),
    .I1(\tx_UART0/_n0050 ),
    .O(\tx_UART0/index_1_rstpot1_251 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/index_1  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/index_1_rstpot1_251 ),
    .Q(\tx_UART0/index [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \tx_UART0/index_0_rstpot1  (
    .I0(\tx_UART0/index_0_rstpot_213 ),
    .I1(\tx_UART0/_n0050 ),
    .O(\tx_UART0/index_0_rstpot1_252 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/index_0  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/index_0_rstpot1_252 ),
    .Q(\tx_UART0/index [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \tx_UART0/tx_flag_1  (
    .C(clk_BUFGP_8),
    .D(\tx_UART0/tx_flag_rstpot1_192 ),
    .Q(\tx_UART0/tx_flag_1_253 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_8)
  );
  INV   \tx_UART0/Mcount_prescl_lut<0>_INV_0  (
    .I(\tx_UART0/prescl [0]),
    .O(\tx_UART0/Mcount_prescl_lut [0])
  );
  INV   \rx_UART0/Mcount_prescl_lut<0>_INV_0  (
    .I(\rx_UART0/prescl [0]),
    .O(\rx_UART0/Mcount_prescl_lut [0])
  );
  MUXF7   \tx_UART0/tx_flag_rstpot1  (
    .I0(N71),
    .I1(N72),
    .S(N33),
    .O(\tx_UART0/tx_flag_rstpot1_192 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF5557AAAA0002 ))
  \tx_UART0/tx_flag_rstpot1_F  (
    .I0(\tx_UART0/tx_flag_11 ),
    .I1(\tx_UART0/index [1]),
    .I2(\tx_UART0/index [0]),
    .I3(\tx_UART0/index [2]),
    .I4(N2),
    .I5(tx_start_21),
    .O(N71)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \tx_UART0/tx_flag_rstpot1_G  (
    .I0(\tx_UART0/tx_flag_11 ),
    .I1(tx_start_21),
    .O(N72)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

