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
endmodule
