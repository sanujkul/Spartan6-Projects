////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pwm_synthesis.v
// /___/   /\     Timestamp: Fri Apr 03 17:58:20 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim pwm.ngc pwm_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: pwm.ngc
// Output file	: C:\Users\Sanuj Kulshrestha\Documents\Xilinx-Workspace\PWM\netgen\synthesis\pwm_synthesis.v
// # of Modules	: 1
// Design Name	: pwm
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

module pwm (
  clk, pwm_out, duticycle
);
  input clk;
  output pwm_out;
  input [7 : 0] duticycle;
  wire duticycle_7_IBUF_0;
  wire duticycle_6_IBUF_1;
  wire duticycle_5_IBUF_2;
  wire duticycle_4_IBUF_3;
  wire duticycle_3_IBUF_4;
  wire duticycle_2_IBUF_5;
  wire duticycle_1_IBUF_6;
  wire duticycle_0_IBUF_7;
  wire clk_BUFGP_8;
  wire \count[7]_duticycle[7]_equal_3_o ;
  wire pwm_out_OBUF_18;
  wire \duticycle[7]_INV_2_o_19 ;
  wire \count[7]_GND_5_o_equal_1_o ;
  wire N0;
  wire \count[7]_GND_5_o_equal_1_o<7>1_36 ;
  wire N3;
  wire \count[7]_duticycle[7]_equal_3_o8 ;
  wire \count[7]_duticycle[7]_equal_3_o81_39 ;
  wire \Mcount_count_cy<1>_rt_50 ;
  wire \Mcount_count_cy<2>_rt_51 ;
  wire \Mcount_count_cy<3>_rt_52 ;
  wire \Mcount_count_cy<4>_rt_53 ;
  wire \Mcount_count_cy<5>_rt_54 ;
  wire \Mcount_count_xor<6>_rt_55 ;
  wire pwm_out_rstpot_56;
  wire count_0_rstpot_57;
  wire count_1_rstpot_58;
  wire count_2_rstpot_59;
  wire count_3_rstpot_60;
  wire count_4_rstpot_61;
  wire count_5_rstpot_62;
  wire count_6_rstpot_63;
  wire [7 : 0] count;
  wire [6 : 0] Result;
  wire [0 : 0] Mcount_count_lut;
  wire [5 : 0] Mcount_count_cy;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(count[7])
  );
  MUXCY   \Mcount_count_cy<0>  (
    .CI(count[7]),
    .DI(N0),
    .S(Mcount_count_lut[0]),
    .O(Mcount_count_cy[0])
  );
  XORCY   \Mcount_count_xor<0>  (
    .CI(count[7]),
    .LI(Mcount_count_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_count_cy<1>  (
    .CI(Mcount_count_cy[0]),
    .DI(count[7]),
    .S(\Mcount_count_cy<1>_rt_50 ),
    .O(Mcount_count_cy[1])
  );
  XORCY   \Mcount_count_xor<1>  (
    .CI(Mcount_count_cy[0]),
    .LI(\Mcount_count_cy<1>_rt_50 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_count_cy<2>  (
    .CI(Mcount_count_cy[1]),
    .DI(count[7]),
    .S(\Mcount_count_cy<2>_rt_51 ),
    .O(Mcount_count_cy[2])
  );
  XORCY   \Mcount_count_xor<2>  (
    .CI(Mcount_count_cy[1]),
    .LI(\Mcount_count_cy<2>_rt_51 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_count_cy<3>  (
    .CI(Mcount_count_cy[2]),
    .DI(count[7]),
    .S(\Mcount_count_cy<3>_rt_52 ),
    .O(Mcount_count_cy[3])
  );
  XORCY   \Mcount_count_xor<3>  (
    .CI(Mcount_count_cy[2]),
    .LI(\Mcount_count_cy<3>_rt_52 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_count_cy<4>  (
    .CI(Mcount_count_cy[3]),
    .DI(count[7]),
    .S(\Mcount_count_cy<4>_rt_53 ),
    .O(Mcount_count_cy[4])
  );
  XORCY   \Mcount_count_xor<4>  (
    .CI(Mcount_count_cy[3]),
    .LI(\Mcount_count_cy<4>_rt_53 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_count_cy<5>  (
    .CI(Mcount_count_cy[4]),
    .DI(count[7]),
    .S(\Mcount_count_cy<5>_rt_54 ),
    .O(Mcount_count_cy[5])
  );
  XORCY   \Mcount_count_xor<5>  (
    .CI(Mcount_count_cy[4]),
    .LI(\Mcount_count_cy<5>_rt_54 ),
    .O(Result[5])
  );
  XORCY   \Mcount_count_xor<6>  (
    .CI(Mcount_count_cy[5]),
    .LI(\Mcount_count_xor<6>_rt_55 ),
    .O(Result[6])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \count[7]_GND_5_o_equal_1_o<7>11  (
    .I0(count[4]),
    .I1(count[2]),
    .I2(count[3]),
    .O(\count[7]_GND_5_o_equal_1_o<7>1_36 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \count[7]_GND_5_o_equal_1_o<7>1  (
    .I0(count[0]),
    .I1(count[1]),
    .I2(count[5]),
    .I3(count[6]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .O(\count[7]_GND_5_o_equal_1_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \duticycle[7]_INV_2_o_SW0  (
    .I0(duticycle_2_IBUF_5),
    .I1(duticycle_1_IBUF_6),
    .I2(duticycle_0_IBUF_7),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \duticycle[7]_INV_2_o  (
    .I0(duticycle_7_IBUF_0),
    .I1(duticycle_6_IBUF_1),
    .I2(duticycle_5_IBUF_2),
    .I3(duticycle_4_IBUF_3),
    .I4(duticycle_3_IBUF_4),
    .I5(N3),
    .O(\duticycle[7]_INV_2_o_19 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \count[7]_duticycle[7]_equal_3_o81  (
    .I0(duticycle_2_IBUF_5),
    .I1(duticycle_3_IBUF_4),
    .I2(duticycle_4_IBUF_3),
    .I3(count[2]),
    .I4(count[3]),
    .I5(count[4]),
    .O(\count[7]_duticycle[7]_equal_3_o8 )
  );
  LUT5 #(
    .INIT ( 32'h40100401 ))
  \count[7]_duticycle[7]_equal_3_o82  (
    .I0(duticycle_7_IBUF_0),
    .I1(duticycle_5_IBUF_2),
    .I2(duticycle_6_IBUF_1),
    .I3(count[5]),
    .I4(count[6]),
    .O(\count[7]_duticycle[7]_equal_3_o81_39 )
  );
  LUT6 #(
    .INIT ( 64'h8421000000000000 ))
  \count[7]_duticycle[7]_equal_3_o83  (
    .I0(duticycle_1_IBUF_6),
    .I1(duticycle_0_IBUF_7),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_duticycle[7]_equal_3_o8 ),
    .I5(\count[7]_duticycle[7]_equal_3_o81_39 ),
    .O(\count[7]_duticycle[7]_equal_3_o )
  );
  IBUF   duticycle_7_IBUF (
    .I(duticycle[7]),
    .O(duticycle_7_IBUF_0)
  );
  IBUF   duticycle_6_IBUF (
    .I(duticycle[6]),
    .O(duticycle_6_IBUF_1)
  );
  IBUF   duticycle_5_IBUF (
    .I(duticycle[5]),
    .O(duticycle_5_IBUF_2)
  );
  IBUF   duticycle_4_IBUF (
    .I(duticycle[4]),
    .O(duticycle_4_IBUF_3)
  );
  IBUF   duticycle_3_IBUF (
    .I(duticycle[3]),
    .O(duticycle_3_IBUF_4)
  );
  IBUF   duticycle_2_IBUF (
    .I(duticycle[2]),
    .O(duticycle_2_IBUF_5)
  );
  IBUF   duticycle_1_IBUF (
    .I(duticycle[1]),
    .O(duticycle_1_IBUF_6)
  );
  IBUF   duticycle_0_IBUF (
    .I(duticycle[0]),
    .O(duticycle_0_IBUF_7)
  );
  OBUF   pwm_out_OBUF (
    .I(pwm_out_OBUF_18),
    .O(pwm_out)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<1>_rt  (
    .I0(count[1]),
    .O(\Mcount_count_cy<1>_rt_50 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<2>_rt  (
    .I0(count[2]),
    .O(\Mcount_count_cy<2>_rt_51 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<3>_rt  (
    .I0(count[3]),
    .O(\Mcount_count_cy<3>_rt_52 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<4>_rt  (
    .I0(count[4]),
    .O(\Mcount_count_cy<4>_rt_53 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<5>_rt  (
    .I0(count[5]),
    .O(\Mcount_count_cy<5>_rt_54 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_xor<6>_rt  (
    .I0(count[6]),
    .O(\Mcount_count_xor<6>_rt_55 )
  );
  LUT4 #(
    .INIT ( 16'h0A0C ))
  pwm_out_rstpot (
    .I0(\duticycle[7]_INV_2_o_19 ),
    .I1(pwm_out_OBUF_18),
    .I2(\count[7]_duticycle[7]_equal_3_o ),
    .I3(\count[7]_GND_5_o_equal_1_o ),
    .O(pwm_out_rstpot_56)
  );
  FD   pwm_out_39 (
    .C(clk_BUFGP_8),
    .D(pwm_out_rstpot_56),
    .Q(pwm_out_OBUF_18)
  );
  FD #(
    .INIT ( 1'b0 ))
  count_0 (
    .C(clk_BUFGP_8),
    .D(count_0_rstpot_57),
    .Q(count[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  count_1 (
    .C(clk_BUFGP_8),
    .D(count_1_rstpot_58),
    .Q(count[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  count_2 (
    .C(clk_BUFGP_8),
    .D(count_2_rstpot_59),
    .Q(count[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  count_3 (
    .C(clk_BUFGP_8),
    .D(count_3_rstpot_60),
    .Q(count[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  count_4 (
    .C(clk_BUFGP_8),
    .D(count_4_rstpot_61),
    .Q(count[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  count_5 (
    .C(clk_BUFGP_8),
    .D(count_5_rstpot_62),
    .Q(count[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  count_6 (
    .C(clk_BUFGP_8),
    .D(count_6_rstpot_63),
    .Q(count[6])
  );
  LUT6 #(
    .INIT ( 64'h7FFF0000FFFF0000 ))
  count_0_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(Result[0]),
    .I5(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .O(count_0_rstpot_57)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFF00000000 ))
  count_1_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .I5(Result[1]),
    .O(count_1_rstpot_58)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFF00000000 ))
  count_2_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .I5(Result[2]),
    .O(count_2_rstpot_59)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFF00000000 ))
  count_3_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .I5(Result[3]),
    .O(count_3_rstpot_60)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFF00000000 ))
  count_4_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .I5(Result[4]),
    .O(count_4_rstpot_61)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFF00000000 ))
  count_5_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .I5(Result[5]),
    .O(count_5_rstpot_62)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFF00000000 ))
  count_6_rstpot (
    .I0(count[6]),
    .I1(count[5]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(\count[7]_GND_5_o_equal_1_o<7>1_36 ),
    .I5(Result[6]),
    .O(count_6_rstpot_63)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_8)
  );
  INV   \Mcount_count_lut<0>_INV_0  (
    .I(count[0]),
    .O(Mcount_count_lut[0])
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

