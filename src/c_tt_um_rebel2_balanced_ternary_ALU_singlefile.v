module tt_um_rebel2_balanced_ternary_ALU (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

wire [1:0] tnet_0 = ui_in[7:6]; //func2
wire [1:0] tnet_1 = ui_in[5:4]; //func1
wire [1:0] tnet_2 = ui_in[3:2]; //func0
wire [1:0] tnet_3 = ui_in[1:0]; //b1
wire [1:0] tnet_4 = uio_in[7:6]; //b0
wire [1:0] tnet_5 = uio_in[5:4]; //a1
wire [1:0] tnet_6 = uio_in[3:2]; //a0
wire [1:0] tnet_7 = uio_in[1:0]; //unused

wire [1:0] tnet_8;
wire [1:0] tnet_9;
wire [1:0] tnet_10;

assign uio_oe = 8'b0000_0000; // 0 = input, 1 = output
  assign uio_out[7:0] = 8'b00000000;

assign uo_out[7:6] = tnet_8; //carry
assign uo_out[5:4] = tnet_9; //out1
assign uo_out[3:2] = tnet_10; //out0
assign uo_out[1:0] = tnet_7; //unused

c_ALU2 SavedGate_1 (
.io_in({tnet_0,tnet_1,tnet_2,tnet_3,tnet_4,tnet_5,tnet_6}),
.io_out({tnet_8,tnet_9,tnet_10})
);

endmodule


module c_ALU2 (
     input [13:0] io_in,
     output [5:0] io_out
);

wire [1:0] tnet_0 = io_in[13:12]; //func2
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[11:10]; //func1
wire [1:0] tnet_3 = tnet_2;
wire [1:0] tnet_4 = tnet_2;
wire [1:0] tnet_5 = tnet_2;
wire [1:0] tnet_6 = io_in[9:8]; //func0
wire [1:0] tnet_7 = tnet_6;
wire [1:0] tnet_8 = tnet_6;
wire [1:0] tnet_9 = tnet_6;
wire [1:0] tnet_10 = tnet_6;
wire [1:0] tnet_11 = io_in[7:6]; //b1
wire [1:0] tnet_12 = tnet_11;
wire [1:0] tnet_13 = tnet_11;
wire [1:0] tnet_14 = tnet_11;
wire [1:0] tnet_15 = tnet_11;
wire [1:0] tnet_16 = io_in[5:4]; //b0
wire [1:0] tnet_17 = tnet_16;
wire [1:0] tnet_18 = tnet_16;
wire [1:0] tnet_19 = tnet_16;
wire [1:0] tnet_20 = tnet_16;
wire [1:0] tnet_21 = io_in[3:2]; //a1
wire [1:0] tnet_22 = tnet_21;
wire [1:0] tnet_23 = tnet_21;
wire [1:0] tnet_24 = tnet_21;
wire [1:0] tnet_25 = tnet_21;
wire [1:0] tnet_26 = io_in[1:0]; //a0
wire [1:0] tnet_27 = tnet_26;
wire [1:0] tnet_28 = tnet_26;
wire [1:0] tnet_29 = tnet_26;
wire [1:0] tnet_30 = tnet_26;

wire [1:0] tnet_31;
wire [1:0] tnet_32;
wire [1:0] tnet_33;
wire [1:0] tnet_34;
wire [1:0] tnet_35;
wire [1:0] tnet_36;
wire [1:0] tnet_37;
wire [1:0] tnet_38;
wire [1:0] tnet_39;
wire [1:0] tnet_40;
wire [1:0] tnet_41;
wire [1:0] tnet_42;
wire [1:0] tnet_43;
wire [1:0] tnet_44;
wire [1:0] tnet_45;
wire [1:0] tnet_46;
wire [1:0] tnet_47 = tnet_46;
wire [1:0] tnet_48;
wire [1:0] tnet_49;
wire [1:0] tnet_50;
wire [1:0] tnet_51;
wire [1:0] tnet_52;
wire [1:0] tnet_53;
wire [1:0] tnet_54;
wire [1:0] tnet_55;
wire [1:0] tnet_56;
wire [1:0] tnet_57;
wire [1:0] tnet_58;

assign io_out[5:4] = tnet_56; //carry
assign io_out[3:2] = tnet_57; //out1
assign io_out[1:0] = tnet_58; //out0

f_DGDDDDDAD_bet LogicGate_0 (
.portB(tnet_1),
.portA(tnet_4),
.portC(tnet_41),
.out(tnet_56)
);

c_SHIFT2 SavedGate_0 (
.io_in({tnet_25,tnet_30,tnet_15,tnet_20,tnet_2,tnet_6}),
.io_out({tnet_32,tnet_31})
);

c_2MUX2 SavedGate_1 (
.io_in({tnet_9,tnet_38,tnet_37,tnet_36,tnet_35}),
.io_out({tnet_33,tnet_34})
);

c_2TritMul SavedGate_2 (
.io_in({tnet_13,tnet_18,tnet_23,tnet_28}),
.io_out({tnet_38,tnet_37,tnet_36,tnet_35})
);

c_2MUX2 SavedGate_3 (
.io_in({tnet_5,tnet_33,tnet_34,tnet_42,tnet_43}),
.io_out({tnet_39,tnet_40})
);

c_3MUX2 SavedGate_4 (
.io_in({tnet_0,tnet_32,tnet_31,tnet_39,tnet_40,tnet_53,tnet_52}),
.io_out({tnet_57,tnet_58})
);

c_AddSub2 SavedGate_5 (
.io_in({tnet_7,tnet_14,tnet_19,tnet_24,tnet_29}),
.io_out({tnet_41,tnet_42,tnet_43})
);

c_3MUX2 SavedGate_6 (
.io_in({tnet_10,tnet_49,tnet_48,tnet_47,tnet_46,tnet_51,tnet_50}),
.io_out({tnet_44,tnet_45})
);

c_CMP2 SavedGate_7 (
.io_in({tnet_12,tnet_17,tnet_22,tnet_27}),
.io_out({tnet_51,tnet_50,tnet_49,tnet_48,tnet_46})
);

c_2MUX2 SavedGate_8 (
.io_in({tnet_3,tnet_44,tnet_45,tnet_55,tnet_54}),
.io_out({tnet_53,tnet_52})
);

c_CMP2tritwise SavedGate_9 (
.io_in({tnet_8,tnet_11,tnet_16,tnet_21,tnet_26}),
.io_out({tnet_55,tnet_54})
);

endmodule

module c_2MUX1 (
     input [5:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[5:4]; //sel
wire [1:0] tnet_1 = io_in[3:2]; //b
wire [1:0] tnet_2 = io_in[1:0]; //a

wire [1:0] tnet_3;

assign io_out[1:0] = tnet_3; //q

f_PPPZD0ZD0_bet LogicGate_0 (
.portC(tnet_0),
.portB(tnet_1),
.portA(tnet_2),
.out(tnet_3)
);
  
endmodule

module c_2MUX2 (
     input [9:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[9:8]; //sel
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[7:6]; //b1
wire [1:0] tnet_3 = io_in[5:4]; //b0
wire [1:0] tnet_4 = io_in[3:2]; //a1
wire [1:0] tnet_5 = io_in[1:0]; //a0

wire [1:0] tnet_6;
wire [1:0] tnet_7;

assign io_out[3:2] = tnet_6; //q1
assign io_out[1:0] = tnet_7; //q0

c_2MUX1 SavedGate_0 (
.io_in({tnet_0,tnet_2,tnet_4}),
.io_out({tnet_6})
);

c_2MUX1 SavedGate_1 (
.io_in({tnet_1,tnet_3,tnet_5}),
.io_out({tnet_7})
);

endmodule

module c_2TritAdder (
     input [7:0] io_in,
     output [5:0] io_out
);

wire [1:0] tnet_0 = io_in[7:6]; //b1
wire [1:0] tnet_1 = io_in[5:4]; //b0
wire [1:0] tnet_2 = io_in[3:2]; //a1
wire [1:0] tnet_3 = io_in[1:0]; //a0

wire [1:0] tnet_4;
wire [1:0] tnet_5;
wire [1:0] tnet_6;
wire [1:0] tnet_7;

assign io_out[5:4] = tnet_5; //Cout
assign io_out[3:2] = tnet_6; //q1
assign io_out[1:0] = tnet_7; //q0

c_TriFullAdder SavedGate_0 (
.io_in({tnet_4,tnet_0,tnet_2}),
.io_out({tnet_5,tnet_6})
);

c_TriHalfAdder SavedGate_1 (
.io_in({tnet_1,tnet_3}),
.io_out({tnet_4,tnet_7})
);

endmodule

module c_2TritComp (
     input [7:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[7:6]; //b1
wire [1:0] tnet_1 = io_in[5:4]; //b0
wire [1:0] tnet_2 = io_in[3:2]; //a1
wire [1:0] tnet_3 = io_in[1:0]; //a0

wire [1:0] tnet_4;
wire [1:0] tnet_5;

assign io_out[1:0] = tnet_5; //q

f_H51_bet LogicGate_0 (
.portB(tnet_0),
.portA(tnet_2),
.out(tnet_4)
);

c_RippleComp SavedGate_0 (
.io_in({tnet_4,tnet_1,tnet_3}),
.io_out({tnet_5})
);

endmodule

module c_2TritMul (
     input [7:0] io_in,
     output [7:0] io_out
);

wire [1:0] tnet_0 = io_in[7:6]; //b1
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[5:4]; //b0
wire [1:0] tnet_3 = tnet_2;
wire [1:0] tnet_4 = io_in[3:2]; //a1
wire [1:0] tnet_5 = tnet_4;
wire [1:0] tnet_6 = io_in[1:0]; //a0
wire [1:0] tnet_7 = tnet_6;

wire [1:0] tnet_8;
wire [1:0] tnet_9;
wire [1:0] tnet_10;
wire [1:0] tnet_11;
wire [1:0] tnet_12;
wire [1:0] tnet_13;
wire [1:0] tnet_14;
wire [1:0] tnet_15;

assign io_out[7:6] = tnet_12; //q3
assign io_out[5:4] = tnet_13; //q2
assign io_out[3:2] = tnet_14; //q1
assign io_out[1:0] = tnet_15; //q0

c_TriMul1 SavedGate_0 (
.io_in({tnet_1,tnet_5}),
.io_out({tnet_8})
);

c_TriHalfAdder SavedGate_1 (
.io_in({tnet_8,tnet_10}),
.io_out({tnet_12,tnet_13})
);

c_TriMul1 SavedGate_2 (
.io_in({tnet_3,tnet_4}),
.io_out({tnet_9})
);

c_TriHalfAdder SavedGate_3 (
.io_in({tnet_9,tnet_11}),
.io_out({tnet_10,tnet_14})
);

c_TriMul1 SavedGate_4 (
.io_in({tnet_0,tnet_7}),
.io_out({tnet_11})
);

c_TriMul1 SavedGate_5 (
.io_in({tnet_2,tnet_6}),
.io_out({tnet_15})
);

endmodule

module c_2TritNot (
     input [3:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[3:2]; //a1
wire [1:0] tnet_1 = io_in[1:0]; //a0

wire [1:0] tnet_2;
wire [1:0] tnet_3;

assign io_out[3:2] = tnet_2; //q1
assign io_out[1:0] = tnet_3; //q0

f_5_bet LogicGate_0 (
.portA(tnet_0),
.out(tnet_2)
);

f_5_bet LogicGate_1 (
.portA(tnet_1),
.out(tnet_3)
);

endmodule

module c_3MUX1 (
     input [7:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[7:6]; //sel
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[5:4]; //c
wire [1:0] tnet_3 = io_in[3:2]; //b
wire [1:0] tnet_4 = io_in[1:0]; //a

wire [1:0] tnet_5;
wire [1:0] tnet_6;

assign io_out[1:0] = tnet_6; //out

f_PPPZD0ZD0_bet LogicGate_0 (
.portC(tnet_0),
.portB(tnet_2),
.portA(tnet_5),
.out(tnet_6)
);

f_PPPPPPZD0_bet LogicGate_1 (
  .portC(tnet_1),
  .portB(tnet_3),
  .portA(tnet_4),
  .out(tnet_5)
);

endmodule

module c_3MUX2 (
     input [13:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[13:12]; //sel
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[11:10]; //c1
wire [1:0] tnet_3 = io_in[9:8]; //c0
wire [1:0] tnet_4 = io_in[7:6]; //b1
wire [1:0] tnet_5 = io_in[5:4]; //b0
wire [1:0] tnet_6 = io_in[3:2]; //a1
wire [1:0] tnet_7 = io_in[1:0]; //a0

wire [1:0] tnet_8;
wire [1:0] tnet_9;

assign io_out[3:2] = tnet_8; //q1
assign io_out[1:0] = tnet_9; //q0

c_3MUX1 SavedGate_0 (
.io_in({tnet_0,tnet_2,tnet_4,tnet_6}),
.io_out({tnet_8})
);

c_3MUX1 SavedGate_1 (
.io_in({tnet_1,tnet_3,tnet_5,tnet_7}),
.io_out({tnet_9})
);

endmodule

module c_AddSub2 (
     input [9:0] io_in,
     output [5:0] io_out
);

wire [1:0] tnet_0 = io_in[9:8]; //sel
wire [1:0] tnet_1 = io_in[7:6]; //b1
wire [1:0] tnet_2 = tnet_1;
wire [1:0] tnet_3 = io_in[5:4]; //b0
wire [1:0] tnet_4 = tnet_3;
wire [1:0] tnet_5 = io_in[3:2]; //a1
wire [1:0] tnet_6 = io_in[1:0]; //a0

wire [1:0] tnet_7;
wire [1:0] tnet_8;
wire [1:0] tnet_9;
wire [1:0] tnet_10;
wire [1:0] tnet_11;
wire [1:0] tnet_12;
wire [1:0] tnet_13;

assign io_out[5:4] = tnet_11; //q2
assign io_out[3:2] = tnet_12; //q1
assign io_out[1:0] = tnet_13; //q0

c_2TritNot SavedGate_0 (
.io_in({tnet_2,tnet_4}),
.io_out({tnet_7,tnet_8})
);

c_2MUX2 SavedGate_1 (
.io_in({tnet_0,tnet_7,tnet_8,tnet_1,tnet_3}),
.io_out({tnet_9,tnet_10})
);

c_2TritAdder SavedGate_2 (
.io_in({tnet_9,tnet_10,tnet_5,tnet_6}),
.io_out({tnet_11,tnet_12,tnet_13})
);

endmodule

module c_CMP2 (
     input [7:0] io_in,
     output [9:0] io_out
);

wire [1:0] tnet_0 = io_in[7:6]; //b1
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = tnet_0;
wire [1:0] tnet_3 = io_in[5:4]; //b0
wire [1:0] tnet_4 = tnet_3;
wire [1:0] tnet_5 = tnet_3;
wire [1:0] tnet_6 = io_in[3:2]; //a1
wire [1:0] tnet_7 = tnet_6;
wire [1:0] tnet_8 = tnet_6;
wire [1:0] tnet_9 = io_in[1:0]; //a0
wire [1:0] tnet_10 = tnet_9;
wire [1:0] tnet_11 = tnet_9;

wire [1:0] tnet_12;
wire [1:0] tnet_13 = tnet_12;
wire [1:0] tnet_14;
wire [1:0] tnet_15;
wire [1:0] tnet_16;
wire [1:0] tnet_17;
wire [1:0] tnet_18 = tnet_12;

assign io_out[9:8] = tnet_14; //max1
assign io_out[7:6] = tnet_15; //max0
assign io_out[5:4] = tnet_16; //min1
assign io_out[3:2] = tnet_17; //min0
assign io_out[1:0] = tnet_18; //cmp

c_2MUX2 SavedGate_0 (
.io_in({tnet_13,tnet_0,tnet_3,tnet_8,tnet_11}),
.io_out({tnet_14,tnet_15})
);

c_2MUX2 SavedGate_1 (
.io_in({tnet_12,tnet_6,tnet_9,tnet_1,tnet_4}),
.io_out({tnet_16,tnet_17})
);

c_2TritComp SavedGate_2 (
.io_in({tnet_2,tnet_5,tnet_7,tnet_10}),
.io_out({tnet_12})
);

endmodule

module c_CMP2tritwise (
     input [9:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[9:8]; //mode
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[7:6]; //b1
wire [1:0] tnet_3 = io_in[5:4]; //b0
wire [1:0] tnet_4 = io_in[3:2]; //a1
wire [1:0] tnet_5 = io_in[1:0]; //a0

wire [1:0] tnet_6;
wire [1:0] tnet_7;

assign io_out[3:2] = tnet_6; //q0
assign io_out[1:0] = tnet_7; //q1

f_ZRPH51CC0_bet LogicGate_0 (
.portC(tnet_0),
.portB(tnet_2),
.portA(tnet_4),
.out(tnet_6)
);

f_ZRPH51PC0_bet LogicGate_1 (
.portC(tnet_1),
.portB(tnet_3),
.portA(tnet_5),
.out(tnet_7)
);

endmodule

module c_RippleComp (
     input [5:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[5:4]; //Cin
wire [1:0] tnet_1 = io_in[3:2]; //b
wire [1:0] tnet_2 = io_in[1:0]; //a

wire [1:0] tnet_3;

assign io_out[1:0] = tnet_3; //q

f_ZZZH51000_bet LogicGate_0 (
.portC(tnet_0),
.portB(tnet_1),
.portA(tnet_2),
.out(tnet_3)
);

endmodule

module c_SHIFT2 (
     input [11:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[11:10]; //a1
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[9:8]; //a0
wire [1:0] tnet_3 = tnet_2;
wire [1:0] tnet_4 = io_in[7:6]; //imm1
wire [1:0] tnet_5 = tnet_4;
wire [1:0] tnet_6 = io_in[5:4]; //imm0
wire [1:0] tnet_7 = tnet_6;
wire [1:0] tnet_8 = io_in[3:2]; //dir
wire [1:0] tnet_9 = tnet_8;
wire [1:0] tnet_10 = io_in[1:0]; //insert
wire [1:0] tnet_11 = tnet_10;

wire [1:0] tnet_12;
wire [1:0] tnet_13;
wire [1:0] tnet_14;
wire [1:0] tnet_15;

assign io_out[3:2] = tnet_14; //q1
assign io_out[1:0] = tnet_15; //q0

f_063TGT360_bet LogicGate_0 (
.portB(tnet_5),
.portA(tnet_7),
.portC(tnet_9),
.out(tnet_12)
);

f_630GTG036_bet LogicGate_1 (
.portB(tnet_4),
.portA(tnet_6),
.portC(tnet_8),
.out(tnet_13)
);

c_3MUX1 SavedGate_0 (
.io_in({tnet_12,tnet_1,tnet_3,tnet_11}),
.io_out({tnet_14})
);

c_3MUX1 SavedGate_1 (
.io_in({tnet_13,tnet_0,tnet_2,tnet_10}),
.io_out({tnet_15})
);

endmodule

module c_TriFullAdder (
     input [5:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[5:4]; //Cin
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[3:2]; //b
wire [1:0] tnet_3 = tnet_2;
wire [1:0] tnet_4 = io_in[1:0]; //a
wire [1:0] tnet_5 = tnet_4;

wire [1:0] tnet_6;
wire [1:0] tnet_7;

assign io_out[3:2] = tnet_6; //Cout
assign io_out[1:0] = tnet_7; //q

f_XRDRDCDC9_bet LogicGate_0 (
.portC(tnet_1),
.portB(tnet_3),
.portA(tnet_5),
.out(tnet_6)
);

f_B7P7PBPB7_bet LogicGate_1 (
.portC(tnet_0),
.portB(tnet_2),
.portA(tnet_4),
.out(tnet_7)
);

endmodule

module c_TriHalfAdder (
     input [3:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[3:2]; //b
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[1:0]; //a
wire [1:0] tnet_3 = tnet_2;

wire [1:0] tnet_4;
wire [1:0] tnet_5;

assign io_out[3:2] = tnet_4; //Cout
assign io_out[1:0] = tnet_5; //q

f_RDC_bet LogicGate_0 (
.portB(tnet_1),
.portA(tnet_3),
.out(tnet_4)
);

f_7PB_bet LogicGate_1 (
.portB(tnet_0),
.portA(tnet_2),
.out(tnet_5)
);

endmodule

module c_TriMul1 (
     input [3:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[3:2]; //b
wire [1:0] tnet_1 = io_in[1:0]; //a

wire [1:0] tnet_2;

assign io_out[1:0] = tnet_2; //q

f_PD5_bet LogicGate_0 (
.portB(tnet_0),
.portA(tnet_1),
.out(tnet_2)
);

endmodule

module f_063TGT360_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
     2'b11;
endmodule

module f_5_bet (
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portA == 2'b01) ? 2'b10 :
    (portA == 2'b10) ? 2'b01 :
     2'b11;
endmodule

module f_630GTG036_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
     2'b11;
endmodule

module f_7PB_bet (
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portB == 2'b01) & (portA == 2'b01) ? 2'b10 :
    (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
     2'b11;
endmodule

module f_B7P7PBPB7_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b01 :
     2'b11;
endmodule

module f_DGDDDDDAD_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b11) ? 2'b10 :
     2'b11;
endmodule

module f_H51_bet (
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_PD5_bet (
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portB == 2'b01) & (portA == 2'b01) ? 2'b10 :
    (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_PPPPPPZD0_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_PPPZD0ZD0_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_RDC_bet (
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_XRDRDCDC9_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_ZRPH51CC0_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_ZRPH51PC0_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule

module f_ZZZH51000_bet (
     input wire[1:0] portC,
     input wire[1:0] portB,
     input wire[1:0] portA,
     output wire[1:0] out
     );

     assign out = 
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b01) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b11) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b01) & (portB == 2'b10) & (portA == 2'b10) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b01) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b10) & (portA == 2'b11) ? 2'b01 :
    (portC == 2'b11) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b11) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b01) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b11) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b01) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b11) & (portA == 2'b10) ? 2'b10 :
    (portC == 2'b10) & (portB == 2'b10) & (portA == 2'b10) ? 2'b10 :
     2'b11;
endmodule
