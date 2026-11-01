// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Wed Sep 16 16:46:47 2026
// Host        : WIN-FBCLET8C2B0 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/BHARGAV/Downloads/HDLJourney/Verilog_Practice.v/Verilog_Practice.v.sim/sim_1/synth/func/xsim/ex_data_func_synth.v
// Design      : ex_beh
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu26-vsva1365-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
(* \DesignAttr:TELEMETRY_DATA  = "{\n  \"Design Characteristics Data\": {\n    \"Simulation\": {\n      \"Target Simulator\": \"XSim\",\n      \"Run Time\": {\n        \"behavioral \": \"8.779000\"\n      }\n    }\n  },\n  \"Design Flow Data\": {\n    \"Design Data\": {\n      \"Design Mode\": \"Project flow\",\n      \"Top Methodology\": \"Verilog\"\n    },\n    \"Synthesis\": {\n      \"Run Time\": \"35.535000 seconds\"\n    }\n  }\n}" *) 
module ex_beh
   (x,
    y,
    z,
    f);
  input x;
  input y;
  input z;
  output f;

  wire f;
  wire f_OBUF;
  wire x;
  wire x_IBUF;
  wire y;
  wire y_IBUF;
  wire z;
  wire z_IBUF;

  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  LUT3 #(
    .INIT(8'hF4)) 
    f_OBUF_inst_i_1
       (.I0(y_IBUF),
        .I1(z_IBUF),
        .I2(x_IBUF),
        .O(f_OBUF));
  IBUF x_IBUF_inst
       (.I(x),
        .O(x_IBUF));
  IBUF y_IBUF_inst
       (.I(y),
        .O(y_IBUF));
  IBUF z_IBUF_inst
       (.I(z),
        .O(z_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
