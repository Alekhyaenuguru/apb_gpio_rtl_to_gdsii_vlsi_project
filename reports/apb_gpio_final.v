module apb_gpio (PCLK,
    PENABLE,
    PREADY,
    PRESETn,
    PSEL,
    PWRITE,
    PSLVERR,
    PADDR,
    PRDATA,
    PWDATA,
    gpio_in,
    gpio_oe,
    gpio_out);
 input PCLK;
 input PENABLE;
 output PREADY;
 input PRESETn;
 input PSEL;
 input PWRITE;
 output PSLVERR;
 input [7:0] PADDR;
 output [31:0] PRDATA;
 input [31:0] PWDATA;
 input [7:0] gpio_in;
 output [7:0] gpio_oe;
 output [7:0] gpio_out;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire zero_;
 wire clknet_0_PCLK;
 wire clknet_1_0__leaf_PCLK;
 wire clknet_1_1__leaf_PCLK;
 wire [7:0] gpio_data;
 wire [7:0] gpio_dir;

 sky130_fd_sc_hd__fill_8 FILLER_0_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_0_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_77 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_8 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_88 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_91 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_99 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_31 ();
 sky130_fd_sc_hd__fill_4 FILLER_10_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_63 ();
 sky130_fd_sc_hd__fill_4 FILLER_10_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_106 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_33 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_41 ();
 sky130_fd_sc_hd__fill_4 FILLER_11_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_58 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_61 ();
 sky130_fd_sc_hd__fill_4 FILLER_11_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_75 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_86 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_94 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_0 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_113 ();
 sky130_fd_sc_hd__fill_8 FILLER_12_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_12_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_12_39 ();
 sky130_fd_sc_hd__fill_4 FILLER_12_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_12_60 ();
 sky130_fd_sc_hd__fill_8 FILLER_12_68 ();
 sky130_fd_sc_hd__fill_8 FILLER_12_76 ();
 sky130_fd_sc_hd__fill_4 FILLER_12_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_88 ();
 sky130_fd_sc_hd__fill_4 FILLER_12_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_95 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_106 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_16 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_24 ();
 sky130_fd_sc_hd__fill_4 FILLER_13_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_61 ();
 sky130_fd_sc_hd__fill_4 FILLER_13_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_79 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_13_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_99 ();
 sky130_fd_sc_hd__fill_8 FILLER_14_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_14_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_113 ();
 sky130_fd_sc_hd__fill_4 FILLER_14_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_20 ();
 sky130_fd_sc_hd__fill_8 FILLER_14_31 ();
 sky130_fd_sc_hd__fill_4 FILLER_14_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_14_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_89 ();
 sky130_fd_sc_hd__fill_8 FILLER_14_91 ();
 sky130_fd_sc_hd__fill_8 FILLER_14_99 ();
 sky130_fd_sc_hd__fill_8 FILLER_15_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_15_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_16 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_39 ();
 sky130_fd_sc_hd__fill_4 FILLER_15_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_65 ();
 sky130_fd_sc_hd__fill_8 FILLER_15_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_15_87 ();
 sky130_fd_sc_hd__fill_8 FILLER_15_95 ();
 sky130_fd_sc_hd__fill_8 FILLER_16_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_16_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_113 ();
 sky130_fd_sc_hd__fill_8 FILLER_16_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_48 ();
 sky130_fd_sc_hd__fill_8 FILLER_16_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_69 ();
 sky130_fd_sc_hd__fill_4 FILLER_16_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_16_91 ();
 sky130_fd_sc_hd__fill_8 FILLER_16_99 ();
 sky130_fd_sc_hd__fill_8 FILLER_17_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_17_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_113 ();
 sky130_fd_sc_hd__fill_4 FILLER_17_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_71 ();
 sky130_fd_sc_hd__fill_8 FILLER_17_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_17_87 ();
 sky130_fd_sc_hd__fill_8 FILLER_17_95 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_18_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_113 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_18_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_77 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_8 ();
 sky130_fd_sc_hd__fill_4 FILLER_18_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_89 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_91 ();
 sky130_fd_sc_hd__fill_8 FILLER_18_99 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_104 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_112 ();
 sky130_fd_sc_hd__fill_4 FILLER_1_28 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_51 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_88 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_96 ();
 sky130_fd_sc_hd__fill_4 FILLER_2_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_2_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_31 ();
 sky130_fd_sc_hd__fill_4 FILLER_2_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_4 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_6 ();
 sky130_fd_sc_hd__fill_4 FILLER_2_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_68 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_91 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_99 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_18 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_32 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_69 ();
 sky130_fd_sc_hd__fill_4 FILLER_3_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_95 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_26 ();
 sky130_fd_sc_hd__fill_8 FILLER_4_31 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_4 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_43 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_74 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_88 ();
 sky130_fd_sc_hd__fill_8 FILLER_4_91 ();
 sky130_fd_sc_hd__fill_8 FILLER_4_99 ();
 sky130_fd_sc_hd__fill_4 FILLER_5_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_106 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_4 ();
 sky130_fd_sc_hd__fill_4 FILLER_5_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_6 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_85 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_0 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_101 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_106 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_77 ();
 sky130_fd_sc_hd__fill_4 FILLER_6_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_88 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_99 ();
 sky130_fd_sc_hd__fill_4 FILLER_7_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_7_110 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_16 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_24 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_32 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_40 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_48 ();
 sky130_fd_sc_hd__fill_4 FILLER_7_56 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_71 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_95 ();
 sky130_fd_sc_hd__fill_4 FILLER_8_0 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_101 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_106 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_13 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_29 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_4 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_6 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_63 ();
 sky130_fd_sc_hd__fill_4 FILLER_8_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_75 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_82 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_99 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_106 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_9_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_44 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_52 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_61 ();
 sky130_fd_sc_hd__fill_4 FILLER_9_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_73 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_91 ();
 sky130_fd_sc_hd__fill_4 FILLER_9_95 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_0 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_1 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_2 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_3 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_4 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_5 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_6 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_7 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_8 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_10 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_15 ();
 sky130_fd_sc_hd__conb_1 TIE_ZERO (.LO(zero_));
 sky130_fd_sc_hd__nand3_1 _061_ (.A(PSEL),
    .B(PENABLE),
    .C(PWRITE),
    .Y(_053_));
 sky130_fd_sc_hd__buf_2 _062_ (.A(PADDR[2]),
    .X(_054_));
 sky130_fd_sc_hd__nor4_4 _063_ (.A(PADDR[4]),
    .B(PADDR[5]),
    .C(_054_),
    .D(PADDR[3]),
    .Y(_055_));
 sky130_fd_sc_hd__and2b_1 _064_ (.A_N(_053_),
    .B(_055_),
    .X(_056_));
 sky130_fd_sc_hd__buf_6 _065_ (.A(_056_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_4 _066_ (.A0(gpio_data[6]),
    .A1(PWDATA[6]),
    .S(_057_),
    .X(_058_));
 sky130_fd_sc_hd__buf_6 _067_ (.A(_058_),
    .X(_000_));
 sky130_fd_sc_hd__mux2_4 _068_ (.A0(gpio_data[5]),
    .A1(PWDATA[5]),
    .S(_057_),
    .X(_059_));
 sky130_fd_sc_hd__buf_6 _069_ (.A(_059_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_4 _070_ (.A0(gpio_data[4]),
    .A1(PWDATA[4]),
    .S(_057_),
    .X(_060_));
 sky130_fd_sc_hd__buf_6 _071_ (.A(_060_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_4 _072_ (.A0(gpio_data[3]),
    .A1(PWDATA[3]),
    .S(_057_),
    .X(_016_));
 sky130_fd_sc_hd__buf_6 _073_ (.A(_016_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_4 _074_ (.A0(gpio_data[2]),
    .A1(PWDATA[2]),
    .S(_057_),
    .X(_017_));
 sky130_fd_sc_hd__buf_6 _075_ (.A(_017_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_4 _076_ (.A0(gpio_data[1]),
    .A1(PWDATA[1]),
    .S(_057_),
    .X(_018_));
 sky130_fd_sc_hd__buf_6 _077_ (.A(_018_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_4 _078_ (.A0(gpio_data[0]),
    .A1(PWDATA[0]),
    .S(_057_),
    .X(_019_));
 sky130_fd_sc_hd__buf_6 _079_ (.A(_019_),
    .X(_006_));
 sky130_fd_sc_hd__and2_1 _080_ (.A(PSEL),
    .B(PENABLE),
    .X(_020_));
 sky130_fd_sc_hd__buf_2 _081_ (.A(_020_),
    .X(PREADY));
 sky130_fd_sc_hd__nand2b_1 _082_ (.A_N(PWRITE),
    .B(PREADY),
    .Y(_021_));
 sky130_fd_sc_hd__buf_2 _083_ (.A(_021_),
    .X(_022_));
 sky130_fd_sc_hd__buf_2 _084_ (.A(_022_),
    .X(_023_));
 sky130_fd_sc_hd__nor3b_2 _085_ (.A(PADDR[4]),
    .B(PADDR[5]),
    .C_N(PADDR[3]),
    .Y(_024_));
 sky130_fd_sc_hd__nand2_1 _086_ (.A(_054_),
    .B(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__nor2_2 _087_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[30]));
 sky130_fd_sc_hd__nor2_2 _088_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[26]));
 sky130_fd_sc_hd__nor2_2 _089_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[25]));
 sky130_fd_sc_hd__nor2_2 _090_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[24]));
 sky130_fd_sc_hd__nor2_2 _091_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[22]));
 sky130_fd_sc_hd__nor2_2 _092_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[20]));
 sky130_fd_sc_hd__nor2_2 _093_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[14]));
 sky130_fd_sc_hd__nor2_2 _094_ (.A(_023_),
    .B(_025_),
    .Y(PRDATA[11]));
 sky130_fd_sc_hd__nor2_2 _095_ (.A(_022_),
    .B(_025_),
    .Y(PRDATA[8]));
 sky130_fd_sc_hd__nor4b_1 _096_ (.A(PADDR[4]),
    .B(PADDR[5]),
    .C(_054_),
    .D_N(PADDR[3]),
    .Y(_026_));
 sky130_fd_sc_hd__nor4b_4 _097_ (.A(PADDR[4]),
    .B(PADDR[5]),
    .C(PADDR[3]),
    .D_N(_054_),
    .Y(_027_));
 sky130_fd_sc_hd__a222oi_1 _098_ (.A1(gpio_in[7]),
    .A2(_026_),
    .B1(_027_),
    .B2(gpio_dir[7]),
    .C1(gpio_data[7]),
    .C2(_055_),
    .Y(_028_));
 sky130_fd_sc_hd__nor2_2 _099_ (.A(_023_),
    .B(_028_),
    .Y(PRDATA[7]));
 sky130_fd_sc_hd__o21ai_0 _100_ (.A1(gpio_in[6]),
    .A2(_054_),
    .B1(_024_),
    .Y(_029_));
 sky130_fd_sc_hd__a22oi_1 _101_ (.A1(gpio_data[6]),
    .A2(_055_),
    .B1(_027_),
    .B2(gpio_dir[6]),
    .Y(_030_));
 sky130_fd_sc_hd__a21oi_2 _102_ (.A1(_029_),
    .A2(_030_),
    .B1(_022_),
    .Y(PRDATA[6]));
 sky130_fd_sc_hd__a222oi_1 _103_ (.A1(gpio_in[5]),
    .A2(_026_),
    .B1(_027_),
    .B2(gpio_dir[5]),
    .C1(gpio_data[5]),
    .C2(_055_),
    .Y(_031_));
 sky130_fd_sc_hd__nor2_2 _104_ (.A(_023_),
    .B(_031_),
    .Y(PRDATA[5]));
 sky130_fd_sc_hd__nand2_1 _105_ (.A(gpio_dir[4]),
    .B(_027_),
    .Y(_032_));
 sky130_fd_sc_hd__a22oi_1 _106_ (.A1(gpio_data[4]),
    .A2(_055_),
    .B1(_026_),
    .B2(gpio_in[4]),
    .Y(_033_));
 sky130_fd_sc_hd__a21oi_2 _107_ (.A1(_032_),
    .A2(_033_),
    .B1(_022_),
    .Y(PRDATA[4]));
 sky130_fd_sc_hd__o21ai_0 _108_ (.A1(gpio_in[3]),
    .A2(_054_),
    .B1(_024_),
    .Y(_034_));
 sky130_fd_sc_hd__a22oi_1 _109_ (.A1(gpio_data[3]),
    .A2(_055_),
    .B1(_027_),
    .B2(gpio_dir[3]),
    .Y(_035_));
 sky130_fd_sc_hd__a21oi_2 _110_ (.A1(_034_),
    .A2(_035_),
    .B1(_022_),
    .Y(PRDATA[3]));
 sky130_fd_sc_hd__o21ai_0 _111_ (.A1(gpio_in[2]),
    .A2(_054_),
    .B1(_024_),
    .Y(_036_));
 sky130_fd_sc_hd__a22oi_1 _112_ (.A1(gpio_data[2]),
    .A2(_055_),
    .B1(_027_),
    .B2(gpio_dir[2]),
    .Y(_037_));
 sky130_fd_sc_hd__a21oi_2 _113_ (.A1(_036_),
    .A2(_037_),
    .B1(_022_),
    .Y(PRDATA[2]));
 sky130_fd_sc_hd__o21ai_0 _114_ (.A1(gpio_in[1]),
    .A2(_054_),
    .B1(_024_),
    .Y(_038_));
 sky130_fd_sc_hd__a22oi_1 _115_ (.A1(gpio_data[1]),
    .A2(_055_),
    .B1(_027_),
    .B2(gpio_dir[1]),
    .Y(_039_));
 sky130_fd_sc_hd__a21oi_2 _116_ (.A1(_038_),
    .A2(_039_),
    .B1(_022_),
    .Y(PRDATA[1]));
 sky130_fd_sc_hd__o21ai_0 _117_ (.A1(gpio_in[0]),
    .A2(_054_),
    .B1(_024_),
    .Y(_040_));
 sky130_fd_sc_hd__a22oi_1 _118_ (.A1(gpio_data[0]),
    .A2(_055_),
    .B1(_027_),
    .B2(gpio_dir[0]),
    .Y(_041_));
 sky130_fd_sc_hd__a21oi_2 _119_ (.A1(_040_),
    .A2(_041_),
    .B1(_022_),
    .Y(PRDATA[0]));
 sky130_fd_sc_hd__nor2b_1 _120_ (.A(_053_),
    .B_N(_027_),
    .Y(_042_));
 sky130_fd_sc_hd__buf_4 _121_ (.A(_042_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _122_ (.A0(gpio_dir[6]),
    .A1(PWDATA[6]),
    .S(_043_),
    .X(_044_));
 sky130_fd_sc_hd__buf_4 _123_ (.A(_044_),
    .X(_007_));
 sky130_fd_sc_hd__mux2_1 _124_ (.A0(gpio_dir[5]),
    .A1(PWDATA[5]),
    .S(_043_),
    .X(_045_));
 sky130_fd_sc_hd__buf_4 _125_ (.A(_045_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _126_ (.A0(gpio_dir[4]),
    .A1(PWDATA[4]),
    .S(_043_),
    .X(_046_));
 sky130_fd_sc_hd__buf_4 _127_ (.A(_046_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _128_ (.A0(gpio_dir[3]),
    .A1(PWDATA[3]),
    .S(_043_),
    .X(_047_));
 sky130_fd_sc_hd__buf_4 _129_ (.A(_047_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _130_ (.A0(gpio_dir[2]),
    .A1(PWDATA[2]),
    .S(_043_),
    .X(_048_));
 sky130_fd_sc_hd__buf_4 _131_ (.A(_048_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _132_ (.A0(gpio_dir[1]),
    .A1(PWDATA[1]),
    .S(_043_),
    .X(_049_));
 sky130_fd_sc_hd__buf_4 _133_ (.A(_049_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _134_ (.A0(gpio_dir[0]),
    .A1(PWDATA[0]),
    .S(_043_),
    .X(_050_));
 sky130_fd_sc_hd__buf_4 _135_ (.A(_050_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _136_ (.A0(gpio_dir[7]),
    .A1(PWDATA[7]),
    .S(_043_),
    .X(_051_));
 sky130_fd_sc_hd__buf_4 _137_ (.A(_051_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_4 _138_ (.A0(gpio_data[7]),
    .A1(PWDATA[7]),
    .S(_057_),
    .X(_052_));
 sky130_fd_sc_hd__buf_6 _139_ (.A(_052_),
    .X(_015_));
 sky130_fd_sc_hd__dfrtp_1 _140_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_013_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[0]));
 sky130_fd_sc_hd__dfrtp_1 _141_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_012_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[1]));
 sky130_fd_sc_hd__dfrtp_1 _142_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_011_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[2]));
 sky130_fd_sc_hd__dfrtp_1 _143_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_010_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[3]));
 sky130_fd_sc_hd__dfrtp_1 _144_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_009_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[4]));
 sky130_fd_sc_hd__dfrtp_1 _145_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_008_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[5]));
 sky130_fd_sc_hd__dfrtp_1 _146_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_007_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[6]));
 sky130_fd_sc_hd__dfrtp_1 _147_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_014_),
    .RESET_B(PRESETn),
    .Q(gpio_dir[7]));
 sky130_fd_sc_hd__dfrtp_1 _148_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_006_),
    .RESET_B(PRESETn),
    .Q(gpio_data[0]));
 sky130_fd_sc_hd__dfrtp_1 _149_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_005_),
    .RESET_B(PRESETn),
    .Q(gpio_data[1]));
 sky130_fd_sc_hd__dfrtp_1 _150_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_004_),
    .RESET_B(PRESETn),
    .Q(gpio_data[2]));
 sky130_fd_sc_hd__dfrtp_1 _151_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_003_),
    .RESET_B(PRESETn),
    .Q(gpio_data[3]));
 sky130_fd_sc_hd__dfrtp_1 _152_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_002_),
    .RESET_B(PRESETn),
    .Q(gpio_data[4]));
 sky130_fd_sc_hd__dfrtp_1 _153_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_001_),
    .RESET_B(PRESETn),
    .Q(gpio_data[5]));
 sky130_fd_sc_hd__dfrtp_1 _154_ (.CLK(clknet_1_0__leaf_PCLK),
    .D(_000_),
    .RESET_B(PRESETn),
    .Q(gpio_data[6]));
 sky130_fd_sc_hd__dfrtp_1 _155_ (.CLK(clknet_1_1__leaf_PCLK),
    .D(_015_),
    .RESET_B(PRESETn),
    .Q(gpio_data[7]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_PCLK (.A(PCLK),
    .X(clknet_0_PCLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_PCLK (.A(clknet_0_PCLK),
    .X(clknet_1_0__leaf_PCLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_PCLK (.A(clknet_0_PCLK),
    .X(clknet_1_1__leaf_PCLK));
 assign gpio_out[0] = gpio_data[0];
 assign gpio_out[1] = gpio_data[1];
 assign gpio_out[2] = gpio_data[2];
 assign gpio_out[3] = gpio_data[3];
 assign gpio_out[4] = gpio_data[4];
 assign gpio_out[5] = gpio_data[5];
 assign gpio_out[6] = gpio_data[6];
 assign gpio_out[7] = gpio_data[7];
 assign gpio_oe[0] = gpio_dir[0];
 assign gpio_oe[1] = gpio_dir[1];
 assign gpio_oe[2] = gpio_dir[2];
 assign gpio_oe[3] = gpio_dir[3];
 assign gpio_oe[4] = gpio_dir[4];
 assign gpio_oe[5] = gpio_dir[5];
 assign gpio_oe[6] = gpio_dir[6];
 assign gpio_oe[7] = gpio_dir[7];
 assign PRDATA[10] = zero_;
 assign PRDATA[12] = zero_;
 assign PRDATA[13] = zero_;
 assign PRDATA[15] = zero_;
 assign PRDATA[16] = zero_;
 assign PRDATA[17] = zero_;
 assign PRDATA[18] = zero_;
 assign PRDATA[19] = zero_;
 assign PRDATA[21] = zero_;
 assign PRDATA[23] = zero_;
 assign PRDATA[27] = zero_;
 assign PRDATA[28] = zero_;
 assign PRDATA[29] = zero_;
 assign PRDATA[31] = zero_;
 assign PRDATA[9] = zero_;
 assign PSLVERR = zero_;
endmodule
