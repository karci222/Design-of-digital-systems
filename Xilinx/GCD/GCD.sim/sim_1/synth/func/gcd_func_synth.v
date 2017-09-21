// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Sep 15 16:40:32 2017
// Host        : DESKTOP-FU5PHUO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Work/DTU/Design of Digital
//               Systems/T2/Xilinx/GCD/GCD.sim/sim_1/synth/func/gcd_func_synth.v}
// Design      : gcd
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module gcd
   (clk,
    reset,
    req,
    AB,
    ack,
    C);
  input clk;
  input reset;
  input req;
  input [15:0]AB;
  output ack;
  output [15:0]C;

  wire [15:0]AB;
  wire [15:0]AB_IBUF;
  wire [15:0]C;
  wire [15:0]C_OBUF;
  wire ack;
  wire ack32_in;
  wire ack_OBUF;
  wire ack_P_i_2_n_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire n_0_58_BUFG;
  wire n_0_58_BUFG_inst_n_1;
  wire [15:0]next_reg_a;
  wire \next_reg_a_reg[0]_i_1_n_1 ;
  wire \next_reg_a_reg[10]_i_1_n_1 ;
  wire \next_reg_a_reg[11]_i_1_n_1 ;
  wire \next_reg_a_reg[12]_i_1_n_1 ;
  wire \next_reg_a_reg[13]_i_1_n_1 ;
  wire \next_reg_a_reg[14]_i_1_n_1 ;
  wire \next_reg_a_reg[15]_i_1_n_1 ;
  wire \next_reg_a_reg[1]_i_1_n_1 ;
  wire \next_reg_a_reg[2]_i_1_n_1 ;
  wire \next_reg_a_reg[3]_i_1_n_1 ;
  wire \next_reg_a_reg[4]_i_1_n_1 ;
  wire \next_reg_a_reg[5]_i_1_n_1 ;
  wire \next_reg_a_reg[6]_i_1_n_1 ;
  wire \next_reg_a_reg[7]_i_1_n_1 ;
  wire \next_reg_a_reg[8]_i_1_n_1 ;
  wire \next_reg_a_reg[9]_i_1_n_1 ;
  wire [15:0]next_reg_b;
  wire \next_reg_b_reg[0]_i_1_n_1 ;
  wire \next_reg_b_reg[10]_i_1_n_1 ;
  wire \next_reg_b_reg[11]_i_1_n_1 ;
  wire \next_reg_b_reg[12]_i_1_n_1 ;
  wire \next_reg_b_reg[13]_i_1_n_1 ;
  wire \next_reg_b_reg[14]_i_1_n_1 ;
  wire \next_reg_b_reg[15]_i_1_n_1 ;
  wire \next_reg_b_reg[1]_i_1_n_1 ;
  wire \next_reg_b_reg[2]_i_1_n_1 ;
  wire \next_reg_b_reg[3]_i_1_n_1 ;
  wire \next_reg_b_reg[4]_i_1_n_1 ;
  wire \next_reg_b_reg[5]_i_1_n_1 ;
  wire \next_reg_b_reg[6]_i_1_n_1 ;
  wire \next_reg_b_reg[7]_i_1_n_1 ;
  wire \next_reg_b_reg[8]_i_1_n_1 ;
  wire \next_reg_b_reg[9]_i_1_n_1 ;
  wire [2:0]next_state;
  wire \next_state_reg[0]__0_C_n_1 ;
  wire \next_state_reg[0]__0_LDC_i_1_n_1 ;
  wire \next_state_reg[0]__0_LDC_i_2_n_1 ;
  wire \next_state_reg[0]__0_LDC_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_10_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_11_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_12_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_13_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_14_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_14_n_2 ;
  wire \next_state_reg[1]__0_LDC_i_14_n_3 ;
  wire \next_state_reg[1]__0_LDC_i_14_n_4 ;
  wire \next_state_reg[1]__0_LDC_i_15_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_16_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_17_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_18_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_19_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_1_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_20_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_21_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_22_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_23_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_24_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_25_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_26_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_27_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_28_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_2_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_3_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_3_n_2 ;
  wire \next_state_reg[1]__0_LDC_i_3_n_3 ;
  wire \next_state_reg[1]__0_LDC_i_3_n_4 ;
  wire \next_state_reg[1]__0_LDC_i_4_n_3 ;
  wire \next_state_reg[1]__0_LDC_i_4_n_4 ;
  wire \next_state_reg[1]__0_LDC_i_5_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_5_n_2 ;
  wire \next_state_reg[1]__0_LDC_i_5_n_3 ;
  wire \next_state_reg[1]__0_LDC_i_5_n_4 ;
  wire \next_state_reg[1]__0_LDC_i_6_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_7_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_8_n_1 ;
  wire \next_state_reg[1]__0_LDC_i_9_n_1 ;
  wire \next_state_reg[1]__0_LDC_n_1 ;
  wire \next_state_reg[1]__0_P_n_1 ;
  wire \next_state_reg[2]__0_LDC_i_1_n_1 ;
  wire \next_state_reg[2]__0_LDC_i_2_n_1 ;
  wire \next_state_reg[2]__0_LDC_n_1 ;
  wire \next_state_reg[2]__0_P_n_1 ;
  wire [15:0]reg_a;
  wire [15:0]reg_b;
  wire req;
  wire req_IBUF;
  wire req_IBUF_BUFG;
  wire [2:0]state;
  wire [3:0]\NLW_next_state_reg[1]__0_LDC_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_next_state_reg[1]__0_LDC_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_next_state_reg[1]__0_LDC_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_state_reg[1]__0_LDC_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_next_state_reg[1]__0_LDC_i_5_O_UNCONNECTED ;

  IBUF \AB_IBUF[0]_inst 
       (.I(AB[0]),
        .O(AB_IBUF[0]));
  IBUF \AB_IBUF[10]_inst 
       (.I(AB[10]),
        .O(AB_IBUF[10]));
  IBUF \AB_IBUF[11]_inst 
       (.I(AB[11]),
        .O(AB_IBUF[11]));
  IBUF \AB_IBUF[12]_inst 
       (.I(AB[12]),
        .O(AB_IBUF[12]));
  IBUF \AB_IBUF[13]_inst 
       (.I(AB[13]),
        .O(AB_IBUF[13]));
  IBUF \AB_IBUF[14]_inst 
       (.I(AB[14]),
        .O(AB_IBUF[14]));
  IBUF \AB_IBUF[15]_inst 
       (.I(AB[15]),
        .O(AB_IBUF[15]));
  IBUF \AB_IBUF[1]_inst 
       (.I(AB[1]),
        .O(AB_IBUF[1]));
  IBUF \AB_IBUF[2]_inst 
       (.I(AB[2]),
        .O(AB_IBUF[2]));
  IBUF \AB_IBUF[3]_inst 
       (.I(AB[3]),
        .O(AB_IBUF[3]));
  IBUF \AB_IBUF[4]_inst 
       (.I(AB[4]),
        .O(AB_IBUF[4]));
  IBUF \AB_IBUF[5]_inst 
       (.I(AB[5]),
        .O(AB_IBUF[5]));
  IBUF \AB_IBUF[6]_inst 
       (.I(AB[6]),
        .O(AB_IBUF[6]));
  IBUF \AB_IBUF[7]_inst 
       (.I(AB[7]),
        .O(AB_IBUF[7]));
  IBUF \AB_IBUF[8]_inst 
       (.I(AB[8]),
        .O(AB_IBUF[8]));
  IBUF \AB_IBUF[9]_inst 
       (.I(AB[9]),
        .O(AB_IBUF[9]));
  OBUF \C_OBUF[0]_inst 
       (.I(C_OBUF[0]),
        .O(C[0]));
  OBUF \C_OBUF[10]_inst 
       (.I(C_OBUF[10]),
        .O(C[10]));
  OBUF \C_OBUF[11]_inst 
       (.I(C_OBUF[11]),
        .O(C[11]));
  OBUF \C_OBUF[12]_inst 
       (.I(C_OBUF[12]),
        .O(C[12]));
  OBUF \C_OBUF[13]_inst 
       (.I(C_OBUF[13]),
        .O(C[13]));
  OBUF \C_OBUF[14]_inst 
       (.I(C_OBUF[14]),
        .O(C[14]));
  OBUF \C_OBUF[15]_inst 
       (.I(C_OBUF[15]),
        .O(C[15]));
  OBUF \C_OBUF[1]_inst 
       (.I(C_OBUF[1]),
        .O(C[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(C_OBUF[2]),
        .O(C[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(C_OBUF[3]),
        .O(C[3]));
  OBUF \C_OBUF[4]_inst 
       (.I(C_OBUF[4]),
        .O(C[4]));
  OBUF \C_OBUF[5]_inst 
       (.I(C_OBUF[5]),
        .O(C[5]));
  OBUF \C_OBUF[6]_inst 
       (.I(C_OBUF[6]),
        .O(C[6]));
  OBUF \C_OBUF[7]_inst 
       (.I(C_OBUF[7]),
        .O(C[7]));
  OBUF \C_OBUF[8]_inst 
       (.I(C_OBUF[8]),
        .O(C[8]));
  OBUF \C_OBUF[9]_inst 
       (.I(C_OBUF[9]),
        .O(C[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[0] 
       (.CLR(1'b0),
        .D(reg_a[0]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[10] 
       (.CLR(1'b0),
        .D(reg_a[10]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[11] 
       (.CLR(1'b0),
        .D(reg_a[11]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[12] 
       (.CLR(1'b0),
        .D(reg_a[12]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[13] 
       (.CLR(1'b0),
        .D(reg_a[13]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[14] 
       (.CLR(1'b0),
        .D(reg_a[14]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[15] 
       (.CLR(1'b0),
        .D(reg_a[15]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[1] 
       (.CLR(1'b0),
        .D(reg_a[1]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[2] 
       (.CLR(1'b0),
        .D(reg_a[2]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[3] 
       (.CLR(1'b0),
        .D(reg_a[3]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[4] 
       (.CLR(1'b0),
        .D(reg_a[4]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[5] 
       (.CLR(1'b0),
        .D(reg_a[5]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[6] 
       (.CLR(1'b0),
        .D(reg_a[6]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[7] 
       (.CLR(1'b0),
        .D(reg_a[7]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[8] 
       (.CLR(1'b0),
        .D(reg_a[8]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \C_reg[9] 
       (.CLR(1'b0),
        .D(reg_a[9]),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(C_OBUF[9]));
  OBUF ack_OBUF_inst
       (.I(ack_OBUF),
        .O(ack));
  LUT3 #(
    .INIT(8'hFE)) 
    ack_P_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(ack32_in));
  LUT3 #(
    .INIT(8'h01)) 
    ack_P_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(ack_P_i_2_n_1));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    ack_reg_P
       (.C(req_IBUF_BUFG),
        .CE(ack32_in),
        .D(1'b0),
        .PRE(ack_P_i_2_n_1),
        .Q(ack_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG n_0_58_BUFG_inst
       (.I(n_0_58_BUFG_inst_n_1),
        .O(n_0_58_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    n_0_58_BUFG_inst_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(n_0_58_BUFG_inst_n_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[0] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[0]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[0]_i_1 
       (.I0(AB_IBUF[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[0]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[10] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[10]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[10]_i_1 
       (.I0(AB_IBUF[10]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[10]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[11] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[11]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[11]_i_1 
       (.I0(AB_IBUF[11]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[11]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[12] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[12]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[12]_i_1 
       (.I0(AB_IBUF[12]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[12]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[13] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[13]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[13]_i_1 
       (.I0(AB_IBUF[13]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[13]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[14] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[14]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[14]_i_1 
       (.I0(AB_IBUF[14]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[14]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[15] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[15]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[15]_i_1 
       (.I0(AB_IBUF[15]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[15]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[1] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[1]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[1]_i_1 
       (.I0(AB_IBUF[1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[1]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[2] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[2]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[2]_i_1 
       (.I0(AB_IBUF[2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[2]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[3] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[3]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[3]_i_1 
       (.I0(AB_IBUF[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[3]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[4] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[4]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[4]_i_1 
       (.I0(AB_IBUF[4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[4]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[5] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[5]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[5]_i_1 
       (.I0(AB_IBUF[5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[5]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[6] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[6]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[6]_i_1 
       (.I0(AB_IBUF[6]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[6]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[7] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[7]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[7]_i_1 
       (.I0(AB_IBUF[7]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[7]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[8] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[8]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[8]_i_1 
       (.I0(AB_IBUF[8]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[8]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_a_reg[9] 
       (.CLR(1'b0),
        .D(\next_reg_a_reg[9]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_a[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \next_reg_a_reg[9]_i_1 
       (.I0(AB_IBUF[9]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\next_reg_a_reg[9]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[0] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[0]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[0]),
        .O(\next_reg_b_reg[0]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[10] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[10]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[10]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[10]),
        .O(\next_reg_b_reg[10]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[11] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[11]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[11]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[11]),
        .O(\next_reg_b_reg[11]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[12] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[12]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[12]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[12]),
        .O(\next_reg_b_reg[12]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[13] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[13]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[13]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[13]),
        .O(\next_reg_b_reg[13]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[14] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[14]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[14]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[14]),
        .O(\next_reg_b_reg[14]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[15] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[15]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[15]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[15]),
        .O(\next_reg_b_reg[15]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[1] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[1]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[1]),
        .O(\next_reg_b_reg[1]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[2] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[2]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[2]),
        .O(\next_reg_b_reg[2]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[3] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[3]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[3]),
        .O(\next_reg_b_reg[3]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[4] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[4]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[4]),
        .O(\next_reg_b_reg[4]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[5] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[5]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[5]),
        .O(\next_reg_b_reg[5]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[6] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[6]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[6]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[6]),
        .O(\next_reg_b_reg[6]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[7] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[7]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[7]),
        .O(\next_reg_b_reg[7]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[8] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[8]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[8]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[8]),
        .O(\next_reg_b_reg[8]_i_1_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_reg_b_reg[9] 
       (.CLR(1'b0),
        .D(\next_reg_b_reg[9]_i_1_n_1 ),
        .G(n_0_58_BUFG),
        .GE(1'b1),
        .Q(next_reg_b[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \next_reg_b_reg[9]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(AB_IBUF[9]),
        .O(\next_reg_b_reg[9]_i_1_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0]__0_C 
       (.C(req_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\next_state_reg[0]__0_LDC_i_2_n_1 ),
        .D(1'b1),
        .Q(\next_state_reg[0]__0_C_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0]__0_LDC 
       (.CLR(\next_state_reg[0]__0_LDC_i_2_n_1 ),
        .D(1'b1),
        .G(\next_state_reg[0]__0_LDC_i_1_n_1 ),
        .GE(1'b1),
        .Q(\next_state_reg[0]__0_LDC_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11104444)) 
    \next_state_reg[0]__0_LDC_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\next_state_reg[1]__0_LDC_i_3_n_1 ),
        .I3(\next_state_reg[1]__0_LDC_i_4_n_3 ),
        .I4(state[2]),
        .O(\next_state_reg[0]__0_LDC_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hEAEAEAFA)) 
    \next_state_reg[0]__0_LDC_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\next_state_reg[1]__0_LDC_i_4_n_3 ),
        .I4(\next_state_reg[1]__0_LDC_i_3_n_1 ),
        .O(\next_state_reg[0]__0_LDC_i_2_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1]__0_LDC 
       (.CLR(\next_state_reg[1]__0_LDC_i_2_n_1 ),
        .D(1'b1),
        .G(\next_state_reg[1]__0_LDC_i_1_n_1 ),
        .GE(1'b1),
        .Q(\next_state_reg[1]__0_LDC_n_1 ));
  LUT5 #(
    .INIT(32'h005551AA)) 
    \next_state_reg[1]__0_LDC_i_1 
       (.I0(state[0]),
        .I1(\next_state_reg[1]__0_LDC_i_3_n_1 ),
        .I2(\next_state_reg[1]__0_LDC_i_4_n_3 ),
        .I3(state[2]),
        .I4(state[1]),
        .O(\next_state_reg[1]__0_LDC_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_10 
       (.I0(reg_a[14]),
        .I1(reg_b[14]),
        .I2(reg_a[15]),
        .I3(reg_b[15]),
        .O(\next_state_reg[1]__0_LDC_i_10_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_11 
       (.I0(reg_a[12]),
        .I1(reg_b[12]),
        .I2(reg_a[13]),
        .I3(reg_b[13]),
        .O(\next_state_reg[1]__0_LDC_i_11_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_12 
       (.I0(reg_a[10]),
        .I1(reg_b[10]),
        .I2(reg_a[11]),
        .I3(reg_b[11]),
        .O(\next_state_reg[1]__0_LDC_i_12_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_13 
       (.I0(reg_a[8]),
        .I1(reg_b[8]),
        .I2(reg_a[9]),
        .I3(reg_b[9]),
        .O(\next_state_reg[1]__0_LDC_i_13_n_1 ));
  CARRY4 \next_state_reg[1]__0_LDC_i_14 
       (.CI(1'b0),
        .CO({\next_state_reg[1]__0_LDC_i_14_n_1 ,\next_state_reg[1]__0_LDC_i_14_n_2 ,\next_state_reg[1]__0_LDC_i_14_n_3 ,\next_state_reg[1]__0_LDC_i_14_n_4 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state_reg[1]__0_LDC_i_14_O_UNCONNECTED [3:0]),
        .S({\next_state_reg[1]__0_LDC_i_25_n_1 ,\next_state_reg[1]__0_LDC_i_26_n_1 ,\next_state_reg[1]__0_LDC_i_27_n_1 ,\next_state_reg[1]__0_LDC_i_28_n_1 }));
  LUT2 #(
    .INIT(4'h9)) 
    \next_state_reg[1]__0_LDC_i_15 
       (.I0(reg_b[15]),
        .I1(reg_a[15]),
        .O(\next_state_reg[1]__0_LDC_i_15_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \next_state_reg[1]__0_LDC_i_16 
       (.I0(reg_a[12]),
        .I1(reg_b[12]),
        .I2(reg_b[14]),
        .I3(reg_a[14]),
        .I4(reg_b[13]),
        .I5(reg_a[13]),
        .O(\next_state_reg[1]__0_LDC_i_16_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_17 
       (.I0(reg_a[6]),
        .I1(reg_b[6]),
        .I2(reg_b[7]),
        .I3(reg_a[7]),
        .O(\next_state_reg[1]__0_LDC_i_17_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_18 
       (.I0(reg_a[4]),
        .I1(reg_b[4]),
        .I2(reg_b[5]),
        .I3(reg_a[5]),
        .O(\next_state_reg[1]__0_LDC_i_18_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_19 
       (.I0(reg_a[2]),
        .I1(reg_b[2]),
        .I2(reg_b[3]),
        .I3(reg_a[3]),
        .O(\next_state_reg[1]__0_LDC_i_19_n_1 ));
  LUT5 #(
    .INIT(32'hFFF4F000)) 
    \next_state_reg[1]__0_LDC_i_2 
       (.I0(\next_state_reg[1]__0_LDC_i_4_n_3 ),
        .I1(\next_state_reg[1]__0_LDC_i_3_n_1 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\next_state_reg[1]__0_LDC_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_20 
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .I2(reg_b[1]),
        .I3(reg_a[1]),
        .O(\next_state_reg[1]__0_LDC_i_20_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_21 
       (.I0(reg_a[6]),
        .I1(reg_b[6]),
        .I2(reg_a[7]),
        .I3(reg_b[7]),
        .O(\next_state_reg[1]__0_LDC_i_21_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_22 
       (.I0(reg_a[4]),
        .I1(reg_b[4]),
        .I2(reg_a[5]),
        .I3(reg_b[5]),
        .O(\next_state_reg[1]__0_LDC_i_22_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_23 
       (.I0(reg_a[2]),
        .I1(reg_b[2]),
        .I2(reg_a[3]),
        .I3(reg_b[3]),
        .O(\next_state_reg[1]__0_LDC_i_23_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \next_state_reg[1]__0_LDC_i_24 
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .I2(reg_a[1]),
        .I3(reg_b[1]),
        .O(\next_state_reg[1]__0_LDC_i_24_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \next_state_reg[1]__0_LDC_i_25 
       (.I0(reg_a[9]),
        .I1(reg_b[9]),
        .I2(reg_b[11]),
        .I3(reg_a[11]),
        .I4(reg_b[10]),
        .I5(reg_a[10]),
        .O(\next_state_reg[1]__0_LDC_i_25_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \next_state_reg[1]__0_LDC_i_26 
       (.I0(reg_a[6]),
        .I1(reg_b[6]),
        .I2(reg_b[8]),
        .I3(reg_a[8]),
        .I4(reg_b[7]),
        .I5(reg_a[7]),
        .O(\next_state_reg[1]__0_LDC_i_26_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \next_state_reg[1]__0_LDC_i_27 
       (.I0(reg_a[3]),
        .I1(reg_b[3]),
        .I2(reg_b[5]),
        .I3(reg_a[5]),
        .I4(reg_b[4]),
        .I5(reg_a[4]),
        .O(\next_state_reg[1]__0_LDC_i_27_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \next_state_reg[1]__0_LDC_i_28 
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .I2(reg_b[2]),
        .I3(reg_a[2]),
        .I4(reg_b[1]),
        .I5(reg_a[1]),
        .O(\next_state_reg[1]__0_LDC_i_28_n_1 ));
  CARRY4 \next_state_reg[1]__0_LDC_i_3 
       (.CI(\next_state_reg[1]__0_LDC_i_5_n_1 ),
        .CO({\next_state_reg[1]__0_LDC_i_3_n_1 ,\next_state_reg[1]__0_LDC_i_3_n_2 ,\next_state_reg[1]__0_LDC_i_3_n_3 ,\next_state_reg[1]__0_LDC_i_3_n_4 }),
        .CYINIT(1'b0),
        .DI({\next_state_reg[1]__0_LDC_i_6_n_1 ,\next_state_reg[1]__0_LDC_i_7_n_1 ,\next_state_reg[1]__0_LDC_i_8_n_1 ,\next_state_reg[1]__0_LDC_i_9_n_1 }),
        .O(\NLW_next_state_reg[1]__0_LDC_i_3_O_UNCONNECTED [3:0]),
        .S({\next_state_reg[1]__0_LDC_i_10_n_1 ,\next_state_reg[1]__0_LDC_i_11_n_1 ,\next_state_reg[1]__0_LDC_i_12_n_1 ,\next_state_reg[1]__0_LDC_i_13_n_1 }));
  CARRY4 \next_state_reg[1]__0_LDC_i_4 
       (.CI(\next_state_reg[1]__0_LDC_i_14_n_1 ),
        .CO({\NLW_next_state_reg[1]__0_LDC_i_4_CO_UNCONNECTED [3:2],\next_state_reg[1]__0_LDC_i_4_n_3 ,\next_state_reg[1]__0_LDC_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state_reg[1]__0_LDC_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\next_state_reg[1]__0_LDC_i_15_n_1 ,\next_state_reg[1]__0_LDC_i_16_n_1 }));
  CARRY4 \next_state_reg[1]__0_LDC_i_5 
       (.CI(1'b0),
        .CO({\next_state_reg[1]__0_LDC_i_5_n_1 ,\next_state_reg[1]__0_LDC_i_5_n_2 ,\next_state_reg[1]__0_LDC_i_5_n_3 ,\next_state_reg[1]__0_LDC_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI({\next_state_reg[1]__0_LDC_i_17_n_1 ,\next_state_reg[1]__0_LDC_i_18_n_1 ,\next_state_reg[1]__0_LDC_i_19_n_1 ,\next_state_reg[1]__0_LDC_i_20_n_1 }),
        .O(\NLW_next_state_reg[1]__0_LDC_i_5_O_UNCONNECTED [3:0]),
        .S({\next_state_reg[1]__0_LDC_i_21_n_1 ,\next_state_reg[1]__0_LDC_i_22_n_1 ,\next_state_reg[1]__0_LDC_i_23_n_1 ,\next_state_reg[1]__0_LDC_i_24_n_1 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_6 
       (.I0(reg_a[14]),
        .I1(reg_b[14]),
        .I2(reg_b[15]),
        .I3(reg_a[15]),
        .O(\next_state_reg[1]__0_LDC_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_7 
       (.I0(reg_a[12]),
        .I1(reg_b[12]),
        .I2(reg_b[13]),
        .I3(reg_a[13]),
        .O(\next_state_reg[1]__0_LDC_i_7_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_8 
       (.I0(reg_a[10]),
        .I1(reg_b[10]),
        .I2(reg_b[11]),
        .I3(reg_a[11]),
        .O(\next_state_reg[1]__0_LDC_i_8_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \next_state_reg[1]__0_LDC_i_9 
       (.I0(reg_a[8]),
        .I1(reg_b[8]),
        .I2(reg_b[9]),
        .I3(reg_a[9]),
        .O(\next_state_reg[1]__0_LDC_i_9_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_state_reg[1]__0_P 
       (.C(req_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\next_state_reg[1]__0_LDC_i_1_n_1 ),
        .Q(\next_state_reg[1]__0_P_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2]__0_LDC 
       (.CLR(\next_state_reg[2]__0_LDC_i_2_n_1 ),
        .D(1'b1),
        .G(\next_state_reg[2]__0_LDC_i_1_n_1 ),
        .GE(1'b1),
        .Q(\next_state_reg[2]__0_LDC_n_1 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \next_state_reg[2]__0_LDC_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\next_state_reg[2]__0_LDC_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h92)) 
    \next_state_reg[2]__0_LDC_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\next_state_reg[2]__0_LDC_i_2_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_state_reg[2]__0_P 
       (.C(req_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\next_state_reg[2]__0_LDC_i_1_n_1 ),
        .Q(\next_state_reg[2]__0_P_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[0]),
        .Q(reg_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[10]),
        .Q(reg_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[11]),
        .Q(reg_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[12]),
        .Q(reg_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[13]),
        .Q(reg_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[14]),
        .Q(reg_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[15]),
        .Q(reg_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[1]),
        .Q(reg_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[2]),
        .Q(reg_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[3]),
        .Q(reg_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[4]),
        .Q(reg_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[5]),
        .Q(reg_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[6]),
        .Q(reg_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[7]),
        .Q(reg_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[8]),
        .Q(reg_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_a[9]),
        .Q(reg_a[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[0]),
        .Q(reg_b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[10]),
        .Q(reg_b[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[11]),
        .Q(reg_b[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[12]),
        .Q(reg_b[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[13]),
        .Q(reg_b[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[14]),
        .Q(reg_b[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[15]),
        .Q(reg_b[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[1]),
        .Q(reg_b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[2]),
        .Q(reg_b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[3]),
        .Q(reg_b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[4]),
        .Q(reg_b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[5]),
        .Q(reg_b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[6]),
        .Q(reg_b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[7]),
        .Q(reg_b[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[8]),
        .Q(reg_b[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_reg_b[9]),
        .Q(reg_b[9]),
        .R(1'b0));
  BUFG req_IBUF_BUFG_inst
       (.I(req_IBUF),
        .O(req_IBUF_BUFG));
  IBUF req_IBUF_inst
       (.I(req),
        .O(req_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_1 
       (.I0(\next_state_reg[0]__0_LDC_n_1 ),
        .I1(\next_state_reg[0]__0_C_n_1 ),
        .O(next_state[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_1 
       (.I0(\next_state_reg[1]__0_LDC_n_1 ),
        .I1(\next_state_reg[1]__0_P_n_1 ),
        .O(next_state[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_1 
       (.I0(\next_state_reg[2]__0_LDC_n_1 ),
        .I1(\next_state_reg[2]__0_P_n_1 ),
        .O(next_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(state[2]),
        .R(1'b0));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
