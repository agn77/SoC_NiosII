
// ============================================================================
// Copyright (c) 2016 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Thu Nov  3 15:01:20 2016
// ============================================================================

//`define ENABLE_HSMC
//`define ENABLE_HPS

module nios2_top(

      ///////// CLOCK /////////
      input              CLOCK2_50,
      input              CLOCK3_50,
      input              CLOCK4_50,
      input              CLOCK_50,

      ///////// KEY /////////
      input    [ 3: 0]   KEY,

      ///////// SW /////////
      input    [ 9: 0]   SW,

      ///////// LED /////////
      output   [ 9: 0]   LEDR,

      ///////// Seg7 /////////
      output   [ 6: 0]   HEX0,
      output   [ 6: 0]   HEX1,
      output   [ 6: 0]   HEX2,
      output   [ 6: 0]   HEX3,
      output   [ 6: 0]   HEX4,
      output   [ 6: 0]   HEX5

      

);


//=======================================================
//  REG/WIRE declarations
//=======================================================
nios2 u0 (
		.clk_clk                             (CLOCK_50),                             //                          clk.clk
		.reset_reset_n                       (1'b1),                       //                        reset.reset_n
		.button_external_connection_export   (KEY[1:0]),   //   button_external_connection.export
		.led_external_connection_export      (ledFromNios[9:0]),      //      led_external_connection.export
		.switches_external_connection_export (SW[9:0]), // switches_external_connection.export
		.hex0_external_connection_export     (HEX0),     //     hex0_external_connection.export
		.hex1_external_connection_export     (HEX1),     //     hex1_external_connection.export
		.hex2_external_connection_export     (HEX2),     //     hex2_external_connection.export
		.hex3_external_connection_export     (HEX3),     //     hex3_external_connection.export
		.hex4_external_connection_export     (HEX4),     //     hex4_external_connection.export
		.hex5_external_connection_export     (HEX5)      //     hex5_external_connection.export
	);




//=======================================================
//  Structural coding
//=======================================================

	
assign LEDR[2] = SW[2];

wire [9:0] ledFromNios;
assign LEDR[1:0] = ledFromNios[1:0];
assign LEDR[9:3] = ledFromNios[9:3];
//assign HEX0[7] = 1'b1;
//assign HEX1[7] = 1'b1;
//assign HEX2[7] = 1'b1;
//assign HEX3[7] = 1'b1;
//assign HEX4[7] = 1'b1;
//assign HEX5[7] = 1'b1;



endmodule
