module ripple_counter (clk,
    reset,
    VPWR,
    VGND,
    q);
 input clk;
 input reset;
 input VPWR;
 input VGND;
 output [1:0] q;

 sky130_fd_sc_hd__inv_2 _4_ (.A(net1),
    .Y(_2_));
 sky130_fd_sc_hd__inv_2 _5_ (.A(net2),
    .Y(_0_));
 sky130_fd_sc_hd__a2bb2o_1 _6_ (.A1_N(_0_),
    .A2_N(net3),
    .B1(_0_),
    .B2(net3),
    .X(_1_));
 sky130_fd_sc_hd__clkbuf_1 _7_ (.A(_2_),
    .X(_3_));
 sky130_fd_sc_hd__dfrtp_1 _8_ (.D(_0_),
    .Q(net2),
    .RESET_B(_2_),
    .CLK(clknet_1_1_1_clk));
 sky130_fd_sc_hd__dfrtp_1 _9_ (.D(_1_),
    .Q(net3),
    .RESET_B(_3_),
    .CLK(clknet_1_0_1_clk));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_51 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(reset),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 output2 (.A(net2),
    .X(q[0]));
 sky130_fd_sc_hd__clkbuf_2 output3 (.A(net3),
    .X(q[1]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_0_0_clk (.A(clknet_0_clk),
    .X(clknet_1_0_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_0_1_clk (.A(clknet_1_0_0_clk),
    .X(clknet_1_0_1_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_1_0_clk (.A(clknet_0_clk),
    .X(clknet_1_1_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_1_1_clk (.A(clknet_1_1_0_clk),
    .X(clknet_1_1_1_clk));
 sky130_fd_sc_hd__decap_12 FILLER_0_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_54 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_59 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_100 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_51 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_70 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_75 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_54 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_72 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_102 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_51 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_51 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_66 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_88 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_97 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_54 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_78 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_51 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_58 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_70 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_97 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_54 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_78 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_51 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_58 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_70 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_102 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_54 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_78 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_51 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_58 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_70 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_102 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_54 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_78 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_7 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_12 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_28 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_54 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_59 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_94 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_99 ();
endmodule
