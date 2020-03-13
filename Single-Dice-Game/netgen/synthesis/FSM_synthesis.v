////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FSM_synthesis.v
// /___/   /\     Timestamp: Fri Mar 13 06:34:21 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim FSM.ngc FSM_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: FSM.ngc
// Output file	: C:\Users\Sanuj Kulshrestha\Documents\Xilinx-Workspace\Single-Dice-Game\netgen\synthesis\FSM_synthesis.v
// # of Modules	: 1
// Design Name	: FSM
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

module FSM (
  sw, clk, W, L, PA, num, rndisp
);
  input sw;
  input clk;
  output W;
  output L;
  output PA;
  input [2 : 0] num;
  output [2 : 0] rndisp;
  wire num_2_IBUF_0;
  wire num_1_IBUF_1;
  wire num_0_IBUF_2;
  wire sw_IBUF_3;
  wire clk_BUFGP_4;
  wire \cmp01/eq_5 ;
  wire \pState[2]_X_3_o_wide_mux_5_OUT<2> ;
  wire \pState[2]_X_3_o_wide_mux_5_OUT<1> ;
  wire \pState[2]_X_3_o_wide_mux_5_OUT<0> ;
  wire rndisp_2_OBUF_13;
  wire rndisp_1_OBUF_14;
  wire rndisp_0_OBUF_15;
  wire W_OBUF_16;
  wire L_OBUF_17;
  wire N0;
  wire \cmp01/cmp_GND_5_o_AND_1_o ;
  wire Mram__n00405;
  wire N2;
  wire \rng01/rn_2_rstpot_38 ;
  wire \rng01/rn_1_rstpot_39 ;
  wire \rng01/rn_0_rstpot_40 ;
  wire \rng01/count_0_rstpot_41 ;
  wire \rng01/count_2_rstpot_42 ;
  wire \rng01/count_1_rstpot_43 ;
  wire [2 : 0] \rng01/rn ;
  wire [2 : 0] nState;
  wire [2 : 0] \rng01/count ;
  VCC   XST_VCC (
    .P(N0)
  );
  FD #(
    .INIT ( 1'b0 ))
  nState_0 (
    .C(clk_BUFGP_4),
    .D(\pState[2]_X_3_o_wide_mux_5_OUT<0> ),
    .Q(nState[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  nState_1 (
    .C(clk_BUFGP_4),
    .D(\pState[2]_X_3_o_wide_mux_5_OUT<1> ),
    .Q(nState[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  nState_2 (
    .C(clk_BUFGP_4),
    .D(\pState[2]_X_3_o_wide_mux_5_OUT<2> ),
    .Q(nState[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mram_W11 (
    .I0(nState[0]),
    .I1(nState[1]),
    .O(W_OBUF_16)
  );
  LUT3 #(
    .INIT ( 8'h89 ))
  Mram__n004051 (
    .I0(nState[0]),
    .I1(nState[2]),
    .I2(nState[1]),
    .O(Mram__n00405)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mram_L11 (
    .I0(nState[0]),
    .I1(nState[2]),
    .O(L_OBUF_17)
  );
  LUT5 #(
    .INIT ( 32'h005500C0 ))
  \Mmux_pState[2]_X_3_o_wide_mux_5_OUT21  (
    .I0(sw_IBUF_3),
    .I1(\cmp01/eq_5 ),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\pState[2]_X_3_o_wide_mux_5_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAFAAACA ))
  \Mmux_pState[2]_X_3_o_wide_mux_5_OUT11  (
    .I0(sw_IBUF_3),
    .I1(\cmp01/eq_5 ),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\pState[2]_X_3_o_wide_mux_5_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAAA0F3F0 ))
  \Mmux_pState[2]_X_3_o_wide_mux_5_OUT31  (
    .I0(sw_IBUF_3),
    .I1(\cmp01/eq_5 ),
    .I2(nState[2]),
    .I3(nState[1]),
    .I4(nState[0]),
    .O(\pState[2]_X_3_o_wide_mux_5_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \disp01/Mmux_Display31  (
    .I0(\rng01/rn [2]),
    .I1(nState[2]),
    .I2(nState[1]),
    .I3(nState[0]),
    .O(rndisp_2_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \disp01/Mmux_Display21  (
    .I0(\rng01/rn [1]),
    .I1(nState[2]),
    .I2(nState[1]),
    .I3(nState[0]),
    .O(rndisp_1_OBUF_14)
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \disp01/Mmux_Display11  (
    .I0(\rng01/rn [0]),
    .I1(nState[2]),
    .I2(nState[1]),
    .I3(nState[0]),
    .O(rndisp_0_OBUF_15)
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \cmp01/Mmux_cmp_GND_5_o_AND_1_o1_SW0  (
    .I0(num_0_IBUF_2),
    .I1(\rng01/rn [0]),
    .I2(num_1_IBUF_1),
    .I3(\rng01/rn [1]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0110000000000110 ))
  \cmp01/Mmux_cmp_GND_5_o_AND_1_o1  (
    .I0(nState[2]),
    .I1(N2),
    .I2(nState[1]),
    .I3(nState[0]),
    .I4(num_2_IBUF_0),
    .I5(\rng01/rn [2]),
    .O(\cmp01/cmp_GND_5_o_AND_1_o )
  );
  IBUF   num_2_IBUF (
    .I(num[2]),
    .O(num_2_IBUF_0)
  );
  IBUF   num_1_IBUF (
    .I(num[1]),
    .O(num_1_IBUF_1)
  );
  IBUF   num_0_IBUF (
    .I(num[0]),
    .O(num_0_IBUF_2)
  );
  IBUF   sw_IBUF (
    .I(sw),
    .O(sw_IBUF_3)
  );
  OBUF   rndisp_2_OBUF (
    .I(rndisp_2_OBUF_13),
    .O(rndisp[2])
  );
  OBUF   rndisp_1_OBUF (
    .I(rndisp_1_OBUF_14),
    .O(rndisp[1])
  );
  OBUF   rndisp_0_OBUF (
    .I(rndisp_0_OBUF_15),
    .O(rndisp[0])
  );
  OBUF   W_OBUF (
    .I(W_OBUF_16),
    .O(W)
  );
  OBUF   L_OBUF (
    .I(L_OBUF_17),
    .O(L)
  );
  OBUF   PA_OBUF (
    .I(Mram__n00405),
    .O(PA)
  );
  FD   \rng01/rn_2  (
    .C(clk_BUFGP_4),
    .D(\rng01/rn_2_rstpot_38 ),
    .Q(\rng01/rn [2])
  );
  FD   \rng01/rn_1  (
    .C(clk_BUFGP_4),
    .D(\rng01/rn_1_rstpot_39 ),
    .Q(\rng01/rn [1])
  );
  FD   \rng01/rn_0  (
    .C(clk_BUFGP_4),
    .D(\rng01/rn_0_rstpot_40 ),
    .Q(\rng01/rn [0])
  );
  LUT5 #(
    .INIT ( 32'hAACCCCCA ))
  \rng01/rn_2_rstpot  (
    .I0(\rng01/rn [2]),
    .I1(\rng01/count [2]),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\rng01/rn_2_rstpot_38 )
  );
  LUT5 #(
    .INIT ( 32'hAACCCCCA ))
  \rng01/rn_1_rstpot  (
    .I0(\rng01/rn [1]),
    .I1(\rng01/count [1]),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\rng01/rn_1_rstpot_39 )
  );
  LUT5 #(
    .INIT ( 32'hAACCCCCA ))
  \rng01/rn_0_rstpot  (
    .I0(\rng01/rn [0]),
    .I1(\rng01/count [0]),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\rng01/rn_0_rstpot_40 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \rng01/count_0  (
    .C(clk_BUFGP_4),
    .D(\rng01/count_0_rstpot_41 ),
    .Q(\rng01/count [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \rng01/count_2  (
    .C(clk_BUFGP_4),
    .D(\rng01/count_2_rstpot_42 ),
    .Q(\rng01/count [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \rng01/count_1  (
    .C(clk_BUFGP_4),
    .D(\rng01/count_1_rstpot_43 ),
    .Q(\rng01/count [1])
  );
  LUT6 #(
    .INIT ( 64'h3C3CAAAAAAAAAA3C ))
  \rng01/count_0_rstpot  (
    .I0(\rng01/count [0]),
    .I1(\rng01/count [2]),
    .I2(\rng01/count [1]),
    .I3(nState[1]),
    .I4(nState[2]),
    .I5(nState[0]),
    .O(\rng01/count_0_rstpot_41 )
  );
  LUT5 #(
    .INIT ( 32'hCCAAAAAC ))
  \rng01/count_2_rstpot  (
    .I0(\rng01/count [2]),
    .I1(\rng01/count [1]),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\rng01/count_2_rstpot_42 )
  );
  LUT5 #(
    .INIT ( 32'hAACCCCCA ))
  \rng01/count_1_rstpot  (
    .I0(\rng01/count [0]),
    .I1(\rng01/count [1]),
    .I2(nState[1]),
    .I3(nState[2]),
    .I4(nState[0]),
    .O(\rng01/count_1_rstpot_43 )
  );
  LD   \cmp01/eq  (
    .D(\cmp01/cmp_GND_5_o_AND_1_o ),
    .G(N0),
    .Q(\cmp01/eq_5 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_4)
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

