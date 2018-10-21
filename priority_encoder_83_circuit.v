// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sun Oct 21 17:29:18 2018"

module priority_encoder_83_circuit(
	d0,
	d1,
	d2,
	d3,
	d4,
	d5,
	d6,
	d7,
	q0,
	q1,
	q2,
	V
);


input wire	d0;
input wire	d1;
input wire	d2;
input wire	d3;
input wire	d4;
input wire	d5;
input wire	d6;
input wire	d7;
output wire	q0;
output wire	q1;
output wire	q2;
output wire	V;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_36;




assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_43 & SYNTHESIZED_WIRE_44;

assign	SYNTHESIZED_WIRE_30 = d1 & SYNTHESIZED_WIRE_39 & d1 & SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_43 & SYNTHESIZED_WIRE_44;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_44 & d2 & SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_46 = SYNTHESIZED_WIRE_44 & d3 & d3 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_36 = d4 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_45 = d5 & d5 & SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_47 = d6 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_0 =  ~d0;

assign	SYNTHESIZED_WIRE_2 =  ~d1;

assign	SYNTHESIZED_WIRE_39 =  ~d2;

assign	SYNTHESIZED_WIRE_40 =  ~d3;

assign	SYNTHESIZED_WIRE_44 =  ~d4;

assign	SYNTHESIZED_WIRE_42 =  ~d5;

assign	SYNTHESIZED_WIRE_43 =  ~d7;

assign	SYNTHESIZED_WIRE_41 =  ~d6;

assign	V =  ~SYNTHESIZED_WIRE_29;

assign	q0 = SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_45 | d7 | SYNTHESIZED_WIRE_46;

assign	q1 = SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_47 | d7 | SYNTHESIZED_WIRE_46;

assign	q2 = SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_47 | d7 | SYNTHESIZED_WIRE_45;


endmodule
