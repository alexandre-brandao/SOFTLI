# File saved with Nlview 6.8.11  2018-08-07 bk=1.4403 VDI=40 GEI=35 GUI=JA:9.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #000000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffff
property fillcolor2 #ffffff
property fillcolor3 #ffffff
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #000000
property objecthighlight0 #ff00ff
property objecthighlight1 #ff9933
property objecthighlight2 #00ff00
property objecthighlight3 #ff9494
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #990099
property objecthighlight10 #caf577
property objecthighlight11 #edde31
property objecthighlight12 #56f09f
property objecthighlight13 #ff2a7c
property objecthighlight14 #985ffb
property objecthighlight15 #c1881e
property objecthighlight16 #fac4df
property objecthighlight17 #adf7f7
property objecthighlight18 #fb24ad
property objecthighlight19 #b8a96b
property overlapcolor #000000
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new tdc work:tdc:NOFILE -nosplit
load symbol IBUF {hdi_primitives:netlist:no file specified} HIERBOX pin O output.right pin I input.left fillcolor 2
load symbol RTL_AND workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol coarse_cnt work:coarse_cnt:NOFILE HIERBOX pin clk_i input.left pin cnt_en_i input.left pin nrst_i input.left pinBus coarse_cnt_o output.right [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol error work:error:NOFILE HIERBOX pin max_cnt_o output.right pinBus coarse_cnt_i input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_3 work GEN pin C input.clk.left pin CE input.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol merge work:merge:NOFILE HIERBOX pin clk_i input.left pin en_merge_i input.left pin eom_o output.right pin nrst_i input.left pinBus coarse_cnt_i input.left [9:0] pinBus fine_start_i input.left [6:0] pinBus fine_stop_i input.left [6:0] pinBus tdc_measure_o output.right [20:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol synchronizer work:synchronizer:NOFILE HIERBOX pin cnt_en_o output.right pin eom_i input.left pin start_en_o output.right pin stop_en_o output.right pinBus sync_signals_i input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol t2b_decoder work:t2b_decoder:NOFILE HIERBOX pinBus binary_start_i output.right [6:0] pinBus binary_stop_i output.right [6:0] pinBus thermometer_start_i input.left [69:0] pinBus thermometer_stop_i input.left [69:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_OR0 workI0 OR pin I0 input.neg pin I1 input pin O output fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol tdl work:tdl:NOFILE HIERBOX pin clk_i input.left pin hit_i input.left pin store_start_i input.left pin store_stop_i input.left pinBus thermometer_sample_stage_o output.right [1:0] pinBus thermometer_start_val_o output.right [69:0] pinBus thermometer_stop_val_o output.right [69:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ADD61 work RTL(+) pin I1 input.left pinBus I0 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_ADD62 work RTL(+) pin I1 input.left pinBus I0 input.left [5:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_ADD63 work RTL(+) pin I1 input.left pinBus I0 input.left [4:0] pinBus O output.right [5:0] fillcolor 1
load symbol RTL_ADD64 work RTL(+) pin I1 input.left pinBus I0 input.left [3:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_ADD65 work RTL(+) pin I1 input.left pinBus I0 input.left [2:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_ADD66 work RTL(+) pin I1 input.left pinBus I0 input.left [1:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_ADD67 work RTL(+) pin I0 input.left pin I1 input.left pinBus O output.right [1:0] fillcolor 1
load symbol RTL_ADD136 work RTL(+) pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_INV work INV pin I0 input pinBus O output [6:0] fillcolor 1
load port nrst_i input -pg 1 -y 280
load port start_i input -pg 1 -y 90
load port en_tdc_i input -pg 1 -y 110
load port stop_i input -pg 1 -y 380
load port wr_en_o output -pg 1 -y 100
load port clk_i input -pg 1 -y 180
load portBus measurement_o output [20:0] -attr @name measurement_o[20:0] -pg 1 -y 120
load inst t2b_inst t2b_decoder work:t2b_decoder:NOFILE -fold -autohide -attr @cell(#000000) t2b_decoder -attr @fillcolor #ffffff -pinBusAttr binary_start_i @name binary_start_i[6:0] -pinBusAttr binary_stop_i @name binary_stop_i[6:0] -pinBusAttr thermometer_start_i @name thermometer_start_i[69:0] -pinBusAttr thermometer_stop_i @name thermometer_stop_i[69:0] -pg 1 -lvl 7 -y 110
load inst t2b_inst|binary_start_i25_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i25_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 45 -y 164
load inst t2b_inst|binary_stop_i25_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i25_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 45 -y 494
load inst t2b_inst|binary_stop_i13_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i13_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 57 -y 504
load inst t2b_inst|binary_start_i27_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i27_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 43 -y 164
load inst t2b_inst|binary_stop_i18_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i18_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 52 -y 504
load inst t2b_inst|binary_stop_i24_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i24_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 46 -y 574
load inst t2b_inst|binary_stop_i30_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i30_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 40 -y 544
load inst t2b_inst|binary_stop_i67_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i67_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 3 -y 334
load inst t2b_inst|binary_start_i49_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i49_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 21 -y 164
load inst t2b_inst|binary_stop_i46_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i46_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 24 -y 364
load inst t2b_inst|binary_stop_i14_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i14_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 56 -y 504
load inst tdl_inst tdl work:tdl:NOFILE -autohide -attr @cell(#000000) tdl -pinBusAttr thermometer_sample_stage_o @name thermometer_sample_stage_o[1:0] -pinBusAttr thermometer_start_val_o @name thermometer_start_val_o[69:0] -pinBusAttr thermometer_stop_val_o @name thermometer_stop_val_o[69:0] -pg 1 -lvl 6 -y 90
load inst t2b_inst|binary_start_i18_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i18_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 52 -y 164
load inst t2b_inst|binary_stop_i8_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i8_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 62 -y 584
load inst t2b_inst|binary_stop_i51_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i51_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 19 -y 334
load inst t2b_inst|binary_start_i40_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i40_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 30 -y 164
load inst t2b_inst|binary_stop_i39_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i39_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 31 -y 504
load inst t2b_inst|binary_start_i47_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i47_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 23 -y 164
load inst t2b_inst|binary_start_i14_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i14_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 56 -y 164
load inst coarse_cnt_inst coarse_cnt work:coarse_cnt:NOFILE -autohide -attr @cell(#000000) coarse_cnt -pinBusAttr coarse_cnt_o @name coarse_cnt_o[9:0] -pg 1 -lvl 2 -y 230
load inst t2b_inst|binary_stop_i10_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i10_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 60 -y 504
load inst t2b_inst|binary_stop_i1_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i1_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 69 -y 624
load inst t2b_inst|binary_stop_i43_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i43_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 27 -y 394
load inst t2b_inst|binary_stop_i58_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i58_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 12 -y 364
load inst t2b_inst|binary_start_i62_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i62_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 8 -y 164
load inst t2b_inst|binary_stop_i63_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i63_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 7 -y 344
load inst t2b_inst|binary_start_i54_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i54_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 16 -y 164
load inst t2b_inst|binary_stop_i21_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i21_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 49 -y 504
load inst t2b_inst|binary_stop_i50_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i50_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 20 -y 414
load inst t2b_inst|binary_stop_i64_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i64_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 6 -y 334
load inst t2b_inst|binary_stop_i40_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i40_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 30 -y 414
load inst t2b_inst|binary_stop_i6_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i6_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 64 -y 504
load inst t2b_inst|binary_stop_i16_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i16_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 54 -y 584
load inst t2b_inst|binary_stop_i66_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i66_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 4 -y 254
load inst t2b_inst|binary_start_i39_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i39_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 31 -y 164
load inst t2b_inst|binary_stop_i31_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i31_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 39 -y 544
load inst t2b_inst|binary_stop_i11_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i11_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 59 -y 504
load inst t2b_inst|binary_stop_i10_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i10_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 60 -y 584
load inst t2b_inst|binary_stop_i54_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i54_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 16 -y 314
load inst t2b_inst|binary_start_i17_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i17_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 53 -y 164
load inst cnt_nrst_w_i RTL_AND workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 330
load inst t2b_inst|binary_start_i22_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i22_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 48 -y 164
load inst t2b_inst|binary_stop_i6_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i6_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 64 -y 584
load inst t2b_inst|binary_stop_i50_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i50_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 20 -y 334
load inst t2b_inst|binary_stop_i33_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i33_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 37 -y 454
load inst t2b_inst|binary_start_i6_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i6_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 64 -y 164
load inst t2b_inst|binary_stop_i41_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i41_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 29 -y 404
load inst t2b_inst|binary_start_i56_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i56_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 14 -y 164
load inst t2b_inst|binary_stop_i16_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i16_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 54 -y 504
load inst t2b_inst|binary_stop_i34_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i34_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 36 -y 534
load inst t2b_inst|binary_start_i60_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i60_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 10 -y 164
load inst tdc_rst_w_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 4 -y 270
load inst t2b_inst|binary_stop_i5_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i5_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 65 -y 584
load inst t2b_inst|binary_stop_i37_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i37_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 33 -y 514
load inst synchronizer_inst synchronizer work:synchronizer:NOFILE -autohide -attr @cell(#000000) synchronizer -pinBusAttr sync_signals_i @name sync_signals_i[1:0] -pg 1 -lvl 7 -y 230
load inst t2b_inst|binary_start_i33_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i33_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 37 -y 164
load inst t2b_inst|binary_stop_i46_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i46_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 24 -y 444
load inst t2b_inst|binary_stop_i1_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i1_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 69 -y 544
load inst t2b_inst|binary_stop_i47_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i47_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 23 -y 364
load inst t2b_inst|binary_stop_i15_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i15_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 55 -y 504
load inst t2b_inst|binary_stop_i38_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i38_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 32 -y 504
load inst t2b_inst|binary_stop_i31_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i31_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 39 -y 464
load inst t2b_inst|binary_stop_i4_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i4_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 66 -y 584
load inst clk_i_IBUF_inst IBUF {hdi_primitives:netlist:no file specified} -autohide -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 170
load inst t2b_inst|binary_stop_i45_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i45_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 25 -y 374
load inst t2b_inst|binary_start_i59_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i59_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 11 -y 164
load inst t2b_inst|binary_stop_i2_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i2_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 68 -y 504
load inst t2b_inst|binary_stop_i68_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i68_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -y 254
load inst t2b_inst|binary_stop_i65_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i65_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 5 -y 334
load inst t2b_inst|binary_start_i44_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i44_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 26 -y 164
load inst t2b_inst|binary_start_i8_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i8_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 62 -y 164
load inst t2b_inst|binary_stop_i52_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i52_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 18 -y 324
load inst t2b_inst|binary_stop_i56_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i56_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 14 -y 374
load inst t2b_inst|binary_start_i20_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i20_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 50 -y 164
load inst t2b_inst|binary_stop_i27_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i27_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 43 -y 564
load inst t2b_inst|binary_start_i61_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i61_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 9 -y 164
load inst t2b_inst|binary_stop_i35_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i35_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 35 -y 454
load inst t2b_inst|binary_start_i53_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i53_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 17 -y 164
load inst t2b_inst|binary_start_i13_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i13_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 57 -y 164
load inst t2b_inst|binary_stop_i21_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i21_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 49 -y 584
load inst t2b_inst|binary_stop_i36_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i36_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 34 -y 524
load inst t2b_inst|binary_stop_i69_i RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i69_i -pinBusAttr O @name O[6:0] -pg 1 -lvl 1 -y 224
load inst t2b_inst|binary_start_i3_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i3_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 67 -y 164
load inst t2b_inst|binary_start_i50_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i50_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 20 -y 164
load inst t2b_inst|binary_stop_i7_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i7_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 63 -y 504
load inst t2b_inst|binary_start_i58_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i58_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 12 -y 164
load inst t2b_inst|binary_stop_i11_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i11_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 59 -y 584
load inst t2b_inst|binary_start_i10_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i10_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 60 -y 164
load inst t2b_inst|binary_stop_i3_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i3_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 67 -y 504
load inst t2b_inst|binary_stop_i38_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i38_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 32 -y 424
load inst t2b_inst|binary_start_i26_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i26_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 44 -y 164
load inst t2b_inst|binary_stop_i0_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i0_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 70 -y 614
load inst t2b_inst|binary_start_i41_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i41_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 29 -y 164
load inst t2b_inst|binary_stop_i17_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i17_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 53 -y 504
load inst t2b_inst|binary_stop_i62_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i62_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 8 -y 264
load inst t2b_inst|binary_start_i35_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i35_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 35 -y 164
load inst t2b_inst|binary_start_i57_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i57_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 13 -y 164
load inst t2b_inst|binary_stop_i45_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i45_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 25 -y 454
load inst t2b_inst|binary_start_i68_i RTL_ADD67 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i68_i -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -y 164
load inst t2b_inst|binary_stop_i24_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i24_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 46 -y 494
load inst t2b_inst|binary_stop_i12_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i12_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 58 -y 584
load inst t2b_inst|binary_stop_i30_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i30_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 40 -y 464
load inst t2b_inst|binary_stop_i68_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i68_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 2 -y 334
load inst t2b_inst|binary_stop_i48_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i48_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 22 -y 354
load inst t2b_inst|binary_stop_i44_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i44_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 26 -y 464
load inst t2b_inst|binary_stop_i43_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i43_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 27 -y 474
load inst t2b_inst|binary_stop_i53_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i53_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 17 -y 394
load inst t2b_inst|binary_start_i0_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i0_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 70 -y 154
load inst t2b_inst|binary_stop_i2_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i2_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 68 -y 584
load inst t2b_inst|binary_stop_i25_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i25_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 45 -y 574
load inst t2b_inst|binary_start_i51_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i51_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 19 -y 164
load inst t2b_inst|binary_stop_i44_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i44_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 26 -y 384
load inst t2b_inst|binary_stop_i14_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i14_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 56 -y 584
load inst t2b_inst|binary_stop_i51_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i51_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 19 -y 414
load inst t2b_inst|binary_start_i42_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i42_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 28 -y 164
load inst t2b_inst|binary_start_i30_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i30_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 40 -y 164
load inst t2b_inst|binary_stop_i61_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i61_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 9 -y 354
load inst t2b_inst|binary_start_i29_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i29_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 41 -y 164
load inst t2b_inst|binary_stop_i5_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i5_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 65 -y 504
load inst t2b_inst|binary_start_i11_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i11_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 59 -y 164
load inst t2b_inst|binary_stop_i37_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i37_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 33 -y 434
load inst t2b_inst|binary_stop_i32_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i32_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 38 -y 454
load inst t2b_inst|binary_stop_i65_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i65_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 5 -y 254
load inst t2b_inst|binary_start_i1_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i1_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 69 -y 164
load inst t2b_inst|binary_start_i38_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i38_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 32 -y 164
load inst error_inst error work:error:NOFILE -autohide -attr @cell(#000000) error -pinBusAttr coarse_cnt_i @name coarse_cnt_i[3:0] -pg 1 -lvl 3 -y 270
load inst t2b_inst|binary_stop_i47_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i47_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 23 -y 444
load inst t2b_inst|binary_start_i24_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i24_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 46 -y 164
load inst t2b_inst|binary_stop_i18_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i18_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 52 -y 584
load inst t2b_inst|binary_stop_i3_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i3_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 67 -y 584
load inst t2b_inst|binary_stop_i53_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i53_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 17 -y 314
load inst t2b_inst|binary_start_i63_i RTL_ADD62 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i63_i -pinBusAttr I0 @name I0[5:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 7 -y 164
load inst t2b_inst|binary_stop_i60_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i60_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 10 -y 274
load inst t2b_inst|binary_start_i15_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i15_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 55 -y 164
load inst t2b_inst|binary_stop_i36_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i36_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 34 -y 444
load inst t2b_inst|binary_stop_i29_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i29_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 41 -y 554
load inst t2b_inst|binary_start_i12_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i12_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 58 -y 164
load inst t2b_inst|binary_stop_i57_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i57_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 13 -y 374
load inst t2b_inst|binary_start_i2_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i2_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 68 -y 164
load inst t2b_inst|binary_stop_i32_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i32_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 38 -y 534
load inst t2b_inst|binary_stop_i12_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i12_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 58 -y 504
load inst t2b_inst|binary_start_i5_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i5_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 65 -y 164
load inst t2b_inst|binary_stop_i35_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i35_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 35 -y 534
load inst t2b_inst|binary_stop_i26_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i26_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 44 -y 484
load inst t2b_inst|binary_start_i37_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i37_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 33 -y 164
load inst t2b_inst|binary_stop_i13_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i13_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 57 -y 584
load inst t2b_inst|binary_start_i48_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i48_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 22 -y 164
load inst t2b_inst|binary_stop_i58_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i58_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 12 -y 284
load inst t2b_inst|binary_start_i9_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i9_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 61 -y 164
load inst t2b_inst|binary_stop_i42_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i42_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 28 -y 394
load inst t2b_inst|binary_stop_i23_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i23_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 47 -y 584
load inst t2b_inst|binary_stop_i40_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i40_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 30 -y 494
load inst t2b_inst|binary_start_i36_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i36_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 34 -y 164
load inst t2b_inst|binary_stop_i56_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i56_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 14 -y 294
load inst merge_inst merge work:merge:NOFILE -autohide -attr @cell(#000000) merge -pinBusAttr coarse_cnt_i @name coarse_cnt_i[9:0] -pinBusAttr fine_start_i @name fine_start_i[6:0] -pinBusAttr fine_stop_i @name fine_stop_i[6:0] -pinBusAttr tdc_measure_o @name tdc_measure_o[20:0] -pg 1 -lvl 8 -y 50
load inst t2b_inst|binary_stop_i20_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i20_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 50 -y 584
load inst t2b_inst|binary_stop_i29_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i29_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 41 -y 474
load inst t2b_inst|binary_stop_i9_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i9_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 61 -y 584
load inst t2b_inst|binary_stop_i52_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i52_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 18 -y 404
load inst t2b_inst|binary_stop_i69_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i69_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 1 -y 294
load inst t2b_inst|binary_start_i43_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i43_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 27 -y 164
load inst t2b_inst|binary_stop_i17_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i17_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 53 -y 584
load inst t2b_inst|binary_stop_i63_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i63_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 7 -y 264
load inst t2b_inst|binary_stop_i54_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i54_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 16 -y 394
load inst t2b_inst|binary_stop_i20_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i20_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 50 -y 504
load inst t2b_inst|binary_stop_i28_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i28_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 42 -y 554
load inst t2b_inst|binary_stop_i26_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i26_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 44 -y 564
load inst t2b_inst|binary_start_i16_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i16_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 54 -y 164
load inst t2b_inst|binary_stop_i34_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i34_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 36 -y 454
load inst t2b_inst|binary_stop_i55_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i55_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 15 -y 304
load inst t2b_inst|binary_start_i21_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i21_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 49 -y 164
load inst t2b_inst|binary_start_i66_i RTL_ADD65 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i66_i -pinBusAttr I0 @name I0[2:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 4 -y 164
load inst hit_r_reg RTL_REG_ASYNC__BREG_3 work -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 5 -y 110
load inst t2b_inst|binary_start_i4_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i4_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 66 -y 164
load inst t2b_inst|binary_stop_i19_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i19_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 51 -y 584
load inst t2b_inst|binary_stop_i8_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i8_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 62 -y 504
load inst t2b_inst|binary_start_i64_i RTL_ADD63 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i64_i -pinBusAttr I0 @name I0[4:0] -pinBusAttr O @name O[5:0] -pg 1 -lvl 6 -y 164
load inst t2b_inst|binary_stop_i28_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i28_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 42 -y 474
load inst t2b_inst|binary_stop_i23_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i23_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 47 -y 504
load inst t2b_inst|binary_stop_i22_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i22_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 48 -y 584
load inst t2b_inst|binary_stop_i4_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i4_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 66 -y 504
load inst t2b_inst|binary_stop_i67_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i67_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 3 -y 254
load inst t2b_inst|binary_start_i46_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i46_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 24 -y 164
load inst t2b_inst|binary_stop_i48_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i48_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 22 -y 434
load inst t2b_inst|binary_stop_i61_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i61_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 9 -y 274
load inst t2b_inst|binary_start_i34_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i34_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 36 -y 164
load inst t2b_inst|binary_stop_i27_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i27_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 43 -y 484
load inst t2b_inst|binary_stop_i55_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i55_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 15 -y 384
load inst t2b_inst|binary_start_i55_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i55_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 15 -y 164
load inst t2b_inst|binary_stop_i22_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i22_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 48 -y 504
load inst t2b_inst|binary_start_i45_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i45_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 25 -y 164
load inst t2b_inst|binary_start_i7_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i7_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 63 -y 164
load inst t2b_inst|binary_stop_i60_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i60_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 10 -y 354
load inst t2b_inst|binary_start_i28_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i28_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 42 -y 164
load inst t2b_inst|binary_stop_i19_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i19_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 51 -y 504
load inst t2b_inst|binary_stop_i9_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i9_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 61 -y 504
load inst t2b_inst|binary_stop_i41_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i41_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 29 -y 484
load inst t2b_inst|binary_start_i52_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i52_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 18 -y 164
load inst t2b_inst|binary_stop_i42_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i42_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 28 -y 474
load inst t2b_inst|binary_stop_i66_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i66_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 4 -y 334
load inst t2b_inst|binary_start_i67_i RTL_ADD66 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i67_i -pinBusAttr I0 @name I0[1:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 3 -y 164
load inst t2b_inst|binary_start_i31_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i31_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 39 -y 164
load inst t2b_inst|binary_stop_i49_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i49_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 21 -y 344
load inst t2b_inst|binary_start_i19_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i19_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 51 -y 164
load inst t2b_inst|binary_stop_i57_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i57_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 13 -y 294
load inst t2b_inst|binary_stop_i7_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i7_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 63 -y 584
load inst t2b_inst|binary_stop_i64_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i64_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 6 -y 254
load inst t2b_inst|binary_start_i23_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i23_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 47 -y 164
load inst tdc_rst_w0_i RTL_OR0 workI0 -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -y 370
load inst t2b_inst|binary_stop_i59_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i59_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 11 -y 284
load inst t2b_inst|binary_stop_i15_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i15_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 55 -y 584
load inst t2b_inst|binary_stop_i49_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i49_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 21 -y 424
load inst t2b_inst|binary_start_i32_i RTL_ADD61 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i32_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 38 -y 164
load inst t2b_inst|binary_stop_i33_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i33_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 37 -y 534
load inst t2b_inst|binary_stop_i62_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i62_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 8 -y 344
load inst t2b_inst|binary_start_i65_i RTL_ADD64 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_start_i65_i -pinBusAttr I0 @name I0[3:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 5 -y 164
load inst t2b_inst|binary_stop_i59_i__0 RTL_INV work -hier t2b_inst -attr @cell(#000000) RTL_INV -attr @name binary_stop_i59_i__0 -pinBusAttr O @name O[6:0] -pg 1 -lvl 11 -y 364
load inst t2b_inst|binary_stop_i39_i RTL_ADD136 work -hier t2b_inst -attr @cell(#000000) RTL_ADD -attr @name binary_stop_i39_i -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr O @name O[6:0] -pg 1 -lvl 31 -y 424
load net t2b_inst|binary_stop_i1_i_n_2 -attr @rip O[4] -attr @name binary_stop_i1_i_n_2 -pin t2b_inst|binary_stop_i0_i I0[4] -pin t2b_inst|binary_stop_i1_i O[4]
load net t2b_inst|binary_stop_i1_i_n_3 -attr @rip O[3] -attr @name binary_stop_i1_i_n_3 -pin t2b_inst|binary_stop_i0_i I0[3] -pin t2b_inst|binary_stop_i1_i O[3]
load net t2b_inst|binary_start_i57[5] -attr @rip O[5] -attr @name binary_start_i57[5] -pin t2b_inst|binary_start_i56_i I0[5] -pin t2b_inst|binary_start_i57_i O[5]
load net t2b_inst|binary_stop_i1_i_n_4 -attr @rip O[2] -attr @name binary_stop_i1_i_n_4 -pin t2b_inst|binary_stop_i0_i I0[2] -pin t2b_inst|binary_stop_i1_i O[2]
load net t2b_inst|binary_start_i3[3] -attr @rip O[3] -attr @name binary_start_i3[3] -pin t2b_inst|binary_start_i2_i I0[3] -pin t2b_inst|binary_start_i3_i O[3]
load net t2b_inst|thermometer_start_i[67] -attr @rip thermometer_start_i[67] -attr @name thermometer_start_i[67] -hierPin t2b_inst thermometer_start_i[67] -pin t2b_inst|binary_start_i2_i I1
load net t2b_inst|thermometer_start_i[6] -attr @rip thermometer_start_i[6] -attr @name thermometer_start_i[6] -hierPin t2b_inst thermometer_start_i[6] -pin t2b_inst|binary_start_i63_i I1
load net t2b_inst|binary_stop_i1_i_n_5 -attr @rip O[1] -attr @name binary_stop_i1_i_n_5 -pin t2b_inst|binary_stop_i0_i I0[1] -pin t2b_inst|binary_stop_i1_i O[1]
load net t2b_inst|binary_start_i46[5] -attr @rip O[5] -attr @name binary_start_i46[5] -pin t2b_inst|binary_start_i45_i I0[5] -pin t2b_inst|binary_start_i46_i O[5]
load net t2b_inst|binary_stop_i1_i_n_6 -attr @rip O[0] -attr @name binary_stop_i1_i_n_6 -pin t2b_inst|binary_stop_i0_i I0[0] -pin t2b_inst|binary_stop_i1_i O[0]
load net t2b_inst|binary_stop_i20_i_n_0 -attr @rip O[6] -attr @name binary_stop_i20_i_n_0 -pin t2b_inst|binary_stop_i19_i I0[6] -pin t2b_inst|binary_stop_i20_i O[6]
load net t2b_inst|binary_stop_i[6] -attr @rip O[6] -attr @name binary_stop_i[6] -hierPin t2b_inst binary_stop_i[6] -pin t2b_inst|binary_stop_i0_i O[6]
load net t2b_inst|binary_stop_i20_i_n_1 -attr @rip O[5] -attr @name binary_stop_i20_i_n_1 -pin t2b_inst|binary_stop_i19_i I0[5] -pin t2b_inst|binary_stop_i20_i O[5]
load net t2b_inst|binary_stop_i44[3] -attr @rip O[3] -attr @name binary_stop_i44[3] -pin t2b_inst|binary_stop_i43_i I1[3] -pin t2b_inst|binary_stop_i44_i__0 O[3]
load net t2b_inst|binary_start_i21[5] -attr @rip O[5] -attr @name binary_start_i21[5] -pin t2b_inst|binary_start_i20_i I0[5] -pin t2b_inst|binary_start_i21_i O[5]
load net t2b_inst|binary_stop_i20_i_n_2 -attr @rip O[4] -attr @name binary_stop_i20_i_n_2 -pin t2b_inst|binary_stop_i19_i I0[4] -pin t2b_inst|binary_stop_i20_i O[4]
load net t2b_inst|binary_stop_i41[6] -attr @rip O[6] -attr @name binary_stop_i41[6] -pin t2b_inst|binary_stop_i40_i I1[6] -pin t2b_inst|binary_stop_i41_i__0 O[6]
load net t2b_inst|binary_stop_i69[5] -attr @rip O[5] -attr @name binary_stop_i69[5] -pin t2b_inst|binary_stop_i68_i I1[5] -pin t2b_inst|binary_stop_i69_i__0 O[5]
load net fine_stop_w[6] -attr @rip binary_stop_i[6] -pin merge_inst fine_stop_i[6] -pin t2b_inst binary_stop_i[6]
load net t2b_inst|binary_stop_i20_i_n_3 -attr @rip O[3] -attr @name binary_stop_i20_i_n_3 -pin t2b_inst|binary_stop_i19_i I0[3] -pin t2b_inst|binary_stop_i20_i O[3]
load net t2b_inst|binary_start_i55[0] -attr @rip O[0] -attr @name binary_start_i55[0] -pin t2b_inst|binary_start_i54_i I0[0] -pin t2b_inst|binary_start_i55_i O[0]
load net t2b_inst|binary_stop_i20_i_n_4 -attr @rip O[2] -attr @name binary_stop_i20_i_n_4 -pin t2b_inst|binary_stop_i19_i I0[2] -pin t2b_inst|binary_stop_i20_i O[2]
load net t2b_inst|binary_stop_i53[0] -attr @rip O[0] -attr @name binary_stop_i53[0] -pin t2b_inst|binary_stop_i52_i I1[0] -pin t2b_inst|binary_stop_i53_i__0 O[0]
load net t2b_inst|thermometer_start_i[57] -attr @rip thermometer_start_i[57] -attr @name thermometer_start_i[57] -hierPin t2b_inst thermometer_start_i[57] -pin t2b_inst|binary_start_i12_i I1
load net t2b_inst|binary_stop_i20_i_n_5 -attr @rip O[1] -attr @name binary_stop_i20_i_n_5 -pin t2b_inst|binary_stop_i19_i I0[1] -pin t2b_inst|binary_stop_i20_i O[1]
load net t2b_inst|binary_start_i65[2] -attr @rip O[2] -attr @name binary_start_i65[2] -pin t2b_inst|binary_start_i64_i I0[2] -pin t2b_inst|binary_start_i65_i O[2]
load net tdl_thermometer_start_val_w[9] -attr @rip thermometer_start_val_o[9] -pin t2b_inst thermometer_start_i[9] -pin tdl_inst thermometer_start_val_o[9]
load net t2b_inst|binary_stop_i20_i_n_6 -attr @rip O[0] -attr @name binary_stop_i20_i_n_6 -pin t2b_inst|binary_stop_i19_i I0[0] -pin t2b_inst|binary_stop_i20_i O[0]
load net tdl_thermometer_start_val_w[39] -attr @rip thermometer_start_val_o[39] -pin t2b_inst thermometer_start_i[39] -pin tdl_inst thermometer_start_val_o[39]
load net t2b_inst|binary_stop_i37[1] -attr @rip O[1] -attr @name binary_stop_i37[1] -pin t2b_inst|binary_stop_i36_i I1[1] -pin t2b_inst|binary_stop_i37_i__0 O[1]
load net tdl_thermometer_stop_val_w[61] -attr @rip thermometer_stop_val_o[61] -pin t2b_inst thermometer_stop_i[61] -pin tdl_inst thermometer_stop_val_o[61]
load net t2b_inst|binary_stop_i13[1] -attr @rip O[1] -attr @name binary_stop_i13[1] -pin t2b_inst|binary_stop_i12_i I1[1] -pin t2b_inst|binary_stop_i13_i__0 O[1]
load net t2b_inst|binary_start_i10[2] -attr @rip O[2] -attr @name binary_start_i10[2] -pin t2b_inst|binary_start_i10_i O[2] -pin t2b_inst|binary_start_i9_i I0[2]
load net t2b_inst|thermometer_stop_i[9] -attr @rip thermometer_stop_i[9] -attr @name thermometer_stop_i[9] -hierPin t2b_inst thermometer_stop_i[9] -pin t2b_inst|binary_stop_i61_i__0 I0
load net t2b_inst|binary_stop_i61[6] -attr @rip O[6] -attr @name binary_stop_i61[6] -pin t2b_inst|binary_stop_i60_i I1[6] -pin t2b_inst|binary_stop_i61_i__0 O[6]
load net t2b_inst|thermometer_start_i[34] -attr @rip thermometer_start_i[34] -attr @name thermometer_start_i[34] -hierPin t2b_inst thermometer_start_i[34] -pin t2b_inst|binary_start_i35_i I1
load net t2b_inst|binary_stop_i68[5] -attr @rip O[5] -attr @name binary_stop_i68[5] -pin t2b_inst|binary_stop_i67_i I1[5] -pin t2b_inst|binary_stop_i68_i__0 O[5]
load net t2b_inst|binary_start_i43[3] -attr @rip O[3] -attr @name binary_start_i43[3] -pin t2b_inst|binary_start_i42_i I0[3] -pin t2b_inst|binary_start_i43_i O[3]
load net fine_start_w[3] -attr @rip binary_start_i[3] -pin merge_inst fine_start_i[3] -pin t2b_inst binary_start_i[3]
load net t2b_inst|thermometer_start_i[5] -attr @rip thermometer_start_i[5] -attr @name thermometer_start_i[5] -hierPin t2b_inst thermometer_start_i[5] -pin t2b_inst|binary_start_i64_i I1
load net tdl_thermometer_start_val_w[62] -attr @rip thermometer_start_val_o[62] -pin t2b_inst thermometer_start_i[62] -pin tdl_inst thermometer_start_val_o[62]
load net t2b_inst|binary_start_i57[6] -attr @rip O[6] -attr @name binary_start_i57[6] -pin t2b_inst|binary_start_i56_i I0[6] -pin t2b_inst|binary_start_i57_i O[6]
load net tdl_thermometer_start_val_w[49] -attr @rip thermometer_start_val_o[49] -pin t2b_inst thermometer_start_i[49] -pin tdl_inst thermometer_start_val_o[49]
load net t2b_inst|binary_stop_i30[0] -attr @rip O[0] -attr @name binary_stop_i30[0] -pin t2b_inst|binary_stop_i29_i I1[0] -pin t2b_inst|binary_stop_i30_i__0 O[0]
load net t2b_inst|binary_start_i46[4] -attr @rip O[4] -attr @name binary_start_i46[4] -pin t2b_inst|binary_start_i45_i I0[4] -pin t2b_inst|binary_start_i46_i O[4]
load net tdl_thermometer_start_val_w[32] -attr @rip thermometer_start_val_o[32] -pin t2b_inst thermometer_start_i[32] -pin tdl_inst thermometer_start_val_o[32]
load net t2b_inst|binary_start_i3[4] -attr @rip O[4] -attr @name binary_start_i3[4] -pin t2b_inst|binary_start_i2_i I0[4] -pin t2b_inst|binary_start_i3_i O[4]
load net t2b_inst|binary_stop_i29[6] -attr @rip O[6] -attr @name binary_stop_i29[6] -pin t2b_inst|binary_stop_i28_i I1[6] -pin t2b_inst|binary_stop_i29_i__0 O[6]
load net t2b_inst|binary_stop_i[5] -attr @rip O[5] -attr @name binary_stop_i[5] -hierPin t2b_inst binary_stop_i[5] -pin t2b_inst|binary_stop_i0_i O[5]
load net t2b_inst|binary_stop_i44[2] -attr @rip O[2] -attr @name binary_stop_i44[2] -pin t2b_inst|binary_stop_i43_i I1[2] -pin t2b_inst|binary_stop_i44_i__0 O[2]
load net t2b_inst|binary_start_i34[0] -attr @rip O[0] -attr @name binary_start_i34[0] -pin t2b_inst|binary_start_i33_i I0[0] -pin t2b_inst|binary_start_i34_i O[0]
load net t2b_inst|binary_start_i60[6] -attr @rip O[6] -attr @name binary_start_i60[6] -pin t2b_inst|binary_start_i59_i I0[6] -pin t2b_inst|binary_start_i60_i O[6]
load net t2b_inst|binary_stop_i41[5] -attr @rip O[5] -attr @name binary_stop_i41[5] -pin t2b_inst|binary_stop_i40_i I1[5] -pin t2b_inst|binary_stop_i41_i__0 O[5]
load net t2b_inst|binary_start_i21[6] -attr @rip O[6] -attr @name binary_start_i21[6] -pin t2b_inst|binary_start_i20_i I0[6] -pin t2b_inst|binary_start_i21_i O[6]
load net t2b_inst|binary_stop_i69[6] -attr @rip O[6] -attr @name binary_stop_i69[6] -pin t2b_inst|binary_stop_i68_i I1[6] -pin t2b_inst|binary_stop_i69_i__0 O[6]
load net t2b_inst|binary_start_i35[1] -attr @rip O[1] -attr @name binary_start_i35[1] -pin t2b_inst|binary_start_i34_i I0[1] -pin t2b_inst|binary_start_i35_i O[1]
load net t2b_inst|binary_start_i65[1] -attr @rip O[1] -attr @name binary_start_i65[1] -pin t2b_inst|binary_start_i64_i I0[1] -pin t2b_inst|binary_start_i65_i O[1]
load net t2b_inst|thermometer_start_i[14] -attr @rip thermometer_start_i[14] -attr @name thermometer_start_i[14] -hierPin t2b_inst thermometer_start_i[14] -pin t2b_inst|binary_start_i55_i I1
load net t2b_inst|thermometer_stop_i[60] -attr @rip thermometer_stop_i[60] -attr @name thermometer_stop_i[60] -hierPin t2b_inst thermometer_stop_i[60] -pin t2b_inst|binary_stop_i10_i__0 I0
load net t2b_inst|binary_start_i55[1] -attr @rip O[1] -attr @name binary_start_i55[1] -pin t2b_inst|binary_start_i54_i I0[1] -pin t2b_inst|binary_start_i55_i O[1]
load net tdl_thermometer_start_val_w[40] -attr @rip thermometer_start_val_o[40] -pin t2b_inst thermometer_start_i[40] -pin tdl_inst thermometer_start_val_o[40]
load net t2b_inst|binary_stop_i53[1] -attr @rip O[1] -attr @name binary_stop_i53[1] -pin t2b_inst|binary_stop_i52_i I1[1] -pin t2b_inst|binary_stop_i53_i__0 O[1]
load net t2b_inst|binary_start_i10[1] -attr @rip O[1] -attr @name binary_start_i10[1] -pin t2b_inst|binary_start_i10_i O[1] -pin t2b_inst|binary_start_i9_i I0[1]
load net t2b_inst|binary_stop_i61[5] -attr @rip O[5] -attr @name binary_stop_i61[5] -pin t2b_inst|binary_stop_i60_i I1[5] -pin t2b_inst|binary_stop_i61_i__0 O[5]
load net tdl_thermometer_stop_val_w[62] -attr @rip thermometer_stop_val_o[62] -pin t2b_inst thermometer_stop_i[62] -pin tdl_inst thermometer_stop_val_o[62]
load net fine_start_w[0] -attr @rip binary_start_i[0] -pin merge_inst fine_start_i[0] -pin t2b_inst binary_start_i[0]
load net t2b_inst|thermometer_start_i[35] -attr @rip thermometer_start_i[35] -attr @name thermometer_start_i[35] -hierPin t2b_inst thermometer_start_i[35] -pin t2b_inst|binary_start_i34_i I1
load net t2b_inst|binary_stop_i68[6] -attr @rip O[6] -attr @name binary_stop_i68[6] -pin t2b_inst|binary_stop_i67_i I1[6] -pin t2b_inst|binary_stop_i68_i__0 O[6]
load net t2b_inst|binary_start_i3[1] -attr @rip O[1] -attr @name binary_start_i3[1] -pin t2b_inst|binary_start_i2_i I0[1] -pin t2b_inst|binary_start_i3_i O[1]
load net t2b_inst|binary_start_i43[6] -attr @rip O[6] -attr @name binary_start_i43[6] -pin t2b_inst|binary_start_i42_i I0[6] -pin t2b_inst|binary_start_i43_i O[6]
load net tdl_thermometer_start_val_w[61] -attr @rip thermometer_start_val_o[61] -pin t2b_inst thermometer_start_i[61] -pin tdl_inst thermometer_start_val_o[61]
load net t2b_inst|binary_start_i19[0] -attr @rip O[0] -attr @name binary_start_i19[0] -pin t2b_inst|binary_start_i18_i I0[0] -pin t2b_inst|binary_start_i19_i O[0]
load net t2b_inst|binary_stop_i29[5] -attr @rip O[5] -attr @name binary_stop_i29[5] -pin t2b_inst|binary_stop_i28_i I1[5] -pin t2b_inst|binary_stop_i29_i__0 O[5]
load net t2b_inst|binary_stop_i[4] -attr @rip O[4] -attr @name binary_stop_i[4] -hierPin t2b_inst binary_stop_i[4] -pin t2b_inst|binary_stop_i0_i O[4]
load net t2b_inst|binary_stop_i30[1] -attr @rip O[1] -attr @name binary_stop_i30[1] -pin t2b_inst|binary_stop_i29_i I1[1] -pin t2b_inst|binary_stop_i30_i__0 O[1]
load net t2b_inst|binary_start_i21[3] -attr @rip O[3] -attr @name binary_start_i21[3] -pin t2b_inst|binary_start_i20_i I0[3] -pin t2b_inst|binary_start_i21_i O[3]
load net tdl_thermometer_start_val_w[33] -attr @rip thermometer_start_val_o[33] -pin t2b_inst thermometer_start_i[33] -pin tdl_inst thermometer_start_val_o[33]
load net t2b_inst|binary_stop_i31[4] -attr @rip O[4] -attr @name binary_stop_i31[4] -pin t2b_inst|binary_stop_i30_i I1[4] -pin t2b_inst|binary_stop_i31_i__0 O[4]
load net t2b_inst|binary_stop_i9[2] -attr @rip O[2] -attr @name binary_stop_i9[2] -pin t2b_inst|binary_stop_i8_i I1[2] -pin t2b_inst|binary_stop_i9_i__0 O[2]
load net t2b_inst|thermometer_start_i[8] -attr @rip thermometer_start_i[8] -attr @name thermometer_start_i[8] -hierPin t2b_inst thermometer_start_i[8] -pin t2b_inst|binary_start_i61_i I1
load net t2b_inst|binary_start_i35[0] -attr @rip O[0] -attr @name binary_start_i35[0] -pin t2b_inst|binary_start_i34_i I0[0] -pin t2b_inst|binary_start_i35_i O[0]
load net t2b_inst|binary_start_i65[0] -attr @rip O[0] -attr @name binary_start_i65[0] -pin t2b_inst|binary_start_i64_i I0[0] -pin t2b_inst|binary_start_i65_i O[0]
load net t2b_inst|binary_stop_i32[0] -attr @rip O[0] -attr @name binary_stop_i32[0] -pin t2b_inst|binary_stop_i31_i I1[0] -pin t2b_inst|binary_stop_i32_i__0 O[0]
load net t2b_inst|binary_start_i10[0] -attr @rip O[0] -attr @name binary_start_i10[0] -pin t2b_inst|binary_start_i10_i O[0] -pin t2b_inst|binary_start_i9_i I0[0]
load net t2b_inst|binary_stop_i41_i_n_0 -attr @rip O[6] -attr @name binary_stop_i41_i_n_0 -pin t2b_inst|binary_stop_i40_i I0[6] -pin t2b_inst|binary_stop_i41_i O[6]
load net t2b_inst|thermometer_start_i[15] -attr @rip thermometer_start_i[15] -attr @name thermometer_start_i[15] -hierPin t2b_inst thermometer_start_i[15] -pin t2b_inst|binary_start_i54_i I1
load net t2b_inst|thermometer_stop_i[61] -attr @rip thermometer_stop_i[61] -attr @name thermometer_stop_i[61] -hierPin t2b_inst thermometer_stop_i[61] -pin t2b_inst|binary_stop_i9_i__0 I0
load net t2b_inst|thermometer_stop_i[7] -attr @rip thermometer_stop_i[7] -attr @name thermometer_stop_i[7] -hierPin t2b_inst thermometer_stop_i[7] -pin t2b_inst|binary_stop_i63_i__0 I0
load net t2b_inst|binary_stop_i15[0] -attr @rip O[0] -attr @name binary_stop_i15[0] -pin t2b_inst|binary_stop_i14_i I1[0] -pin t2b_inst|binary_stop_i15_i__0 O[0]
load net t2b_inst|binary_start_i55[2] -attr @rip O[2] -attr @name binary_start_i55[2] -pin t2b_inst|binary_start_i54_i I0[2] -pin t2b_inst|binary_start_i55_i O[2]
load net t2b_inst|binary_stop_i41_i_n_1 -attr @rip O[5] -attr @name binary_stop_i41_i_n_1 -pin t2b_inst|binary_stop_i40_i I0[5] -pin t2b_inst|binary_stop_i41_i O[5]
load net t2b_inst|binary_stop_i53[2] -attr @rip O[2] -attr @name binary_stop_i53[2] -pin t2b_inst|binary_stop_i52_i I1[2] -pin t2b_inst|binary_stop_i53_i__0 O[2]
load net t2b_inst|binary_stop_i61[4] -attr @rip O[4] -attr @name binary_stop_i61[4] -pin t2b_inst|binary_stop_i60_i I1[4] -pin t2b_inst|binary_stop_i61_i__0 O[4]
load net t2b_inst|binary_stop_i41_i_n_2 -attr @rip O[4] -attr @name binary_stop_i41_i_n_2 -pin t2b_inst|binary_stop_i40_i I0[4] -pin t2b_inst|binary_stop_i41_i O[4]
load net t2b_inst|binary_stop_i41_i_n_3 -attr @rip O[3] -attr @name binary_stop_i41_i_n_3 -pin t2b_inst|binary_stop_i40_i I0[3] -pin t2b_inst|binary_stop_i41_i O[3]
load net fine_start_w[1] -attr @rip binary_start_i[1] -pin merge_inst fine_start_i[1] -pin t2b_inst binary_start_i[1]
load net t2b_inst|binary_stop_i41_i_n_4 -attr @rip O[2] -attr @name binary_stop_i41_i_n_4 -pin t2b_inst|binary_stop_i40_i I0[2] -pin t2b_inst|binary_stop_i41_i O[2]
load net t2b_inst|binary_stop_i59_i_n_0 -attr @rip O[6] -attr @name binary_stop_i59_i_n_0 -pin t2b_inst|binary_stop_i58_i I0[6] -pin t2b_inst|binary_stop_i59_i O[6]
load net t2b_inst|binary_stop_i41_i_n_5 -attr @rip O[1] -attr @name binary_stop_i41_i_n_5 -pin t2b_inst|binary_stop_i40_i I0[1] -pin t2b_inst|binary_stop_i41_i O[1]
load net t2b_inst|binary_stop_i59_i_n_1 -attr @rip O[5] -attr @name binary_stop_i59_i_n_1 -pin t2b_inst|binary_stop_i58_i I0[5] -pin t2b_inst|binary_stop_i59_i O[5]
load net t2b_inst|thermometer_start_i[36] -attr @rip thermometer_start_i[36] -attr @name thermometer_start_i[36] -hierPin t2b_inst thermometer_start_i[36] -pin t2b_inst|binary_start_i33_i I1
load net measurement_o[14] -attr @rip tdc_measure_o[14] -port measurement_o[14] -pin merge_inst tdc_measure_o[14]
load net t2b_inst|binary_stop_i41_i_n_6 -attr @rip O[0] -attr @name binary_stop_i41_i_n_6 -pin t2b_inst|binary_stop_i40_i I0[0] -pin t2b_inst|binary_stop_i41_i O[0]
load net t2b_inst|binary_stop_i59_i_n_2 -attr @rip O[4] -attr @name binary_stop_i59_i_n_2 -pin t2b_inst|binary_stop_i58_i I0[4] -pin t2b_inst|binary_stop_i59_i O[4]
load net t2b_inst|binary_start_i43[5] -attr @rip O[5] -attr @name binary_start_i43[5] -pin t2b_inst|binary_start_i42_i I0[5] -pin t2b_inst|binary_start_i43_i O[5]
load net t2b_inst|binary_stop_i59_i_n_3 -attr @rip O[3] -attr @name binary_stop_i59_i_n_3 -pin t2b_inst|binary_stop_i58_i I0[3] -pin t2b_inst|binary_stop_i59_i O[3]
load net t2b_inst|binary_start_i3[2] -attr @rip O[2] -attr @name binary_start_i3[2] -pin t2b_inst|binary_start_i2_i I0[2] -pin t2b_inst|binary_start_i3_i O[2]
load net t2b_inst|binary_stop_i29[4] -attr @rip O[4] -attr @name binary_stop_i29[4] -pin t2b_inst|binary_stop_i28_i I1[4] -pin t2b_inst|binary_stop_i29_i__0 O[4]
load net t2b_inst|binary_stop_i59_i_n_4 -attr @rip O[2] -attr @name binary_stop_i59_i_n_4 -pin t2b_inst|binary_stop_i58_i I0[2] -pin t2b_inst|binary_stop_i59_i O[2]
load net t2b_inst|binary_stop_i[3] -attr @rip O[3] -attr @name binary_stop_i[3] -hierPin t2b_inst binary_stop_i[3] -pin t2b_inst|binary_stop_i0_i O[3]
load net t2b_inst|binary_start_i19[1] -attr @rip O[1] -attr @name binary_start_i19[1] -pin t2b_inst|binary_start_i18_i I0[1] -pin t2b_inst|binary_start_i19_i O[1]
load net t2b_inst|binary_stop_i59_i_n_5 -attr @rip O[1] -attr @name binary_stop_i59_i_n_5 -pin t2b_inst|binary_stop_i58_i I0[1] -pin t2b_inst|binary_stop_i59_i O[1]
load net t2b_inst|binary_stop_i59_i_n_6 -attr @rip O[0] -attr @name binary_stop_i59_i_n_6 -pin t2b_inst|binary_stop_i58_i I0[0] -pin t2b_inst|binary_stop_i59_i O[0]
load net t2b_inst|binary_stop_i9[1] -attr @rip O[1] -attr @name binary_stop_i9[1] -pin t2b_inst|binary_stop_i8_i I1[1] -pin t2b_inst|binary_stop_i9_i__0 O[1]
load net t2b_inst|thermometer_start_i[7] -attr @rip thermometer_start_i[7] -attr @name thermometer_start_i[7] -hierPin t2b_inst thermometer_start_i[7] -pin t2b_inst|binary_start_i62_i I1
load net t2b_inst|thermometer_stop_i[25] -attr @rip thermometer_stop_i[25] -attr @name thermometer_stop_i[25] -hierPin t2b_inst thermometer_stop_i[25] -pin t2b_inst|binary_stop_i45_i__0 I0
load net tdl_thermometer_start_val_w[64] -attr @rip thermometer_start_val_o[64] -pin t2b_inst thermometer_start_i[64] -pin tdl_inst thermometer_start_val_o[64]
load net t2b_inst|binary_stop_i30[2] -attr @rip O[2] -attr @name binary_stop_i30[2] -pin t2b_inst|binary_stop_i29_i I1[2] -pin t2b_inst|binary_stop_i30_i__0 O[2]
load net t2b_inst|binary_start_i21[4] -attr @rip O[4] -attr @name binary_start_i21[4] -pin t2b_inst|binary_start_i20_i I0[4] -pin t2b_inst|binary_start_i21_i O[4]
load net t2b_inst|binary_start_i46[6] -attr @rip O[6] -attr @name binary_start_i46[6] -pin t2b_inst|binary_start_i45_i I0[6] -pin t2b_inst|binary_start_i46_i O[6]
load net tdl_thermometer_start_val_w[34] -attr @rip thermometer_start_val_o[34] -pin t2b_inst thermometer_start_i[34] -pin tdl_inst thermometer_start_val_o[34]
load net t2b_inst|binary_stop_i31[5] -attr @rip O[5] -attr @name binary_stop_i31[5] -pin t2b_inst|binary_stop_i30_i I1[5] -pin t2b_inst|binary_stop_i31_i__0 O[5]
load net t2b_inst|thermometer_start_i[12] -attr @rip thermometer_start_i[12] -attr @name thermometer_start_i[12] -hierPin t2b_inst thermometer_start_i[12] -pin t2b_inst|binary_start_i57_i I1
load net t2b_inst|binary_start_i34[2] -attr @rip O[2] -attr @name binary_start_i34[2] -pin t2b_inst|binary_start_i33_i I0[2] -pin t2b_inst|binary_start_i34_i O[2]
load net t2b_inst|binary_start_i27[6] -attr @rip O[6] -attr @name binary_start_i27[6] -pin t2b_inst|binary_start_i26_i I0[6] -pin t2b_inst|binary_start_i27_i O[6]
load net t2b_inst|binary_stop_i32[1] -attr @rip O[1] -attr @name binary_stop_i32[1] -pin t2b_inst|binary_stop_i31_i I1[1] -pin t2b_inst|binary_stop_i32_i__0 O[1]
load net t2b_inst|binary_stop_i40_i_n_0 -attr @rip O[6] -attr @name binary_stop_i40_i_n_0 -pin t2b_inst|binary_stop_i39_i I0[6] -pin t2b_inst|binary_stop_i40_i O[6]
load net t2b_inst|binary_stop_i61[3] -attr @rip O[3] -attr @name binary_stop_i61[3] -pin t2b_inst|binary_stop_i60_i I1[3] -pin t2b_inst|binary_stop_i61_i__0 O[3]
load net t2b_inst|binary_stop_i40_i_n_1 -attr @rip O[5] -attr @name binary_stop_i40_i_n_1 -pin t2b_inst|binary_stop_i39_i I0[5] -pin t2b_inst|binary_stop_i40_i O[5]
load net t2b_inst|thermometer_stop_i[62] -attr @rip thermometer_stop_i[62] -attr @name thermometer_stop_i[62] -hierPin t2b_inst thermometer_stop_i[62] -pin t2b_inst|binary_stop_i8_i__0 I0
load net t2b_inst|thermometer_stop_i[8] -attr @rip thermometer_stop_i[8] -attr @name thermometer_stop_i[8] -hierPin t2b_inst thermometer_stop_i[8] -pin t2b_inst|binary_stop_i62_i__0 I0
load net t2b_inst|binary_stop_i15[1] -attr @rip O[1] -attr @name binary_stop_i15[1] -pin t2b_inst|binary_stop_i14_i I1[1] -pin t2b_inst|binary_stop_i15_i__0 O[1]
load net t2b_inst|binary_start_i55[3] -attr @rip O[3] -attr @name binary_start_i55[3] -pin t2b_inst|binary_start_i54_i I0[3] -pin t2b_inst|binary_start_i55_i O[3]
load net t2b_inst|binary_start_i8[0] -attr @rip O[0] -attr @name binary_start_i8[0] -pin t2b_inst|binary_start_i7_i I0[0] -pin t2b_inst|binary_start_i8_i O[0]
load net t2b_inst|binary_stop_i40_i_n_2 -attr @rip O[4] -attr @name binary_stop_i40_i_n_2 -pin t2b_inst|binary_stop_i39_i I0[4] -pin t2b_inst|binary_stop_i40_i O[4]
load net t2b_inst|binary_stop_i53[3] -attr @rip O[3] -attr @name binary_stop_i53[3] -pin t2b_inst|binary_stop_i52_i I1[3] -pin t2b_inst|binary_stop_i53_i__0 O[3]
load net t2b_inst|binary_stop_i6_i_n_0 -attr @rip O[6] -attr @name binary_stop_i6_i_n_0 -pin t2b_inst|binary_stop_i5_i I0[6] -pin t2b_inst|binary_stop_i6_i O[6]
load net t2b_inst|binary_stop_i37_i_n_0 -attr @rip O[6] -attr @name binary_stop_i37_i_n_0 -pin t2b_inst|binary_stop_i36_i I0[6] -pin t2b_inst|binary_stop_i37_i O[6]
load net t2b_inst|binary_stop_i40_i_n_3 -attr @rip O[3] -attr @name binary_stop_i40_i_n_3 -pin t2b_inst|binary_stop_i39_i I0[3] -pin t2b_inst|binary_stop_i40_i O[3]
load net t2b_inst|binary_stop_i6_i_n_1 -attr @rip O[5] -attr @name binary_stop_i6_i_n_1 -pin t2b_inst|binary_stop_i5_i I0[5] -pin t2b_inst|binary_stop_i6_i O[5]
load net t2b_inst|binary_stop_i37_i_n_1 -attr @rip O[5] -attr @name binary_stop_i37_i_n_1 -pin t2b_inst|binary_stop_i36_i I0[5] -pin t2b_inst|binary_stop_i37_i O[5]
load net t2b_inst|binary_stop_i40_i_n_4 -attr @rip O[2] -attr @name binary_stop_i40_i_n_4 -pin t2b_inst|binary_stop_i39_i I0[2] -pin t2b_inst|binary_stop_i40_i O[2]
load net t2b_inst|binary_stop_i6_i_n_2 -attr @rip O[4] -attr @name binary_stop_i6_i_n_2 -pin t2b_inst|binary_stop_i5_i I0[4] -pin t2b_inst|binary_stop_i6_i O[4]
load net t2b_inst|binary_stop_i37_i_n_2 -attr @rip O[4] -attr @name binary_stop_i37_i_n_2 -pin t2b_inst|binary_stop_i36_i I0[4] -pin t2b_inst|binary_stop_i37_i O[4]
load net t2b_inst|binary_stop_i40_i_n_5 -attr @rip O[1] -attr @name binary_stop_i40_i_n_5 -pin t2b_inst|binary_stop_i39_i I0[1] -pin t2b_inst|binary_stop_i40_i O[1]
load net t2b_inst|binary_stop_i6_i_n_3 -attr @rip O[3] -attr @name binary_stop_i6_i_n_3 -pin t2b_inst|binary_stop_i5_i I0[3] -pin t2b_inst|binary_stop_i6_i O[3]
load net t2b_inst|binary_start_i2[0] -attr @rip O[0] -attr @name binary_start_i2[0] -pin t2b_inst|binary_start_i1_i I0[0] -pin t2b_inst|binary_start_i2_i O[0]
load net hit_r -pin hit_r_reg Q -pin tdl_inst hit_i
netloc hit_r 1 5 1 1170
load net t2b_inst|binary_stop_i37_i_n_3 -attr @rip O[3] -attr @name binary_stop_i37_i_n_3 -pin t2b_inst|binary_stop_i36_i I0[3] -pin t2b_inst|binary_stop_i37_i O[3]
load net t2b_inst|binary_stop_i40_i_n_6 -attr @rip O[0] -attr @name binary_stop_i40_i_n_6 -pin t2b_inst|binary_stop_i39_i I0[0] -pin t2b_inst|binary_stop_i40_i O[0]
load net t2b_inst|binary_stop_i6_i_n_4 -attr @rip O[2] -attr @name binary_stop_i6_i_n_4 -pin t2b_inst|binary_stop_i5_i I0[2] -pin t2b_inst|binary_stop_i6_i O[2]
load net t2b_inst|thermometer_start_i[37] -attr @rip thermometer_start_i[37] -attr @name thermometer_start_i[37] -hierPin t2b_inst thermometer_start_i[37] -pin t2b_inst|binary_start_i32_i I1
load net t2b_inst|binary_start_i46[1] -attr @rip O[1] -attr @name binary_start_i46[1] -pin t2b_inst|binary_start_i45_i I0[1] -pin t2b_inst|binary_start_i46_i O[1]
load net measurement_o[15] -attr @rip tdc_measure_o[15] -port measurement_o[15] -pin merge_inst tdc_measure_o[15]
load net t2b_inst|binary_stop_i29[3] -attr @rip O[3] -attr @name binary_stop_i29[3] -pin t2b_inst|binary_stop_i28_i I1[3] -pin t2b_inst|binary_stop_i29_i__0 O[3]
load net t2b_inst|binary_stop_i37_i_n_4 -attr @rip O[2] -attr @name binary_stop_i37_i_n_4 -pin t2b_inst|binary_stop_i36_i I0[2] -pin t2b_inst|binary_stop_i37_i O[2]
load net t2b_inst|binary_stop_i6_i_n_5 -attr @rip O[1] -attr @name binary_stop_i6_i_n_5 -pin t2b_inst|binary_stop_i5_i I0[1] -pin t2b_inst|binary_stop_i6_i O[1]
load net t2b_inst|binary_stop_i[2] -attr @rip O[2] -attr @name binary_stop_i[2] -hierPin t2b_inst binary_stop_i[2] -pin t2b_inst|binary_stop_i0_i O[2]
load net t2b_inst|binary_stop_i37_i_n_5 -attr @rip O[1] -attr @name binary_stop_i37_i_n_5 -pin t2b_inst|binary_stop_i36_i I0[1] -pin t2b_inst|binary_stop_i37_i O[1]
load net t2b_inst|binary_stop_i6_i_n_6 -attr @rip O[0] -attr @name binary_stop_i6_i_n_6 -pin t2b_inst|binary_stop_i5_i I0[0] -pin t2b_inst|binary_stop_i6_i O[0]
load net t2b_inst|binary_start_i21[1] -attr @rip O[1] -attr @name binary_start_i21[1] -pin t2b_inst|binary_start_i20_i I0[1] -pin t2b_inst|binary_start_i21_i O[1]
load net t2b_inst|binary_stop_i31[2] -attr @rip O[2] -attr @name binary_stop_i31[2] -pin t2b_inst|binary_stop_i30_i I1[2] -pin t2b_inst|binary_stop_i31_i__0 O[2]
load net t2b_inst|binary_stop_i37_i_n_6 -attr @rip O[0] -attr @name binary_stop_i37_i_n_6 -pin t2b_inst|binary_stop_i36_i I0[0] -pin t2b_inst|binary_stop_i37_i O[0]
load net t2b_inst|binary_stop_i51[4] -attr @rip O[4] -attr @name binary_stop_i51[4] -pin t2b_inst|binary_stop_i50_i I1[4] -pin t2b_inst|binary_stop_i51_i__0 O[4]
load net t2b_inst|binary_start_i19[2] -attr @rip O[2] -attr @name binary_start_i19[2] -pin t2b_inst|binary_start_i18_i I0[2] -pin t2b_inst|binary_start_i19_i O[2]
load net tdl_thermometer_start_val_w[63] -attr @rip thermometer_start_val_o[63] -pin t2b_inst thermometer_start_i[63] -pin tdl_inst thermometer_start_val_o[63]
load net t2b_inst|thermometer_stop_i[26] -attr @rip thermometer_stop_i[26] -attr @name thermometer_stop_i[26] -hierPin t2b_inst thermometer_stop_i[26] -pin t2b_inst|binary_stop_i44_i__0 I0
load net t2b_inst|binary_stop_i30[3] -attr @rip O[3] -attr @name binary_stop_i30[3] -pin t2b_inst|binary_stop_i29_i I1[3] -pin t2b_inst|binary_stop_i30_i__0 O[3]
load net tdl_thermometer_start_val_w[35] -attr @rip thermometer_start_val_o[35] -pin t2b_inst thermometer_start_i[35] -pin tdl_inst thermometer_start_val_o[35]
load net t2b_inst|binary_start_i34[1] -attr @rip O[1] -attr @name binary_start_i34[1] -pin t2b_inst|binary_start_i33_i I0[1] -pin t2b_inst|binary_start_i34_i O[1]
load net t2b_inst|binary_stop_i9[4] -attr @rip O[4] -attr @name binary_stop_i9[4] -pin t2b_inst|binary_stop_i8_i I1[4] -pin t2b_inst|binary_stop_i9_i__0 O[4]
load net t2b_inst|binary_start_i27[5] -attr @rip O[5] -attr @name binary_start_i27[5] -pin t2b_inst|binary_start_i26_i I0[5] -pin t2b_inst|binary_start_i27_i O[5]
load net t2b_inst|thermometer_start_i[13] -attr @rip thermometer_start_i[13] -attr @name thermometer_start_i[13] -hierPin t2b_inst thermometer_start_i[13] -pin t2b_inst|binary_start_i56_i I1
load net t2b_inst|thermometer_stop_i[5] -attr @rip thermometer_stop_i[5] -attr @name thermometer_stop_i[5] -hierPin t2b_inst thermometer_stop_i[5] -pin t2b_inst|binary_stop_i65_i__0 I0
load net t2b_inst|binary_start_i54[0] -attr @rip O[0] -attr @name binary_start_i54[0] -pin t2b_inst|binary_start_i53_i I0[0] -pin t2b_inst|binary_start_i54_i O[0]
load net t2b_inst|binary_start_i9[6] -attr @rip O[6] -attr @name binary_start_i9[6] -pin t2b_inst|binary_start_i8_i I0[6] -pin t2b_inst|binary_start_i9_i O[6]
load net t2b_inst|binary_stop_i29_i_n_0 -attr @rip O[6] -attr @name binary_stop_i29_i_n_0 -pin t2b_inst|binary_stop_i28_i I0[6] -pin t2b_inst|binary_stop_i29_i O[6]
load net t2b_inst|thermometer_start_i[30] -attr @rip thermometer_start_i[30] -attr @name thermometer_start_i[30] -hierPin t2b_inst thermometer_start_i[30] -pin t2b_inst|binary_start_i39_i I1
load net t2b_inst|binary_stop_i29_i_n_1 -attr @rip O[5] -attr @name binary_stop_i29_i_n_1 -pin t2b_inst|binary_stop_i28_i I0[5] -pin t2b_inst|binary_stop_i29_i O[5]
load net t2b_inst|binary_stop_i32[2] -attr @rip O[2] -attr @name binary_stop_i32[2] -pin t2b_inst|binary_stop_i31_i I1[2] -pin t2b_inst|binary_stop_i32_i__0 O[2]
load net t2b_inst|binary_stop_i29_i_n_2 -attr @rip O[4] -attr @name binary_stop_i29_i_n_2 -pin t2b_inst|binary_stop_i28_i I0[4] -pin t2b_inst|binary_stop_i29_i O[4]
load net t2b_inst|binary_stop_i29_i_n_3 -attr @rip O[3] -attr @name binary_stop_i29_i_n_3 -pin t2b_inst|binary_stop_i28_i I0[3] -pin t2b_inst|binary_stop_i29_i O[3]
load net t2b_inst|thermometer_stop_i[63] -attr @rip thermometer_stop_i[63] -attr @name thermometer_stop_i[63] -hierPin t2b_inst thermometer_stop_i[63] -pin t2b_inst|binary_stop_i7_i__0 I0
load net t2b_inst|binary_start_i8[1] -attr @rip O[1] -attr @name binary_start_i8[1] -pin t2b_inst|binary_start_i7_i I0[1] -pin t2b_inst|binary_start_i8_i O[1]
load net t2b_inst|binary_start_i6[6] -attr @rip O[6] -attr @name binary_start_i6[6] -pin t2b_inst|binary_start_i5_i I0[6] -pin t2b_inst|binary_start_i6_i O[6]
load net t2b_inst|binary_stop_i15[2] -attr @rip O[2] -attr @name binary_stop_i15[2] -pin t2b_inst|binary_stop_i14_i I1[2] -pin t2b_inst|binary_stop_i15_i__0 O[2]
load net t2b_inst|binary_stop_i29_i_n_4 -attr @rip O[2] -attr @name binary_stop_i29_i_n_4 -pin t2b_inst|binary_stop_i28_i I0[2] -pin t2b_inst|binary_stop_i29_i O[2]
load net t2b_inst|binary_stop_i53[4] -attr @rip O[4] -attr @name binary_stop_i53[4] -pin t2b_inst|binary_stop_i52_i I1[4] -pin t2b_inst|binary_stop_i53_i__0 O[4]
load net t2b_inst|binary_stop_i29_i_n_5 -attr @rip O[1] -attr @name binary_stop_i29_i_n_5 -pin t2b_inst|binary_stop_i28_i I0[1] -pin t2b_inst|binary_stop_i29_i O[1]
load net t2b_inst|binary_stop_i29_i_n_6 -attr @rip O[0] -attr @name binary_stop_i29_i_n_6 -pin t2b_inst|binary_stop_i28_i I0[0] -pin t2b_inst|binary_stop_i29_i O[0]
load net t2b_inst|binary_start_i3[0] -attr @rip O[0] -attr @name binary_start_i3[0] -pin t2b_inst|binary_start_i2_i I0[0] -pin t2b_inst|binary_start_i3_i O[0]
load net t2b_inst|binary_start_i46[0] -attr @rip O[0] -attr @name binary_start_i46[0] -pin t2b_inst|binary_start_i45_i I0[0] -pin t2b_inst|binary_start_i46_i O[0]
load net t2b_inst|binary_stop_i29[2] -attr @rip O[2] -attr @name binary_stop_i29[2] -pin t2b_inst|binary_stop_i28_i I1[2] -pin t2b_inst|binary_stop_i29_i__0 O[2]
load net t2b_inst|binary_start_i2[1] -attr @rip O[1] -attr @name binary_start_i2[1] -pin t2b_inst|binary_start_i1_i I0[1] -pin t2b_inst|binary_start_i2_i O[1]
load net t2b_inst|binary_stop_i4_i_n_0 -attr @rip O[6] -attr @name binary_stop_i4_i_n_0 -pin t2b_inst|binary_stop_i3_i I0[6] -pin t2b_inst|binary_stop_i4_i O[6]
load net measurement_o[16] -attr @rip tdc_measure_o[16] -port measurement_o[16] -pin merge_inst tdc_measure_o[16]
load net t2b_inst|binary_stop_i4_i_n_1 -attr @rip O[5] -attr @name binary_stop_i4_i_n_1 -pin t2b_inst|binary_stop_i3_i I0[5] -pin t2b_inst|binary_stop_i4_i O[5]
load net t2b_inst|binary_stop_i4_i_n_2 -attr @rip O[4] -attr @name binary_stop_i4_i_n_2 -pin t2b_inst|binary_stop_i3_i I0[4] -pin t2b_inst|binary_stop_i4_i O[4]
load net t2b_inst|binary_start_i21[2] -attr @rip O[2] -attr @name binary_start_i21[2] -pin t2b_inst|binary_start_i20_i I0[2] -pin t2b_inst|binary_start_i21_i O[2]
load net measurement_o[20] -attr @rip tdc_measure_o[20] -port measurement_o[20] -pin merge_inst tdc_measure_o[20]
load net t2b_inst|binary_stop_i31[3] -attr @rip O[3] -attr @name binary_stop_i31[3] -pin t2b_inst|binary_stop_i30_i I1[3] -pin t2b_inst|binary_stop_i31_i__0 O[3]
load net t2b_inst|binary_stop_i4_i_n_3 -attr @rip O[3] -attr @name binary_stop_i4_i_n_3 -pin t2b_inst|binary_stop_i3_i I0[3] -pin t2b_inst|binary_stop_i4_i O[3]
load net t2b_inst|binary_stop_i51[5] -attr @rip O[5] -attr @name binary_stop_i51[5] -pin t2b_inst|binary_stop_i50_i I1[5] -pin t2b_inst|binary_stop_i51_i__0 O[5]
load net t2b_inst|binary_start_i19[3] -attr @rip O[3] -attr @name binary_start_i19[3] -pin t2b_inst|binary_start_i18_i I0[3] -pin t2b_inst|binary_start_i19_i O[3]
load net t2b_inst|binary_stop_i4_i_n_4 -attr @rip O[2] -attr @name binary_stop_i4_i_n_4 -pin t2b_inst|binary_stop_i3_i I0[2] -pin t2b_inst|binary_stop_i4_i O[2]
load net tdl_thermometer_stop_val_w[40] -attr @rip thermometer_stop_val_o[40] -pin t2b_inst thermometer_stop_i[40] -pin tdl_inst thermometer_stop_val_o[40]
load net tdl_thermometer_start_val_w[4] -attr @rip thermometer_start_val_o[4] -pin t2b_inst thermometer_start_i[4] -pin tdl_inst thermometer_start_val_o[4]
load net t2b_inst|binary_stop_i3[4] -attr @rip O[4] -attr @name binary_stop_i3[4] -pin t2b_inst|binary_stop_i2_i I1[4] -pin t2b_inst|binary_stop_i3_i__0 O[4]
load net t2b_inst|binary_stop_i4_i_n_5 -attr @rip O[1] -attr @name binary_stop_i4_i_n_5 -pin t2b_inst|binary_stop_i3_i I0[1] -pin t2b_inst|binary_stop_i4_i O[1]
load net t2b_inst|binary_stop_i9[3] -attr @rip O[3] -attr @name binary_stop_i9[3] -pin t2b_inst|binary_stop_i8_i I1[3] -pin t2b_inst|binary_stop_i9_i__0 O[3]
load net t2b_inst|thermometer_start_i[9] -attr @rip thermometer_start_i[9] -attr @name thermometer_start_i[9] -hierPin t2b_inst thermometer_start_i[9] -pin t2b_inst|binary_start_i60_i I1
load net t2b_inst|thermometer_stop_i[27] -attr @rip thermometer_stop_i[27] -attr @name thermometer_stop_i[27] -hierPin t2b_inst thermometer_stop_i[27] -pin t2b_inst|binary_stop_i43_i__0 I0
load net t2b_inst|binary_start_i27[4] -attr @rip O[4] -attr @name binary_start_i27[4] -pin t2b_inst|binary_start_i26_i I0[4] -pin t2b_inst|binary_start_i27_i O[4]
load net tdl_thermometer_start_val_w[66] -attr @rip thermometer_start_val_o[66] -pin t2b_inst thermometer_start_i[66] -pin tdl_inst thermometer_start_val_o[66]
load net t2b_inst|binary_stop_i30[4] -attr @rip O[4] -attr @name binary_stop_i30[4] -pin t2b_inst|binary_stop_i29_i I1[4] -pin t2b_inst|binary_stop_i30_i__0 O[4]
load net t2b_inst|binary_stop_i4_i_n_6 -attr @rip O[0] -attr @name binary_stop_i4_i_n_6 -pin t2b_inst|binary_stop_i3_i I0[0] -pin t2b_inst|binary_stop_i4_i O[0]
load net t2b_inst|binary_start_i9[5] -attr @rip O[5] -attr @name binary_start_i9[5] -pin t2b_inst|binary_start_i8_i I0[5] -pin t2b_inst|binary_start_i9_i O[5]
load net t2b_inst|binary_stop_i21[6] -attr @rip O[6] -attr @name binary_stop_i21[6] -pin t2b_inst|binary_stop_i20_i I1[6] -pin t2b_inst|binary_stop_i21_i__0 O[6]
load net t2b_inst|thermometer_stop_i[6] -attr @rip thermometer_stop_i[6] -attr @name thermometer_stop_i[6] -hierPin t2b_inst thermometer_stop_i[6] -pin t2b_inst|binary_stop_i64_i__0 I0
load net t2b_inst|binary_start_i49[6] -attr @rip O[6] -attr @name binary_start_i49[6] -pin t2b_inst|binary_start_i48_i I0[6] -pin t2b_inst|binary_start_i49_i O[6]
load net t2b_inst|thermometer_start_i[31] -attr @rip thermometer_start_i[31] -attr @name thermometer_start_i[31] -hierPin t2b_inst thermometer_start_i[31] -pin t2b_inst|binary_start_i38_i I1
load net t2b_inst|binary_stop_i32[3] -attr @rip O[3] -attr @name binary_stop_i32[3] -pin t2b_inst|binary_stop_i31_i I1[3] -pin t2b_inst|binary_stop_i32_i__0 O[3]
load net t2b_inst|binary_start_i6[5] -attr @rip O[5] -attr @name binary_start_i6[5] -pin t2b_inst|binary_start_i5_i I0[5] -pin t2b_inst|binary_start_i6_i O[5]
load net start_i -pin hit_r_reg C -port start_i
netloc start_i 1 0 5 NJ 90 NJ 90 NJ 90 NJ 90 NJ
load net t2b_inst|thermometer_start_i[18] -attr @rip thermometer_start_i[18] -attr @name thermometer_start_i[18] -hierPin t2b_inst thermometer_start_i[18] -pin t2b_inst|binary_start_i51_i I1
load net t2b_inst|thermometer_stop_i[64] -attr @rip thermometer_stop_i[64] -attr @name thermometer_stop_i[64] -hierPin t2b_inst thermometer_stop_i[64] -pin t2b_inst|binary_stop_i6_i__0 I0
load net tdl_thermometer_start_val_w[44] -attr @rip thermometer_start_val_o[44] -pin t2b_inst thermometer_start_i[44] -pin tdl_inst thermometer_start_val_o[44]
load net t2b_inst|binary_stop_i15[3] -attr @rip O[3] -attr @name binary_stop_i15[3] -pin t2b_inst|binary_stop_i14_i I1[3] -pin t2b_inst|binary_stop_i15_i__0 O[3]
load net t2b_inst|binary_stop_i53[5] -attr @rip O[5] -attr @name binary_stop_i53[5] -pin t2b_inst|binary_stop_i52_i I1[5] -pin t2b_inst|binary_stop_i53_i__0 O[5]
load net t2b_inst|binary_stop_i29[1] -attr @rip O[1] -attr @name binary_stop_i29[1] -pin t2b_inst|binary_stop_i28_i I1[1] -pin t2b_inst|binary_stop_i29_i__0 O[1]
load net t2b_inst|thermometer_stop_i[66] -attr @rip thermometer_stop_i[66] -attr @name thermometer_stop_i[66] -hierPin t2b_inst thermometer_stop_i[66] -pin t2b_inst|binary_stop_i4_i__0 I0
load net t2b_inst|binary_stop_i13[6] -attr @rip O[6] -attr @name binary_stop_i13[6] -pin t2b_inst|binary_stop_i12_i I1[6] -pin t2b_inst|binary_stop_i13_i__0 O[6]
load net t2b_inst|binary_stop_i22_i_n_0 -attr @rip O[6] -attr @name binary_stop_i22_i_n_0 -pin t2b_inst|binary_stop_i21_i I0[6] -pin t2b_inst|binary_stop_i22_i O[6]
load net t2b_inst|binary_start_i2[2] -attr @rip O[2] -attr @name binary_start_i2[2] -pin t2b_inst|binary_start_i1_i I0[2] -pin t2b_inst|binary_start_i2_i O[2]
load net t2b_inst|binary_stop_i63[0] -attr @rip O[0] -attr @name binary_stop_i63[0] -pin t2b_inst|binary_stop_i62_i I1[0] -pin t2b_inst|binary_stop_i63_i__0 O[0]
load net tdl_thermometer_stop_val_w[68] -attr @rip thermometer_stop_val_o[68] -pin t2b_inst thermometer_stop_i[68] -pin tdl_inst thermometer_stop_val_o[68]
load net t2b_inst|binary_start_i46[3] -attr @rip O[3] -attr @name binary_start_i46[3] -pin t2b_inst|binary_start_i45_i I0[3] -pin t2b_inst|binary_start_i46_i O[3]
load net t2b_inst|binary_stop_i22_i_n_1 -attr @rip O[5] -attr @name binary_stop_i22_i_n_1 -pin t2b_inst|binary_stop_i21_i I0[5] -pin t2b_inst|binary_stop_i22_i O[5]
load net measurement_o[17] -attr @rip tdc_measure_o[17] -port measurement_o[17] -pin merge_inst tdc_measure_o[17]
load net t2b_inst|binary_stop_i22_i_n_2 -attr @rip O[4] -attr @name binary_stop_i22_i_n_2 -pin t2b_inst|binary_stop_i21_i I0[4] -pin t2b_inst|binary_stop_i22_i O[4]
load net t2b_inst|binary_start_i26[6] -attr @rip O[6] -attr @name binary_start_i26[6] -pin t2b_inst|binary_start_i25_i I0[6] -pin t2b_inst|binary_start_i26_i O[6]
load net tdl_thermometer_start_val_w[3] -attr @rip thermometer_start_val_o[3] -pin t2b_inst thermometer_start_i[3] -pin tdl_inst thermometer_start_val_o[3]
load net t2b_inst|binary_stop_i22_i_n_3 -attr @rip O[3] -attr @name binary_stop_i22_i_n_3 -pin t2b_inst|binary_stop_i21_i I0[3] -pin t2b_inst|binary_stop_i22_i O[3]
load net t2b_inst|binary_stop_i34_i_n_0 -attr @rip O[6] -attr @name binary_stop_i34_i_n_0 -pin t2b_inst|binary_stop_i33_i I0[6] -pin t2b_inst|binary_stop_i34_i O[6]
load net t2b_inst|binary_stop_i3[3] -attr @rip O[3] -attr @name binary_stop_i3[3] -pin t2b_inst|binary_stop_i2_i I1[3] -pin t2b_inst|binary_stop_i3_i__0 O[3]
load net t2b_inst|binary_stop_i51[6] -attr @rip O[6] -attr @name binary_stop_i51[6] -pin t2b_inst|binary_stop_i50_i I1[6] -pin t2b_inst|binary_stop_i51_i__0 O[6]
load net t2b_inst|binary_start_i27[3] -attr @rip O[3] -attr @name binary_start_i27[3] -pin t2b_inst|binary_start_i26_i I0[3] -pin t2b_inst|binary_start_i27_i O[3]
load net t2b_inst|binary_start_i19[4] -attr @rip O[4] -attr @name binary_start_i19[4] -pin t2b_inst|binary_start_i18_i I0[4] -pin t2b_inst|binary_start_i19_i O[4]
load net t2b_inst|binary_stop_i22_i_n_4 -attr @rip O[2] -attr @name binary_stop_i22_i_n_4 -pin t2b_inst|binary_stop_i21_i I0[2] -pin t2b_inst|binary_stop_i22_i O[2]
load net tdl_thermometer_start_val_w[65] -attr @rip thermometer_start_val_o[65] -pin t2b_inst thermometer_start_i[65] -pin tdl_inst thermometer_start_val_o[65]
load net t2b_inst|binary_stop_i34_i_n_1 -attr @rip O[5] -attr @name binary_stop_i34_i_n_1 -pin t2b_inst|binary_stop_i33_i I0[5] -pin t2b_inst|binary_stop_i34_i O[5]
load net t2b_inst|binary_stop_i39_i_n_0 -attr @rip O[6] -attr @name binary_stop_i39_i_n_0 -pin t2b_inst|binary_stop_i38_i I0[6] -pin t2b_inst|binary_stop_i39_i O[6]
load net t2b_inst|thermometer_stop_i[3] -attr @rip thermometer_stop_i[3] -attr @name thermometer_stop_i[3] -hierPin t2b_inst thermometer_stop_i[3] -pin t2b_inst|binary_stop_i67_i__0 I0
load net t2b_inst|binary_start_i9[4] -attr @rip O[4] -attr @name binary_start_i9[4] -pin t2b_inst|binary_start_i8_i I0[4] -pin t2b_inst|binary_start_i9_i O[4]
load net t2b_inst|binary_stop_i22_i_n_5 -attr @rip O[1] -attr @name binary_stop_i22_i_n_5 -pin t2b_inst|binary_stop_i21_i I0[1] -pin t2b_inst|binary_stop_i22_i O[1]
load net t2b_inst|binary_stop_i21[5] -attr @rip O[5] -attr @name binary_stop_i21[5] -pin t2b_inst|binary_stop_i20_i I1[5] -pin t2b_inst|binary_stop_i21_i__0 O[5]
load net t2b_inst|binary_stop_i34_i_n_2 -attr @rip O[4] -attr @name binary_stop_i34_i_n_2 -pin t2b_inst|binary_stop_i33_i I0[4] -pin t2b_inst|binary_stop_i34_i O[4]
load net t2b_inst|binary_stop_i39_i_n_1 -attr @rip O[5] -attr @name binary_stop_i39_i_n_1 -pin t2b_inst|binary_stop_i38_i I0[5] -pin t2b_inst|binary_stop_i39_i O[5]
load net t2b_inst|binary_stop_i64_i_n_0 -attr @rip O[6] -attr @name binary_stop_i64_i_n_0 -pin t2b_inst|binary_stop_i63_i I0[6] -pin t2b_inst|binary_stop_i64_i O[6]
load net t2b_inst|thermometer_stop_i[28] -attr @rip thermometer_stop_i[28] -attr @name thermometer_stop_i[28] -hierPin t2b_inst thermometer_stop_i[28] -pin t2b_inst|binary_stop_i42_i__0 I0
load net t2b_inst|binary_stop_i22_i_n_6 -attr @rip O[0] -attr @name binary_stop_i22_i_n_6 -pin t2b_inst|binary_stop_i21_i I0[0] -pin t2b_inst|binary_stop_i22_i O[0]
load net t2b_inst|binary_stop_i30[5] -attr @rip O[5] -attr @name binary_stop_i30[5] -pin t2b_inst|binary_stop_i29_i I1[5] -pin t2b_inst|binary_stop_i30_i__0 O[5]
load net t2b_inst|binary_stop_i34_i_n_3 -attr @rip O[3] -attr @name binary_stop_i34_i_n_3 -pin t2b_inst|binary_stop_i33_i I0[3] -pin t2b_inst|binary_stop_i34_i O[3]
load net t2b_inst|binary_stop_i39_i_n_2 -attr @rip O[4] -attr @name binary_stop_i39_i_n_2 -pin t2b_inst|binary_stop_i38_i I0[4] -pin t2b_inst|binary_stop_i39_i O[4]
load net t2b_inst|binary_stop_i64_i_n_1 -attr @rip O[5] -attr @name binary_stop_i64_i_n_1 -pin t2b_inst|binary_stop_i63_i I0[5] -pin t2b_inst|binary_stop_i64_i O[5]
load net t2b_inst|binary_start_i49[5] -attr @rip O[5] -attr @name binary_start_i49[5] -pin t2b_inst|binary_start_i48_i I0[5] -pin t2b_inst|binary_start_i49_i O[5]
load net t2b_inst|binary_stop_i34_i_n_4 -attr @rip O[2] -attr @name binary_stop_i34_i_n_4 -pin t2b_inst|binary_stop_i33_i I0[2] -pin t2b_inst|binary_stop_i34_i O[2]
load net t2b_inst|binary_stop_i39_i_n_3 -attr @rip O[3] -attr @name binary_stop_i39_i_n_3 -pin t2b_inst|binary_stop_i38_i I0[3] -pin t2b_inst|binary_stop_i39_i O[3]
load net t2b_inst|binary_stop_i64_i_n_2 -attr @rip O[4] -attr @name binary_stop_i64_i_n_2 -pin t2b_inst|binary_stop_i63_i I0[4] -pin t2b_inst|binary_stop_i64_i O[4]
load net t2b_inst|binary_stop_i30_i_n_0 -attr @rip O[6] -attr @name binary_stop_i30_i_n_0 -pin t2b_inst|binary_stop_i29_i I0[6] -pin t2b_inst|binary_stop_i30_i O[6]
load net t2b_inst|binary_stop_i34_i_n_5 -attr @rip O[1] -attr @name binary_stop_i34_i_n_5 -pin t2b_inst|binary_stop_i33_i I0[1] -pin t2b_inst|binary_stop_i34_i O[1]
load net t2b_inst|binary_stop_i39_i_n_4 -attr @rip O[2] -attr @name binary_stop_i39_i_n_4 -pin t2b_inst|binary_stop_i38_i I0[2] -pin t2b_inst|binary_stop_i39_i O[2]
load net t2b_inst|binary_stop_i64_i_n_3 -attr @rip O[3] -attr @name binary_stop_i64_i_n_3 -pin t2b_inst|binary_stop_i63_i I0[3] -pin t2b_inst|binary_stop_i64_i O[3]
load net t2b_inst|binary_start_i6[4] -attr @rip O[4] -attr @name binary_start_i6[4] -pin t2b_inst|binary_start_i5_i I0[4] -pin t2b_inst|binary_start_i6_i O[4]
load net t2b_inst|binary_stop_i30_i_n_1 -attr @rip O[5] -attr @name binary_stop_i30_i_n_1 -pin t2b_inst|binary_stop_i29_i I0[5] -pin t2b_inst|binary_stop_i30_i O[5]
load net t2b_inst|binary_stop_i34_i_n_6 -attr @rip O[0] -attr @name binary_stop_i34_i_n_6 -pin t2b_inst|binary_stop_i33_i I0[0] -pin t2b_inst|binary_stop_i34_i O[0]
load net t2b_inst|binary_stop_i39_i_n_5 -attr @rip O[1] -attr @name binary_stop_i39_i_n_5 -pin t2b_inst|binary_stop_i38_i I0[1] -pin t2b_inst|binary_stop_i39_i O[1]
load net t2b_inst|binary_stop_i64_i_n_4 -attr @rip O[2] -attr @name binary_stop_i64_i_n_4 -pin t2b_inst|binary_stop_i63_i I0[2] -pin t2b_inst|binary_stop_i64_i O[2]
load net t2b_inst|thermometer_start_i[32] -attr @rip thermometer_start_i[32] -attr @name thermometer_start_i[32] -hierPin t2b_inst thermometer_start_i[32] -pin t2b_inst|binary_start_i37_i I1
load net t2b_inst|binary_start_i65[4] -attr @rip O[4] -attr @name binary_start_i65[4] -pin t2b_inst|binary_start_i64_i I0[4] -pin t2b_inst|binary_start_i65_i O[4]
load net measurement_o[10] -attr @rip tdc_measure_o[10] -port measurement_o[10] -pin merge_inst tdc_measure_o[10]
load net t2b_inst|binary_stop_i30_i_n_2 -attr @rip O[4] -attr @name binary_stop_i30_i_n_2 -pin t2b_inst|binary_stop_i29_i I0[4] -pin t2b_inst|binary_stop_i30_i O[4]
load net t2b_inst|binary_stop_i32[4] -attr @rip O[4] -attr @name binary_stop_i32[4] -pin t2b_inst|binary_stop_i31_i I1[4] -pin t2b_inst|binary_stop_i32_i__0 O[4]
load net t2b_inst|binary_stop_i39_i_n_6 -attr @rip O[0] -attr @name binary_stop_i39_i_n_6 -pin t2b_inst|binary_stop_i38_i I0[0] -pin t2b_inst|binary_stop_i39_i O[0]
load net t2b_inst|binary_stop_i64_i_n_5 -attr @rip O[1] -attr @name binary_stop_i64_i_n_5 -pin t2b_inst|binary_stop_i63_i I0[1] -pin t2b_inst|binary_stop_i64_i O[1]
load net tdl_thermometer_start_val_w[43] -attr @rip thermometer_start_val_o[43] -pin t2b_inst thermometer_start_i[43] -pin tdl_inst thermometer_start_val_o[43]
load net tdl_thermometer_stop_val_w[31] -attr @rip thermometer_stop_val_o[31] -pin t2b_inst thermometer_stop_i[31] -pin tdl_inst thermometer_stop_val_o[31]
load net max_cnt_w -pin error_inst max_cnt_o -pin tdc_rst_w_i I1
netloc max_cnt_w 1 3 1 NJ
load net t2b_inst|binary_stop_i30_i_n_3 -attr @rip O[3] -attr @name binary_stop_i30_i_n_3 -pin t2b_inst|binary_stop_i29_i I0[3] -pin t2b_inst|binary_stop_i30_i O[3]
load net t2b_inst|binary_stop_i64_i_n_6 -attr @rip O[0] -attr @name binary_stop_i64_i_n_6 -pin t2b_inst|binary_stop_i63_i I0[0] -pin t2b_inst|binary_stop_i64_i O[0]
load net t2b_inst|binary_stop_i29[0] -attr @rip O[0] -attr @name binary_stop_i29[0] -pin t2b_inst|binary_stop_i28_i I1[0] -pin t2b_inst|binary_stop_i29_i__0 O[0]
load net t2b_inst|binary_stop_i30_i_n_4 -attr @rip O[2] -attr @name binary_stop_i30_i_n_4 -pin t2b_inst|binary_stop_i29_i I0[2] -pin t2b_inst|binary_stop_i30_i O[2]
load net t2b_inst|thermometer_start_i[19] -attr @rip thermometer_start_i[19] -attr @name thermometer_start_i[19] -hierPin t2b_inst thermometer_start_i[19] -pin t2b_inst|binary_start_i50_i I1
load net t2b_inst|thermometer_stop_i[65] -attr @rip thermometer_stop_i[65] -attr @name thermometer_stop_i[65] -hierPin t2b_inst thermometer_stop_i[65] -pin t2b_inst|binary_stop_i5_i__0 I0
load net t2b_inst|binary_stop_i15[4] -attr @rip O[4] -attr @name binary_stop_i15[4] -pin t2b_inst|binary_stop_i14_i I1[4] -pin t2b_inst|binary_stop_i15_i__0 O[4]
load net t2b_inst|binary_stop_i30_i_n_5 -attr @rip O[1] -attr @name binary_stop_i30_i_n_5 -pin t2b_inst|binary_stop_i29_i I0[1] -pin t2b_inst|binary_stop_i30_i O[1]
load net t2b_inst|binary_stop_i53[6] -attr @rip O[6] -attr @name binary_stop_i53[6] -pin t2b_inst|binary_stop_i52_i I1[6] -pin t2b_inst|binary_stop_i53_i__0 O[6]
load net t2b_inst|binary_start_i61[4] -attr @rip O[4] -attr @name binary_start_i61[4] -pin t2b_inst|binary_start_i60_i I0[4] -pin t2b_inst|binary_start_i61_i O[4]
load net t2b_inst|binary_stop_i30_i_n_6 -attr @rip O[0] -attr @name binary_stop_i30_i_n_6 -pin t2b_inst|binary_stop_i29_i I0[0] -pin t2b_inst|binary_stop_i30_i O[0]
load net t2b_inst|thermometer_stop_i[21] -attr @rip thermometer_stop_i[21] -attr @name thermometer_stop_i[21] -hierPin t2b_inst thermometer_stop_i[21] -pin t2b_inst|binary_stop_i49_i__0 I0
load net t2b_inst|binary_start_i62[0] -attr @rip O[0] -attr @name binary_start_i62[0] -pin t2b_inst|binary_start_i61_i I0[0] -pin t2b_inst|binary_start_i62_i O[0]
load net t2b_inst|binary_start_i24[2] -attr @rip O[2] -attr @name binary_start_i24[2] -pin t2b_inst|binary_start_i23_i I0[2] -pin t2b_inst|binary_start_i24_i O[2]
load net tdl_thermometer_start_val_w[30] -attr @rip thermometer_start_val_o[30] -pin t2b_inst thermometer_start_i[30] -pin tdl_inst thermometer_start_val_o[30]
load net tdl_thermometer_stop_val_w[67] -attr @rip thermometer_stop_val_o[67] -pin t2b_inst thermometer_stop_i[67] -pin tdl_inst thermometer_stop_val_o[67]
load net t2b_inst|binary_start_i21[0] -attr @rip O[0] -attr @name binary_start_i21[0] -pin t2b_inst|binary_start_i20_i I0[0] -pin t2b_inst|binary_start_i21_i O[0]
load net t2b_inst|binary_start_i46[2] -attr @rip O[2] -attr @name binary_start_i46[2] -pin t2b_inst|binary_start_i45_i I0[2] -pin t2b_inst|binary_start_i46_i O[2]
load net t2b_inst|binary_start_i26[5] -attr @rip O[5] -attr @name binary_start_i26[5] -pin t2b_inst|binary_start_i25_i I0[5] -pin t2b_inst|binary_start_i26_i O[5]
load net t2b_inst|binary_start_i2[3] -attr @rip O[3] -attr @name binary_start_i2[3] -pin t2b_inst|binary_start_i1_i I0[3] -pin t2b_inst|binary_start_i2_i O[3]
load net tdl_thermometer_start_val_w[2] -attr @rip thermometer_start_val_o[2] -pin t2b_inst thermometer_start_i[2] -pin tdl_inst thermometer_start_val_o[2]
load net t2b_inst|binary_start_i27[2] -attr @rip O[2] -attr @name binary_start_i27[2] -pin t2b_inst|binary_start_i26_i I0[2] -pin t2b_inst|binary_start_i27_i O[2]
load net t2b_inst|binary_start_i9[3] -attr @rip O[3] -attr @name binary_start_i9[3] -pin t2b_inst|binary_start_i8_i I0[3] -pin t2b_inst|binary_start_i9_i O[3]
load net t2b_inst|binary_stop_i21[4] -attr @rip O[4] -attr @name binary_stop_i21[4] -pin t2b_inst|binary_stop_i20_i I1[4] -pin t2b_inst|binary_stop_i21_i__0 O[4]
load net t2b_inst|binary_start_i19[5] -attr @rip O[5] -attr @name binary_start_i19[5] -pin t2b_inst|binary_start_i18_i I0[5] -pin t2b_inst|binary_start_i19_i O[5]
load net t2b_inst|thermometer_stop_i[4] -attr @rip thermometer_stop_i[4] -attr @name thermometer_stop_i[4] -hierPin t2b_inst thermometer_stop_i[4] -pin t2b_inst|binary_stop_i66_i__0 I0
load net t2b_inst|binary_stop_i3[6] -attr @rip O[6] -attr @name binary_stop_i3[6] -pin t2b_inst|binary_stop_i2_i I1[6] -pin t2b_inst|binary_stop_i3_i__0 O[6]
load net tdl_thermometer_start_val_w[68] -attr @rip thermometer_start_val_o[68] -pin t2b_inst thermometer_start_i[68] -pin tdl_inst thermometer_start_val_o[68]
load net t2b_inst|binary_stop_i30[6] -attr @rip O[6] -attr @name binary_stop_i30[6] -pin t2b_inst|binary_stop_i29_i I1[6] -pin t2b_inst|binary_stop_i30_i__0 O[6]
load net t2b_inst|binary_stop_i7[4] -attr @rip O[4] -attr @name binary_stop_i7[4] -pin t2b_inst|binary_stop_i6_i I1[4] -pin t2b_inst|binary_stop_i7_i__0 O[4]
load net t2b_inst|binary_start_i65[3] -attr @rip O[3] -attr @name binary_start_i65[3] -pin t2b_inst|binary_start_i64_i I0[3] -pin t2b_inst|binary_start_i65_i O[3]
load net t2b_inst|thermometer_start_i[16] -attr @rip thermometer_start_i[16] -attr @name thermometer_start_i[16] -hierPin t2b_inst thermometer_start_i[16] -pin t2b_inst|binary_start_i53_i I1
load net t2b_inst|binary_start_i56[1] -attr @rip O[1] -attr @name binary_start_i56[1] -pin t2b_inst|binary_start_i55_i I0[1] -pin t2b_inst|binary_start_i56_i O[1]
load net tdl_thermometer_start_val_w[42] -attr @rip thermometer_start_val_o[42] -pin t2b_inst thermometer_start_i[42] -pin tdl_inst thermometer_start_val_o[42]
load net tdl_thermometer_stop_val_w[30] -attr @rip thermometer_stop_val_o[30] -pin t2b_inst thermometer_stop_i[30] -pin tdl_inst thermometer_stop_val_o[30]
load net t2b_inst|binary_stop_i38[0] -attr @rip O[0] -attr @name binary_stop_i38[0] -pin t2b_inst|binary_stop_i37_i I1[0] -pin t2b_inst|binary_stop_i38_i__0 O[0]
load net t2b_inst|thermometer_start_i[33] -attr @rip thermometer_start_i[33] -attr @name thermometer_start_i[33] -hierPin t2b_inst thermometer_start_i[33] -pin t2b_inst|binary_start_i36_i I1
load net measurement_o[11] -attr @rip tdc_measure_o[11] -port measurement_o[11] -pin merge_inst tdc_measure_o[11]
load net t2b_inst|binary_stop_i48[5] -attr @rip O[5] -attr @name binary_stop_i48[5] -pin t2b_inst|binary_stop_i47_i I1[5] -pin t2b_inst|binary_stop_i48_i__0 O[5]
load net t2b_inst|binary_stop_i52_i_n_0 -attr @rip O[6] -attr @name binary_stop_i52_i_n_0 -pin t2b_inst|binary_stop_i51_i I0[6] -pin t2b_inst|binary_stop_i52_i O[6]
load net t2b_inst|binary_start_i61[3] -attr @rip O[3] -attr @name binary_start_i61[3] -pin t2b_inst|binary_start_i60_i I0[3] -pin t2b_inst|binary_start_i61_i O[3]
load net t2b_inst|binary_stop_i51[0] -attr @rip O[0] -attr @name binary_stop_i51[0] -pin t2b_inst|binary_stop_i50_i I1[0] -pin t2b_inst|binary_stop_i51_i__0 O[0]
load net t2b_inst|binary_stop_i52_i_n_1 -attr @rip O[5] -attr @name binary_stop_i52_i_n_1 -pin t2b_inst|binary_stop_i51_i I0[5] -pin t2b_inst|binary_stop_i52_i O[5]
load net t2b_inst|binary_stop_i15[5] -attr @rip O[5] -attr @name binary_stop_i15[5] -pin t2b_inst|binary_stop_i14_i I1[5] -pin t2b_inst|binary_stop_i15_i__0 O[5]
load net t2b_inst|binary_stop_i52_i_n_2 -attr @rip O[4] -attr @name binary_stop_i52_i_n_2 -pin t2b_inst|binary_stop_i51_i I0[4] -pin t2b_inst|binary_stop_i52_i O[4]
load net t2b_inst|binary_stop_i52_i_n_3 -attr @rip O[3] -attr @name binary_stop_i52_i_n_3 -pin t2b_inst|binary_stop_i51_i I0[3] -pin t2b_inst|binary_stop_i52_i O[3]
load net t2b_inst|binary_stop_i54_i_n_0 -attr @rip O[6] -attr @name binary_stop_i54_i_n_0 -pin t2b_inst|binary_stop_i53_i I0[6] -pin t2b_inst|binary_stop_i54_i O[6]
load net t2b_inst|thermometer_stop_i[22] -attr @rip thermometer_stop_i[22] -attr @name thermometer_stop_i[22] -hierPin t2b_inst thermometer_stop_i[22] -pin t2b_inst|binary_stop_i48_i__0 I0
load net t2b_inst|thermometer_stop_i[68] -attr @rip thermometer_stop_i[68] -attr @name thermometer_stop_i[68] -hierPin t2b_inst thermometer_stop_i[68] -pin t2b_inst|binary_stop_i2_i__0 I0
load net t2b_inst|binary_start_i26[4] -attr @rip O[4] -attr @name binary_start_i26[4] -pin t2b_inst|binary_start_i25_i I0[4] -pin t2b_inst|binary_start_i26_i O[4]
load net tdl_thermometer_stop_val_w[9] -attr @rip thermometer_stop_val_o[9] -pin t2b_inst thermometer_stop_i[9] -pin tdl_inst thermometer_stop_val_o[9]
load net t2b_inst|binary_start_i62[1] -attr @rip O[1] -attr @name binary_start_i62[1] -pin t2b_inst|binary_start_i61_i I0[1] -pin t2b_inst|binary_start_i62_i O[1]
load net t2b_inst|binary_start_i24[3] -attr @rip O[3] -attr @name binary_start_i24[3] -pin t2b_inst|binary_start_i23_i I0[3] -pin t2b_inst|binary_start_i24_i O[3]
load net t2b_inst|binary_stop_i36[0] -attr @rip O[0] -attr @name binary_stop_i36[0] -pin t2b_inst|binary_stop_i35_i I1[0] -pin t2b_inst|binary_stop_i36_i__0 O[0]
load net t2b_inst|binary_stop_i52_i_n_4 -attr @rip O[2] -attr @name binary_stop_i52_i_n_4 -pin t2b_inst|binary_stop_i51_i I0[2] -pin t2b_inst|binary_stop_i52_i O[2]
load net t2b_inst|binary_stop_i54_i_n_1 -attr @rip O[5] -attr @name binary_stop_i54_i_n_1 -pin t2b_inst|binary_stop_i53_i I0[5] -pin t2b_inst|binary_stop_i54_i O[5]
load net tdl_thermometer_start_val_w[1] -attr @rip thermometer_start_val_o[1] -pin t2b_inst thermometer_start_i[1] -pin tdl_inst thermometer_start_val_o[1]
load net tdl_thermometer_start_val_w[31] -attr @rip thermometer_start_val_o[31] -pin t2b_inst thermometer_start_i[31] -pin tdl_inst thermometer_start_val_o[31]
load net t2b_inst|binary_stop_i52_i_n_5 -attr @rip O[1] -attr @name binary_stop_i52_i_n_5 -pin t2b_inst|binary_stop_i51_i I0[1] -pin t2b_inst|binary_stop_i52_i O[1]
load net t2b_inst|binary_stop_i54_i_n_2 -attr @rip O[4] -attr @name binary_stop_i54_i_n_2 -pin t2b_inst|binary_stop_i53_i I0[4] -pin t2b_inst|binary_stop_i54_i O[4]
load net t2b_inst|binary_start_i27[1] -attr @rip O[1] -attr @name binary_start_i27[1] -pin t2b_inst|binary_start_i26_i I0[1] -pin t2b_inst|binary_start_i27_i O[1]
load net t2b_inst|binary_start_i62[3] -attr @rip O[3] -attr @name binary_start_i62[3] -pin t2b_inst|binary_start_i61_i I0[3] -pin t2b_inst|binary_start_i62_i O[3]
load net t2b_inst|binary_start_i2[4] -attr @rip O[4] -attr @name binary_start_i2[4] -pin t2b_inst|binary_start_i1_i I0[4] -pin t2b_inst|binary_start_i2_i O[4]
load net t2b_inst|binary_stop_i42[3] -attr @rip O[3] -attr @name binary_stop_i42[3] -pin t2b_inst|binary_stop_i41_i I1[3] -pin t2b_inst|binary_stop_i42_i__0 O[3]
load net t2b_inst|binary_stop_i52_i_n_6 -attr @rip O[0] -attr @name binary_stop_i52_i_n_6 -pin t2b_inst|binary_stop_i51_i I0[0] -pin t2b_inst|binary_stop_i52_i O[0]
load net t2b_inst|binary_stop_i54_i_n_3 -attr @rip O[3] -attr @name binary_stop_i54_i_n_3 -pin t2b_inst|binary_stop_i53_i I0[3] -pin t2b_inst|binary_stop_i54_i O[3]
load net t2b_inst|binary_start_i9[2] -attr @rip O[2] -attr @name binary_start_i9[2] -pin t2b_inst|binary_start_i8_i I0[2] -pin t2b_inst|binary_start_i9_i O[2]
load net t2b_inst|binary_stop_i21[3] -attr @rip O[3] -attr @name binary_stop_i21[3] -pin t2b_inst|binary_stop_i20_i I1[3] -pin t2b_inst|binary_stop_i21_i__0 O[3]
load net t2b_inst|binary_stop_i54_i_n_4 -attr @rip O[2] -attr @name binary_stop_i54_i_n_4 -pin t2b_inst|binary_stop_i53_i I0[2] -pin t2b_inst|binary_stop_i54_i O[2]
load net t2b_inst|binary_stop_i54_i_n_5 -attr @rip O[1] -attr @name binary_stop_i54_i_n_5 -pin t2b_inst|binary_stop_i53_i I0[1] -pin t2b_inst|binary_stop_i54_i O[1]
load net t2b_inst|binary_stop_i3[5] -attr @rip O[5] -attr @name binary_stop_i3[5] -pin t2b_inst|binary_stop_i2_i I1[5] -pin t2b_inst|binary_stop_i3_i__0 O[5]
load net t2b_inst|binary_stop_i54_i_n_6 -attr @rip O[0] -attr @name binary_stop_i54_i_n_6 -pin t2b_inst|binary_stop_i53_i I0[0] -pin t2b_inst|binary_stop_i54_i O[0]
load net tdl_thermometer_start_val_w[67] -attr @rip thermometer_start_val_o[67] -pin t2b_inst thermometer_start_i[67] -pin tdl_inst thermometer_start_val_o[67]
load net t2b_inst|binary_start_i19[6] -attr @rip O[6] -attr @name binary_start_i19[6] -pin t2b_inst|binary_start_i18_i I0[6] -pin t2b_inst|binary_start_i19_i O[6]
load net t2b_inst|binary_stop_i7[3] -attr @rip O[3] -attr @name binary_stop_i7[3] -pin t2b_inst|binary_stop_i6_i I1[3] -pin t2b_inst|binary_stop_i7_i__0 O[3]
load net tdl_thermometer_stop_val_w[43] -attr @rip thermometer_stop_val_o[43] -pin t2b_inst thermometer_stop_i[43] -pin tdl_inst thermometer_stop_val_o[43]
load net t2b_inst|binary_start_i13[1] -attr @rip O[1] -attr @name binary_start_i13[1] -pin t2b_inst|binary_start_i12_i I0[1] -pin t2b_inst|binary_start_i13_i O[1]
load net tdl_thermometer_start_val_w[41] -attr @rip thermometer_start_val_o[41] -pin t2b_inst thermometer_start_i[41] -pin tdl_inst thermometer_start_val_o[41]
load net t2b_inst|binary_stop_i65_i_n_0 -attr @rip O[6] -attr @name binary_stop_i65_i_n_0 -pin t2b_inst|binary_stop_i64_i I0[6] -pin t2b_inst|binary_stop_i65_i O[6]
load net t2b_inst|binary_stop_i22[6] -attr @rip O[6] -attr @name binary_stop_i22[6] -pin t2b_inst|binary_stop_i21_i I1[6] -pin t2b_inst|binary_stop_i22_i__0 O[6]
load net t2b_inst|binary_stop_i48[4] -attr @rip O[4] -attr @name binary_stop_i48[4] -pin t2b_inst|binary_stop_i47_i I1[4] -pin t2b_inst|binary_stop_i48_i__0 O[4]
load net t2b_inst|binary_stop_i65_i_n_1 -attr @rip O[5] -attr @name binary_stop_i65_i_n_1 -pin t2b_inst|binary_stop_i64_i I0[5] -pin t2b_inst|binary_stop_i65_i O[5]
load net t2b_inst|thermometer_start_i[17] -attr @rip thermometer_start_i[17] -attr @name thermometer_start_i[17] -hierPin t2b_inst thermometer_start_i[17] -pin t2b_inst|binary_start_i52_i I1
load net t2b_inst|binary_start_i56[2] -attr @rip O[2] -attr @name binary_start_i56[2] -pin t2b_inst|binary_start_i55_i I0[2] -pin t2b_inst|binary_start_i56_i O[2]
load net t2b_inst|binary_start_i40[6] -attr @rip O[6] -attr @name binary_start_i40[6] -pin t2b_inst|binary_start_i39_i I0[6] -pin t2b_inst|binary_start_i40_i O[6]
load net t2b_inst|binary_stop_i38[1] -attr @rip O[1] -attr @name binary_stop_i38[1] -pin t2b_inst|binary_stop_i37_i I1[1] -pin t2b_inst|binary_stop_i38_i__0 O[1]
load net t2b_inst|binary_stop_i65_i_n_2 -attr @rip O[4] -attr @name binary_stop_i65_i_n_2 -pin t2b_inst|binary_stop_i64_i I0[4] -pin t2b_inst|binary_stop_i65_i O[4]
load net measurement_o[12] -attr @rip tdc_measure_o[12] -port measurement_o[12] -pin merge_inst tdc_measure_o[12]
load net t2b_inst|binary_stop_i65_i_n_3 -attr @rip O[3] -attr @name binary_stop_i65_i_n_3 -pin t2b_inst|binary_stop_i64_i I0[3] -pin t2b_inst|binary_stop_i65_i O[3]
load net tdl_thermometer_stop_val_w[33] -attr @rip thermometer_stop_val_o[33] -pin t2b_inst thermometer_stop_i[33] -pin tdl_inst thermometer_stop_val_o[33]
load net t2b_inst|binary_start_i24[0] -attr @rip O[0] -attr @name binary_start_i24[0] -pin t2b_inst|binary_start_i23_i I0[0] -pin t2b_inst|binary_start_i24_i O[0]
load net t2b_inst|binary_stop_i65_i_n_4 -attr @rip O[2] -attr @name binary_stop_i65_i_n_4 -pin t2b_inst|binary_stop_i64_i I0[2] -pin t2b_inst|binary_stop_i65_i O[2]
load net t2b_inst|binary_stop_i51[1] -attr @rip O[1] -attr @name binary_stop_i51[1] -pin t2b_inst|binary_stop_i50_i I1[1] -pin t2b_inst|binary_stop_i51_i__0 O[1]
load net t2b_inst|binary_stop_i65_i_n_5 -attr @rip O[1] -attr @name binary_stop_i65_i_n_5 -pin t2b_inst|binary_stop_i64_i I0[1] -pin t2b_inst|binary_stop_i65_i O[1]
load net t2b_inst|thermometer_stop_i[67] -attr @rip thermometer_stop_i[67] -attr @name thermometer_stop_i[67] -hierPin t2b_inst thermometer_stop_i[67] -pin t2b_inst|binary_stop_i3_i__0 I0
load net t2b_inst|binary_start_i26[3] -attr @rip O[3] -attr @name binary_start_i26[3] -pin t2b_inst|binary_start_i25_i I0[3] -pin t2b_inst|binary_start_i26_i O[3]
load net t2b_inst|binary_stop_i15[6] -attr @rip O[6] -attr @name binary_stop_i15[6] -pin t2b_inst|binary_stop_i14_i I1[6] -pin t2b_inst|binary_stop_i15_i__0 O[6]
load net t2b_inst|binary_stop_i65_i_n_6 -attr @rip O[0] -attr @name binary_stop_i65_i_n_6 -pin t2b_inst|binary_stop_i64_i I0[0] -pin t2b_inst|binary_stop_i65_i O[0]
load net t2b_inst|binary_start_i61[6] -attr @rip O[6] -attr @name binary_start_i61[6] -pin t2b_inst|binary_start_i60_i I0[6] -pin t2b_inst|binary_start_i61_i O[6]
load net t2b_inst|binary_stop_i16[5] -attr @rip O[5] -attr @name binary_stop_i16[5] -pin t2b_inst|binary_stop_i15_i I1[5] -pin t2b_inst|binary_stop_i16_i__0 O[5]
load net t2b_inst|binary_stop_i3[0] -attr @rip O[0] -attr @name binary_stop_i3[0] -pin t2b_inst|binary_stop_i2_i I1[0] -pin t2b_inst|binary_stop_i3_i__0 O[0]
load net t2b_inst|thermometer_stop_i[23] -attr @rip thermometer_stop_i[23] -attr @name thermometer_stop_i[23] -hierPin t2b_inst thermometer_stop_i[23] -pin t2b_inst|binary_stop_i47_i__0 I0
load net t2b_inst|binary_start_i62[2] -attr @rip O[2] -attr @name binary_start_i62[2] -pin t2b_inst|binary_start_i61_i I0[2] -pin t2b_inst|binary_start_i62_i O[2]
load net t2b_inst|binary_stop_i36[1] -attr @rip O[1] -attr @name binary_stop_i36[1] -pin t2b_inst|binary_stop_i35_i I1[1] -pin t2b_inst|binary_stop_i36_i__0 O[1]
load net t2b_inst|binary_stop_i42[2] -attr @rip O[2] -attr @name binary_stop_i42[2] -pin t2b_inst|binary_stop_i41_i I1[2] -pin t2b_inst|binary_stop_i42_i__0 O[2]
load net t2b_inst|binary_stop_i45[2] -attr @rip O[2] -attr @name binary_stop_i45[2] -pin t2b_inst|binary_stop_i44_i I1[2] -pin t2b_inst|binary_stop_i45_i__0 O[2]
load net tdl_thermometer_stop_val_w[69] -attr @rip thermometer_stop_val_o[69] -pin t2b_inst thermometer_stop_i[69] -pin tdl_inst thermometer_stop_val_o[69]
load net t2b_inst|binary_start_i9[1] -attr @rip O[1] -attr @name binary_start_i9[1] -pin t2b_inst|binary_start_i8_i I0[1] -pin t2b_inst|binary_start_i9_i O[1]
load net t2b_inst|binary_stop_i21[2] -attr @rip O[2] -attr @name binary_stop_i21[2] -pin t2b_inst|binary_stop_i20_i I1[2] -pin t2b_inst|binary_stop_i21_i__0 O[2]
load net t2b_inst|binary_start_i2[5] -attr @rip O[5] -attr @name binary_start_i2[5] -pin t2b_inst|binary_start_i1_i I0[5] -pin t2b_inst|binary_start_i2_i O[5]
load net t2b_inst|binary_stop_i38_i_n_0 -attr @rip O[6] -attr @name binary_stop_i38_i_n_0 -pin t2b_inst|binary_stop_i37_i I0[6] -pin t2b_inst|binary_stop_i38_i O[6]
load net t2b_inst|binary_stop_i10[0] -attr @rip O[0] -attr @name binary_stop_i10[0] -pin t2b_inst|binary_stop_i10_i__0 O[0] -pin t2b_inst|binary_stop_i9_i I1[0]
load net t2b_inst|binary_start_i13[0] -attr @rip O[0] -attr @name binary_start_i13[0] -pin t2b_inst|binary_start_i12_i I0[0] -pin t2b_inst|binary_start_i13_i O[0]
load net tdl_thermometer_start_val_w[8] -attr @rip thermometer_start_val_o[8] -pin t2b_inst thermometer_start_i[8] -pin tdl_inst thermometer_start_val_o[8]
load net tdl_thermometer_stop_val_w[44] -attr @rip thermometer_stop_val_o[44] -pin t2b_inst thermometer_stop_i[44] -pin tdl_inst thermometer_stop_val_o[44]
load net t2b_inst|binary_stop_i38_i_n_1 -attr @rip O[5] -attr @name binary_stop_i38_i_n_1 -pin t2b_inst|binary_stop_i37_i I0[5] -pin t2b_inst|binary_stop_i38_i O[5]
load net t2b_inst|binary_stop_i38_i_n_2 -attr @rip O[4] -attr @name binary_stop_i38_i_n_2 -pin t2b_inst|binary_stop_i37_i I0[4] -pin t2b_inst|binary_stop_i38_i O[4]
load net t2b_inst|binary_stop_i48[3] -attr @rip O[3] -attr @name binary_stop_i48[3] -pin t2b_inst|binary_stop_i47_i I1[3] -pin t2b_inst|binary_stop_i48_i__0 O[3]
load net t2b_inst|binary_stop_i7[6] -attr @rip O[6] -attr @name binary_stop_i7[6] -pin t2b_inst|binary_stop_i6_i I1[6] -pin t2b_inst|binary_stop_i7_i__0 O[6]
load net t2b_inst|thermometer_stop_i[55] -attr @rip thermometer_stop_i[55] -attr @name thermometer_stop_i[55] -hierPin t2b_inst thermometer_stop_i[55] -pin t2b_inst|binary_stop_i15_i__0 I0
load net t2b_inst|binary_stop_i38_i_n_3 -attr @rip O[3] -attr @name binary_stop_i38_i_n_3 -pin t2b_inst|binary_stop_i37_i I0[3] -pin t2b_inst|binary_stop_i38_i O[3]
load net t2b_inst|binary_stop_i58_i_n_0 -attr @rip O[6] -attr @name binary_stop_i58_i_n_0 -pin t2b_inst|binary_stop_i57_i I0[6] -pin t2b_inst|binary_stop_i58_i O[6]
load net t2b_inst|binary_stop_i38_i_n_4 -attr @rip O[2] -attr @name binary_stop_i38_i_n_4 -pin t2b_inst|binary_stop_i37_i I0[2] -pin t2b_inst|binary_stop_i38_i O[2]
load net t2b_inst|binary_stop_i58_i_n_1 -attr @rip O[5] -attr @name binary_stop_i58_i_n_1 -pin t2b_inst|binary_stop_i57_i I0[5] -pin t2b_inst|binary_stop_i58_i O[5]
load net tdl_thermometer_stop_val_w[32] -attr @rip thermometer_stop_val_o[32] -pin t2b_inst thermometer_stop_i[32] -pin tdl_inst thermometer_stop_val_o[32]
load net t2b_inst|binary_stop_i38[2] -attr @rip O[2] -attr @name binary_stop_i38[2] -pin t2b_inst|binary_stop_i37_i I1[2] -pin t2b_inst|binary_stop_i38_i__0 O[2]
load net t2b_inst|binary_stop_i38_i_n_5 -attr @rip O[1] -attr @name binary_stop_i38_i_n_5 -pin t2b_inst|binary_stop_i37_i I0[1] -pin t2b_inst|binary_stop_i38_i O[1]
load net t2b_inst|binary_stop_i58_i_n_2 -attr @rip O[4] -attr @name binary_stop_i58_i_n_2 -pin t2b_inst|binary_stop_i57_i I0[4] -pin t2b_inst|binary_stop_i58_i O[4]
load net measurement_o[13] -attr @rip tdc_measure_o[13] -port measurement_o[13] -pin merge_inst tdc_measure_o[13]
load net tdl_thermometer_stop_val_w[64] -attr @rip thermometer_stop_val_o[64] -pin t2b_inst thermometer_stop_i[64] -pin tdl_inst thermometer_stop_val_o[64]
load net t2b_inst|binary_stop_i38_i_n_6 -attr @rip O[0] -attr @name binary_stop_i38_i_n_6 -pin t2b_inst|binary_stop_i37_i I0[0] -pin t2b_inst|binary_stop_i38_i O[0]
load net t2b_inst|binary_stop_i58_i_n_3 -attr @rip O[3] -attr @name binary_stop_i58_i_n_3 -pin t2b_inst|binary_stop_i57_i I0[3] -pin t2b_inst|binary_stop_i58_i O[3]
load net t2b_inst|binary_start_i24[1] -attr @rip O[1] -attr @name binary_start_i24[1] -pin t2b_inst|binary_start_i23_i I0[1] -pin t2b_inst|binary_start_i24_i O[1]
load net t2b_inst|binary_start_i26[2] -attr @rip O[2] -attr @name binary_start_i26[2] -pin t2b_inst|binary_start_i25_i I0[2] -pin t2b_inst|binary_start_i26_i O[2]
load net t2b_inst|binary_stop_i58_i_n_4 -attr @rip O[2] -attr @name binary_stop_i58_i_n_4 -pin t2b_inst|binary_stop_i57_i I0[2] -pin t2b_inst|binary_stop_i58_i O[2]
load net t2b_inst|binary_start_i61[5] -attr @rip O[5] -attr @name binary_start_i61[5] -pin t2b_inst|binary_start_i60_i I0[5] -pin t2b_inst|binary_start_i61_i O[5]
load net t2b_inst|binary_stop_i41[0] -attr @rip O[0] -attr @name binary_stop_i41[0] -pin t2b_inst|binary_stop_i40_i I1[0] -pin t2b_inst|binary_stop_i41_i__0 O[0]
load net t2b_inst|binary_stop_i51[2] -attr @rip O[2] -attr @name binary_stop_i51[2] -pin t2b_inst|binary_stop_i50_i I1[2] -pin t2b_inst|binary_stop_i51_i__0 O[2]
load net t2b_inst|binary_stop_i58_i_n_5 -attr @rip O[1] -attr @name binary_stop_i58_i_n_5 -pin t2b_inst|binary_stop_i57_i I0[1] -pin t2b_inst|binary_stop_i58_i O[1]
load net t2b_inst|binary_stop_i42[1] -attr @rip O[1] -attr @name binary_stop_i42[1] -pin t2b_inst|binary_stop_i41_i I1[1] -pin t2b_inst|binary_stop_i42_i__0 O[1]
load net t2b_inst|binary_stop_i45[1] -attr @rip O[1] -attr @name binary_stop_i45[1] -pin t2b_inst|binary_stop_i44_i I1[1] -pin t2b_inst|binary_stop_i45_i__0 O[1]
load net t2b_inst|binary_stop_i58_i_n_6 -attr @rip O[0] -attr @name binary_stop_i58_i_n_6 -pin t2b_inst|binary_stop_i57_i I0[0] -pin t2b_inst|binary_stop_i58_i O[0]
load net t2b_inst|binary_stop_i21[1] -attr @rip O[1] -attr @name binary_stop_i21[1] -pin t2b_inst|binary_stop_i20_i I1[1] -pin t2b_inst|binary_stop_i21_i__0 O[1]
load net t2b_inst|binary_stop_i16[6] -attr @rip O[6] -attr @name binary_stop_i16[6] -pin t2b_inst|binary_stop_i15_i I1[6] -pin t2b_inst|binary_stop_i16_i__0 O[6]
load net t2b_inst|binary_stop_i2[6] -attr @rip O[6] -attr @name binary_stop_i2[6] -pin t2b_inst|binary_stop_i1_i I1[6] -pin t2b_inst|binary_stop_i2_i__0 O[6]
load net t2b_inst|binary_stop_i32_i_n_0 -attr @rip O[6] -attr @name binary_stop_i32_i_n_0 -pin t2b_inst|binary_stop_i31_i I0[6] -pin t2b_inst|binary_stop_i32_i O[6]
load net t2b_inst|thermometer_stop_i[24] -attr @rip thermometer_stop_i[24] -attr @name thermometer_stop_i[24] -hierPin t2b_inst thermometer_stop_i[24] -pin t2b_inst|binary_stop_i46_i__0 I0
load net t2b_inst|binary_stop_i32_i_n_1 -attr @rip O[5] -attr @name binary_stop_i32_i_n_1 -pin t2b_inst|binary_stop_i31_i I0[5] -pin t2b_inst|binary_stop_i32_i O[5]
load net t2b_inst|binary_stop_i36[2] -attr @rip O[2] -attr @name binary_stop_i36[2] -pin t2b_inst|binary_stop_i35_i I1[2] -pin t2b_inst|binary_stop_i36_i__0 O[2]
load net t2b_inst|binary_stop_i32_i_n_2 -attr @rip O[4] -attr @name binary_stop_i32_i_n_2 -pin t2b_inst|binary_stop_i31_i I0[4] -pin t2b_inst|binary_stop_i32_i O[4]
load net t2b_inst|binary_stop_i5_i_n_0 -attr @rip O[6] -attr @name binary_stop_i5_i_n_0 -pin t2b_inst|binary_stop_i4_i I0[6] -pin t2b_inst|binary_stop_i5_i O[6]
load net t2b_inst|binary_start_i2[6] -attr @rip O[6] -attr @name binary_start_i2[6] -pin t2b_inst|binary_start_i1_i I0[6] -pin t2b_inst|binary_start_i2_i O[6]
load net t2b_inst|binary_start_i62[5] -attr @rip O[5] -attr @name binary_start_i62[5] -pin t2b_inst|binary_start_i61_i I0[5] -pin t2b_inst|binary_start_i62_i O[5]
load net t2b_inst|binary_stop_i32_i_n_3 -attr @rip O[3] -attr @name binary_stop_i32_i_n_3 -pin t2b_inst|binary_stop_i31_i I0[3] -pin t2b_inst|binary_stop_i32_i O[3]
load net t2b_inst|binary_stop_i5_i_n_1 -attr @rip O[5] -attr @name binary_stop_i5_i_n_1 -pin t2b_inst|binary_stop_i4_i I0[5] -pin t2b_inst|binary_stop_i5_i O[5]
load net t2b_inst|binary_stop_i63[4] -attr @rip O[4] -attr @name binary_stop_i63[4] -pin t2b_inst|binary_stop_i62_i I1[4] -pin t2b_inst|binary_stop_i63_i__0 O[4]
load net tdl_thermometer_stop_val_w[41] -attr @rip thermometer_stop_val_o[41] -pin t2b_inst thermometer_stop_i[41] -pin tdl_inst thermometer_stop_val_o[41]
load net t2b_inst|binary_stop_i32_i_n_4 -attr @rip O[2] -attr @name binary_stop_i32_i_n_4 -pin t2b_inst|binary_stop_i31_i I0[2] -pin t2b_inst|binary_stop_i32_i O[2]
load net t2b_inst|binary_stop_i5_i_n_2 -attr @rip O[4] -attr @name binary_stop_i5_i_n_2 -pin t2b_inst|binary_stop_i4_i I0[4] -pin t2b_inst|binary_stop_i5_i O[4]
load net t2b_inst|binary_start_i33[6] -attr @rip O[6] -attr @name binary_start_i33[6] -pin t2b_inst|binary_start_i32_i I0[6] -pin t2b_inst|binary_start_i33_i O[6]
load net t2b_inst|binary_stop_i32_i_n_5 -attr @rip O[1] -attr @name binary_stop_i32_i_n_5 -pin t2b_inst|binary_stop_i31_i I0[1] -pin t2b_inst|binary_stop_i32_i O[1]
load net t2b_inst|binary_stop_i5_i_n_3 -attr @rip O[3] -attr @name binary_stop_i5_i_n_3 -pin t2b_inst|binary_stop_i4_i I0[3] -pin t2b_inst|binary_stop_i5_i O[3]
load net tdl_thermometer_start_val_w[7] -attr @rip thermometer_start_val_o[7] -pin t2b_inst thermometer_start_i[7] -pin tdl_inst thermometer_start_val_o[7]
load net t2b_inst|binary_stop_i32_i_n_6 -attr @rip O[0] -attr @name binary_stop_i32_i_n_6 -pin t2b_inst|binary_stop_i31_i I0[0] -pin t2b_inst|binary_stop_i32_i O[0]
load net t2b_inst|binary_stop_i5_i_n_4 -attr @rip O[2] -attr @name binary_stop_i5_i_n_4 -pin t2b_inst|binary_stop_i4_i I0[2] -pin t2b_inst|binary_stop_i5_i O[2]
load net tdl_thermometer_start_val_w[69] -attr @rip thermometer_start_val_o[69] -pin t2b_inst thermometer_start_i[69] -pin tdl_inst thermometer_start_val_o[69]
load net t2b_inst|binary_stop_i48[2] -attr @rip O[2] -attr @name binary_stop_i48[2] -pin t2b_inst|binary_stop_i47_i I1[2] -pin t2b_inst|binary_stop_i48_i__0 O[2]
load net t2b_inst|binary_stop_i5_i_n_5 -attr @rip O[1] -attr @name binary_stop_i5_i_n_5 -pin t2b_inst|binary_stop_i4_i I0[1] -pin t2b_inst|binary_stop_i5_i O[1]
load net t2b_inst|binary_stop_i7[5] -attr @rip O[5] -attr @name binary_stop_i7[5] -pin t2b_inst|binary_stop_i6_i I1[5] -pin t2b_inst|binary_stop_i7_i__0 O[5]
load net t2b_inst|thermometer_stop_i[54] -attr @rip thermometer_stop_i[54] -attr @name thermometer_stop_i[54] -hierPin t2b_inst thermometer_stop_i[54] -pin t2b_inst|binary_stop_i16_i__0 I0
load net t2b_inst|binary_start_i56[0] -attr @rip O[0] -attr @name binary_start_i56[0] -pin t2b_inst|binary_start_i55_i I0[0] -pin t2b_inst|binary_start_i56_i O[0]
load net t2b_inst|binary_stop_i5_i_n_6 -attr @rip O[0] -attr @name binary_stop_i5_i_n_6 -pin t2b_inst|binary_stop_i4_i I0[0] -pin t2b_inst|binary_stop_i5_i O[0]
load net t2b_inst|binary_start_i13[3] -attr @rip O[3] -attr @name binary_start_i13[3] -pin t2b_inst|binary_start_i12_i I0[3] -pin t2b_inst|binary_start_i13_i O[3]
load net tdl_thermometer_stop_val_w[63] -attr @rip thermometer_stop_val_o[63] -pin t2b_inst thermometer_stop_i[63] -pin tdl_inst thermometer_stop_val_o[63]
load net t2b_inst|binary_stop_i38[3] -attr @rip O[3] -attr @name binary_stop_i38[3] -pin t2b_inst|binary_stop_i37_i I1[3] -pin t2b_inst|binary_stop_i38_i__0 O[3]
load net t2b_inst|binary_stop_i16[3] -attr @rip O[3] -attr @name binary_stop_i16[3] -pin t2b_inst|binary_stop_i15_i I1[3] -pin t2b_inst|binary_stop_i16_i__0 O[3]
load net tdl_thermometer_stop_val_w[35] -attr @rip thermometer_stop_val_o[35] -pin t2b_inst thermometer_stop_i[35] -pin tdl_inst thermometer_stop_val_o[35]
load net t2b_inst|binary_stop_i42[0] -attr @rip O[0] -attr @name binary_stop_i42[0] -pin t2b_inst|binary_stop_i41_i I1[0] -pin t2b_inst|binary_stop_i42_i__0 O[0]
load net t2b_inst|binary_stop_i47[0] -attr @rip O[0] -attr @name binary_stop_i47[0] -pin t2b_inst|binary_stop_i46_i I1[0] -pin t2b_inst|binary_stop_i47_i__0 O[0]
load net t2b_inst|binary_stop_i21[0] -attr @rip O[0] -attr @name binary_stop_i21[0] -pin t2b_inst|binary_stop_i20_i I1[0] -pin t2b_inst|binary_stop_i21_i__0 O[0]
load net t2b_inst|binary_stop_i2[5] -attr @rip O[5] -attr @name binary_stop_i2[5] -pin t2b_inst|binary_stop_i1_i I1[5] -pin t2b_inst|binary_stop_i2_i__0 O[5]
load net t2b_inst|binary_stop_i45_i_n_0 -attr @rip O[6] -attr @name binary_stop_i45_i_n_0 -pin t2b_inst|binary_stop_i44_i I0[6] -pin t2b_inst|binary_stop_i45_i O[6]
load net t2b_inst|binary_stop_i51[3] -attr @rip O[3] -attr @name binary_stop_i51[3] -pin t2b_inst|binary_stop_i50_i I1[3] -pin t2b_inst|binary_stop_i51_i__0 O[3]
load net t2b_inst|thermometer_stop_i[69] -attr @rip thermometer_stop_i[69] -attr @name thermometer_stop_i[69] -hierPin t2b_inst thermometer_stop_i[69] -pin t2b_inst|binary_stop_i1_i__0 I0
load net t2b_inst|binary_start_i27[0] -attr @rip O[0] -attr @name binary_start_i27[0] -pin t2b_inst|binary_start_i26_i I0[0] -pin t2b_inst|binary_start_i27_i O[0]
load net t2b_inst|binary_stop_i40[5] -attr @rip O[5] -attr @name binary_stop_i40[5] -pin t2b_inst|binary_stop_i39_i I1[5] -pin t2b_inst|binary_stop_i40_i__0 O[5]
load net t2b_inst|binary_stop_i45_i_n_1 -attr @rip O[5] -attr @name binary_stop_i45_i_n_1 -pin t2b_inst|binary_stop_i44_i I0[5] -pin t2b_inst|binary_stop_i45_i O[5]
load net t2b_inst|binary_stop_i3[2] -attr @rip O[2] -attr @name binary_stop_i3[2] -pin t2b_inst|binary_stop_i2_i I1[2] -pin t2b_inst|binary_stop_i3_i__0 O[2]
load net t2b_inst|binary_stop_i45_i_n_2 -attr @rip O[4] -attr @name binary_stop_i45_i_n_2 -pin t2b_inst|binary_stop_i44_i I0[4] -pin t2b_inst|binary_stop_i45_i O[4]
load net t2b_inst|binary_start_i62[4] -attr @rip O[4] -attr @name binary_start_i62[4] -pin t2b_inst|binary_start_i61_i I0[4] -pin t2b_inst|binary_start_i62_i O[4]
load net t2b_inst|binary_stop_i10[1] -attr @rip O[1] -attr @name binary_stop_i10[1] -pin t2b_inst|binary_stop_i10_i__0 O[1] -pin t2b_inst|binary_stop_i9_i I1[1]
load net t2b_inst|binary_stop_i36[3] -attr @rip O[3] -attr @name binary_stop_i36[3] -pin t2b_inst|binary_stop_i35_i I1[3] -pin t2b_inst|binary_stop_i36_i__0 O[3]
load net t2b_inst|binary_stop_i45[4] -attr @rip O[4] -attr @name binary_stop_i45[4] -pin t2b_inst|binary_stop_i44_i I1[4] -pin t2b_inst|binary_stop_i45_i__0 O[4]
load net t2b_inst|binary_stop_i45_i_n_3 -attr @rip O[3] -attr @name binary_stop_i45_i_n_3 -pin t2b_inst|binary_stop_i44_i I0[3] -pin t2b_inst|binary_stop_i45_i O[3]
load net t2b_inst|binary_stop_i63[3] -attr @rip O[3] -attr @name binary_stop_i63[3] -pin t2b_inst|binary_stop_i62_i I1[3] -pin t2b_inst|binary_stop_i63_i__0 O[3]
load net t2b_inst|binary_stop_i7[0] -attr @rip O[0] -attr @name binary_stop_i7[0] -pin t2b_inst|binary_stop_i6_i I1[0] -pin t2b_inst|binary_stop_i7_i__0 O[0]
load net stop_en_w -pin synchronizer_inst stop_en_o -pin tdl_inst store_stop_i
netloc stop_en_w 1 5 3 1230 380 NJ 380 2110
load net t2b_inst|binary_stop_i45_i_n_4 -attr @rip O[2] -attr @name binary_stop_i45_i_n_4 -pin t2b_inst|binary_stop_i44_i I0[2] -pin t2b_inst|binary_stop_i45_i O[2]
load net t2b_inst|binary_stop_i46_i_n_0 -attr @rip O[6] -attr @name binary_stop_i46_i_n_0 -pin t2b_inst|binary_stop_i45_i I0[6] -pin t2b_inst|binary_stop_i46_i O[6]
load net t2b_inst|binary_stop_i45_i_n_5 -attr @rip O[1] -attr @name binary_stop_i45_i_n_5 -pin t2b_inst|binary_stop_i44_i I0[1] -pin t2b_inst|binary_stop_i45_i O[1]
load net t2b_inst|binary_stop_i46_i_n_1 -attr @rip O[5] -attr @name binary_stop_i46_i_n_1 -pin t2b_inst|binary_stop_i45_i I0[5] -pin t2b_inst|binary_stop_i46_i O[5]
load net tdl_thermometer_start_val_w[6] -attr @rip thermometer_start_val_o[6] -pin t2b_inst thermometer_start_i[6] -pin tdl_inst thermometer_start_val_o[6]
load net tdl_thermometer_stop_val_w[42] -attr @rip thermometer_stop_val_o[42] -pin t2b_inst thermometer_stop_i[42] -pin tdl_inst thermometer_stop_val_o[42]
load net t2b_inst|binary_stop_i45_i_n_6 -attr @rip O[0] -attr @name binary_stop_i45_i_n_6 -pin t2b_inst|binary_stop_i44_i I0[0] -pin t2b_inst|binary_stop_i45_i O[0]
load net t2b_inst|binary_stop_i46_i_n_2 -attr @rip O[4] -attr @name binary_stop_i46_i_n_2 -pin t2b_inst|binary_stop_i45_i I0[4] -pin t2b_inst|binary_stop_i46_i O[4]
load net t2b_inst|binary_stop_i46_i_n_3 -attr @rip O[3] -attr @name binary_stop_i46_i_n_3 -pin t2b_inst|binary_stop_i45_i I0[3] -pin t2b_inst|binary_stop_i46_i O[3]
load net t2b_inst|binary_stop_i48[1] -attr @rip O[1] -attr @name binary_stop_i48[1] -pin t2b_inst|binary_stop_i47_i I1[1] -pin t2b_inst|binary_stop_i48_i__0 O[1]
load net t2b_inst|thermometer_stop_i[53] -attr @rip thermometer_stop_i[53] -attr @name thermometer_stop_i[53] -hierPin t2b_inst thermometer_stop_i[53] -pin t2b_inst|binary_stop_i17_i__0 I0
load net t2b_inst|binary_stop_i46_i_n_4 -attr @rip O[2] -attr @name binary_stop_i46_i_n_4 -pin t2b_inst|binary_stop_i45_i I0[2] -pin t2b_inst|binary_stop_i46_i O[2]
load net t2b_inst|binary_stop_i46_i_n_5 -attr @rip O[1] -attr @name binary_stop_i46_i_n_5 -pin t2b_inst|binary_stop_i45_i I0[1] -pin t2b_inst|binary_stop_i46_i O[1]
load net t2b_inst|binary_start_i13[2] -attr @rip O[2] -attr @name binary_start_i13[2] -pin t2b_inst|binary_start_i12_i I0[2] -pin t2b_inst|binary_start_i13_i O[2]
load net t2b_inst|binary_stop_i46_i_n_6 -attr @rip O[0] -attr @name binary_stop_i46_i_n_6 -pin t2b_inst|binary_stop_i45_i I0[0] -pin t2b_inst|binary_stop_i46_i O[0]
load net tdl_thermometer_stop_val_w[38] -attr @rip thermometer_stop_val_o[38] -pin t2b_inst thermometer_stop_i[38] -pin tdl_inst thermometer_stop_val_o[38]
load net t2b_inst|binary_stop_i35_i_n_0 -attr @rip O[6] -attr @name binary_stop_i35_i_n_0 -pin t2b_inst|binary_stop_i34_i I0[6] -pin t2b_inst|binary_stop_i35_i O[6]
load net t2b_inst|binary_stop_i35_i_n_1 -attr @rip O[5] -attr @name binary_stop_i35_i_n_1 -pin t2b_inst|binary_stop_i34_i I0[5] -pin t2b_inst|binary_stop_i35_i O[5]
load net t2b_inst|binary_start_i56[5] -attr @rip O[5] -attr @name binary_start_i56[5] -pin t2b_inst|binary_start_i55_i I0[5] -pin t2b_inst|binary_start_i56_i O[5]
load net tdl_thermometer_stop_val_w[34] -attr @rip thermometer_stop_val_o[34] -pin t2b_inst thermometer_stop_i[34] -pin tdl_inst thermometer_stop_val_o[34]
load net t2b_inst|binary_stop_i35_i_n_2 -attr @rip O[4] -attr @name binary_stop_i35_i_n_2 -pin t2b_inst|binary_stop_i34_i I0[4] -pin t2b_inst|binary_stop_i35_i O[4]
load net t2b_inst|binary_stop_i38[4] -attr @rip O[4] -attr @name binary_stop_i38[4] -pin t2b_inst|binary_stop_i37_i I1[4] -pin t2b_inst|binary_stop_i38_i__0 O[4]
load net t2b_inst|binary_stop_i16[4] -attr @rip O[4] -attr @name binary_stop_i16[4] -pin t2b_inst|binary_stop_i15_i I1[4] -pin t2b_inst|binary_stop_i16_i__0 O[4]
load net tdl_thermometer_stop_val_w[66] -attr @rip thermometer_stop_val_o[66] -pin t2b_inst thermometer_stop_i[66] -pin tdl_inst thermometer_stop_val_o[66]
load net t2b_inst|binary_stop_i2[4] -attr @rip O[4] -attr @name binary_stop_i2[4] -pin t2b_inst|binary_stop_i1_i I1[4] -pin t2b_inst|binary_stop_i2_i__0 O[4]
load net t2b_inst|binary_stop_i35_i_n_3 -attr @rip O[3] -attr @name binary_stop_i35_i_n_3 -pin t2b_inst|binary_stop_i34_i I0[3] -pin t2b_inst|binary_stop_i35_i O[3]
load net t2b_inst|binary_stop_i35_i_n_4 -attr @rip O[2] -attr @name binary_stop_i35_i_n_4 -pin t2b_inst|binary_stop_i34_i I0[2] -pin t2b_inst|binary_stop_i35_i O[2]
load net t2b_inst|binary_stop_i40[4] -attr @rip O[4] -attr @name binary_stop_i40[4] -pin t2b_inst|binary_stop_i39_i I1[4] -pin t2b_inst|binary_stop_i40_i__0 O[4]
load net tdl_thermometer_stop_val_w[28] -attr @rip thermometer_stop_val_o[28] -pin t2b_inst thermometer_stop_i[28] -pin tdl_inst thermometer_stop_val_o[28]
load net t2b_inst|binary_start_i9[0] -attr @rip O[0] -attr @name binary_start_i9[0] -pin t2b_inst|binary_start_i8_i I0[0] -pin t2b_inst|binary_start_i9_i O[0]
load net t2b_inst|binary_stop_i35_i_n_5 -attr @rip O[1] -attr @name binary_stop_i35_i_n_5 -pin t2b_inst|binary_stop_i34_i I0[1] -pin t2b_inst|binary_stop_i35_i O[1]
load net t2b_inst|binary_stop_i3[1] -attr @rip O[1] -attr @name binary_stop_i3[1] -pin t2b_inst|binary_stop_i2_i I1[1] -pin t2b_inst|binary_stop_i3_i__0 O[1]
load net t2b_inst|binary_stop_i41[2] -attr @rip O[2] -attr @name binary_stop_i41[2] -pin t2b_inst|binary_stop_i40_i I1[2] -pin t2b_inst|binary_stop_i41_i__0 O[2]
load net t2b_inst|binary_stop_i17[0] -attr @rip O[0] -attr @name binary_stop_i17[0] -pin t2b_inst|binary_stop_i16_i I1[0] -pin t2b_inst|binary_stop_i17_i__0 O[0]
load net t2b_inst|binary_stop_i35_i_n_6 -attr @rip O[0] -attr @name binary_stop_i35_i_n_6 -pin t2b_inst|binary_stop_i34_i I0[0] -pin t2b_inst|binary_stop_i35_i O[0]
load net t2b_inst|binary_stop_i45[3] -attr @rip O[3] -attr @name binary_stop_i45[3] -pin t2b_inst|binary_stop_i44_i I1[3] -pin t2b_inst|binary_stop_i45_i__0 O[3]
load net t2b_inst|binary_stop_i63[2] -attr @rip O[2] -attr @name binary_stop_i63[2] -pin t2b_inst|binary_stop_i62_i I1[2] -pin t2b_inst|binary_stop_i63_i__0 O[2]
load net t2b_inst|binary_stop_i10[2] -attr @rip O[2] -attr @name binary_stop_i10[2] -pin t2b_inst|binary_stop_i10_i__0 O[2] -pin t2b_inst|binary_stop_i9_i I1[2]
load net t2b_inst|binary_start_i33[4] -attr @rip O[4] -attr @name binary_start_i33[4] -pin t2b_inst|binary_start_i32_i I0[4] -pin t2b_inst|binary_start_i33_i O[4]
load net t2b_inst|binary_stop_i36[4] -attr @rip O[4] -attr @name binary_stop_i36[4] -pin t2b_inst|binary_stop_i35_i I1[4] -pin t2b_inst|binary_stop_i36_i__0 O[4]
load net tdl_thermometer_start_val_w[5] -attr @rip thermometer_start_val_o[5] -pin t2b_inst thermometer_start_i[5] -pin tdl_inst thermometer_start_val_o[5]
load net t2b_inst|binary_stop_i48[0] -attr @rip O[0] -attr @name binary_stop_i48[0] -pin t2b_inst|binary_stop_i47_i I1[0] -pin t2b_inst|binary_stop_i48_i__0 O[0]
load net t2b_inst|thermometer_stop_i[52] -attr @rip thermometer_stop_i[52] -attr @name thermometer_stop_i[52] -hierPin t2b_inst thermometer_stop_i[52] -pin t2b_inst|binary_stop_i18_i__0 I0
load net t2b_inst|binary_stop_i12[5] -attr @rip O[5] -attr @name binary_stop_i12[5] -pin t2b_inst|binary_stop_i11_i I1[5] -pin t2b_inst|binary_stop_i12_i__0 O[5]
load net t2b_inst|binary_stop_i61[2] -attr @rip O[2] -attr @name binary_stop_i61[2] -pin t2b_inst|binary_stop_i60_i I1[2] -pin t2b_inst|binary_stop_i61_i__0 O[2]
load net t2b_inst|binary_start_i18[0] -attr @rip O[0] -attr @name binary_start_i18[0] -pin t2b_inst|binary_start_i17_i I0[0] -pin t2b_inst|binary_start_i18_i O[0]
load net t2b_inst|binary_start_i52[2] -attr @rip O[2] -attr @name binary_start_i52[2] -pin t2b_inst|binary_start_i51_i I0[2] -pin t2b_inst|binary_start_i52_i O[2]
load net t2b_inst|binary_stop_i11_i_n_0 -attr @rip O[6] -attr @name binary_stop_i11_i_n_0 -pin t2b_inst|binary_stop_i10_i I0[6] -pin t2b_inst|binary_stop_i11_i O[6]
load net t2b_inst|binary_stop_i11_i_n_1 -attr @rip O[5] -attr @name binary_stop_i11_i_n_1 -pin t2b_inst|binary_stop_i10_i I0[5] -pin t2b_inst|binary_stop_i11_i O[5]
load net t2b_inst|binary_start_i34[5] -attr @rip O[5] -attr @name binary_start_i34[5] -pin t2b_inst|binary_start_i33_i I0[5] -pin t2b_inst|binary_start_i34_i O[5]
load net t2b_inst|binary_stop_i11_i_n_2 -attr @rip O[4] -attr @name binary_stop_i11_i_n_2 -pin t2b_inst|binary_stop_i10_i I0[4] -pin t2b_inst|binary_stop_i11_i O[4]
load net t2b_inst|binary_start_i14[4] -attr @rip O[4] -attr @name binary_start_i14[4] -pin t2b_inst|binary_start_i13_i I0[4] -pin t2b_inst|binary_start_i14_i O[4]
load net t2b_inst|binary_stop_i26[1] -attr @rip O[1] -attr @name binary_stop_i26[1] -pin t2b_inst|binary_stop_i25_i I1[1] -pin t2b_inst|binary_stop_i26_i__0 O[1]
load net t2b_inst|binary_stop_i11_i_n_3 -attr @rip O[3] -attr @name binary_stop_i11_i_n_3 -pin t2b_inst|binary_stop_i10_i I0[3] -pin t2b_inst|binary_stop_i11_i O[3]
load net t2b_inst|binary_stop_i11_i_n_4 -attr @rip O[2] -attr @name binary_stop_i11_i_n_4 -pin t2b_inst|binary_stop_i10_i I0[2] -pin t2b_inst|binary_stop_i11_i O[2]
load net tdl_thermometer_stop_val_w[39] -attr @rip thermometer_stop_val_o[39] -pin t2b_inst thermometer_stop_i[39] -pin tdl_inst thermometer_stop_val_o[39]
load net t2b_inst|binary_stop_i11_i_n_5 -attr @rip O[1] -attr @name binary_stop_i11_i_n_5 -pin t2b_inst|binary_stop_i10_i I0[1] -pin t2b_inst|binary_stop_i11_i O[1]
load net t2b_inst|binary_start_i13[5] -attr @rip O[5] -attr @name binary_start_i13[5] -pin t2b_inst|binary_start_i12_i I0[5] -pin t2b_inst|binary_start_i13_i O[5]
load net t2b_inst|binary_stop_i11_i_n_6 -attr @rip O[0] -attr @name binary_stop_i11_i_n_6 -pin t2b_inst|binary_stop_i10_i I0[0] -pin t2b_inst|binary_stop_i11_i O[0]
load net tdl_thermometer_stop_val_w[65] -attr @rip thermometer_stop_val_o[65] -pin t2b_inst thermometer_stop_i[65] -pin tdl_inst thermometer_stop_val_o[65]
load net t2b_inst|binary_stop_i2[3] -attr @rip O[3] -attr @name binary_stop_i2[3] -pin t2b_inst|binary_stop_i1_i I1[3] -pin t2b_inst|binary_stop_i2_i__0 O[3]
load net t2b_inst|binary_stop_i54[0] -attr @rip O[0] -attr @name binary_stop_i54[0] -pin t2b_inst|binary_stop_i53_i I1[0] -pin t2b_inst|binary_stop_i54_i__0 O[0]
load net t2b_inst|binary_start_i56[6] -attr @rip O[6] -attr @name binary_start_i56[6] -pin t2b_inst|binary_start_i55_i I0[6] -pin t2b_inst|binary_start_i56_i O[6]
load net t2b_inst|binary_stop_i38[5] -attr @rip O[5] -attr @name binary_stop_i38[5] -pin t2b_inst|binary_stop_i37_i I1[5] -pin t2b_inst|binary_stop_i38_i__0 O[5]
load net t2b_inst|binary_stop_i40[3] -attr @rip O[3] -attr @name binary_stop_i40[3] -pin t2b_inst|binary_stop_i39_i I1[3] -pin t2b_inst|binary_stop_i40_i__0 O[3]
load net t2b_inst|thermometer_start_i[38] -attr @rip thermometer_start_i[38] -attr @name thermometer_start_i[38] -hierPin t2b_inst thermometer_start_i[38] -pin t2b_inst|binary_start_i31_i I1
load net tdl_thermometer_stop_val_w[27] -attr @rip thermometer_stop_val_o[27] -pin t2b_inst thermometer_stop_i[27] -pin tdl_inst thermometer_stop_val_o[27]
load net t2b_inst|binary_stop_i41[1] -attr @rip O[1] -attr @name binary_stop_i41[1] -pin t2b_inst|binary_stop_i40_i I1[1] -pin t2b_inst|binary_stop_i41_i__0 O[1]
load net t2b_inst|binary_stop_i47[2] -attr @rip O[2] -attr @name binary_stop_i47[2] -pin t2b_inst|binary_stop_i46_i I1[2] -pin t2b_inst|binary_stop_i47_i__0 O[2]
load net t2b_inst|binary_stop_i63[1] -attr @rip O[1] -attr @name binary_stop_i63[1] -pin t2b_inst|binary_stop_i62_i I1[1] -pin t2b_inst|binary_stop_i63_i__0 O[1]
load net t2b_inst|binary_start_i23[6] -attr @rip O[6] -attr @name binary_start_i23[6] -pin t2b_inst|binary_start_i22_i I0[6] -pin t2b_inst|binary_start_i23_i O[6]
load net t2b_inst|binary_stop_i17[1] -attr @rip O[1] -attr @name binary_stop_i17[1] -pin t2b_inst|binary_stop_i16_i I1[1] -pin t2b_inst|binary_stop_i17_i__0 O[1]
load net t2b_inst|binary_start_i62[6] -attr @rip O[6] -attr @name binary_start_i62[6] -pin t2b_inst|binary_start_i61_i I0[6] -pin t2b_inst|binary_start_i62_i O[6]
load net t2b_inst|binary_stop_i10[3] -attr @rip O[3] -attr @name binary_stop_i10[3] -pin t2b_inst|binary_stop_i10_i__0 O[3] -pin t2b_inst|binary_stop_i9_i I1[3]
load net t2b_inst|binary_start_i33[5] -attr @rip O[5] -attr @name binary_start_i33[5] -pin t2b_inst|binary_start_i32_i I0[5] -pin t2b_inst|binary_start_i33_i O[5]
load net t2b_inst|binary_stop_i36[5] -attr @rip O[5] -attr @name binary_stop_i36[5] -pin t2b_inst|binary_stop_i35_i I1[5] -pin t2b_inst|binary_stop_i36_i__0 O[5]
load net t2b_inst|binary_stop_i42[6] -attr @rip O[6] -attr @name binary_stop_i42[6] -pin t2b_inst|binary_stop_i41_i I1[6] -pin t2b_inst|binary_stop_i42_i__0 O[6]
load net t2b_inst|binary_stop_i45[6] -attr @rip O[6] -attr @name binary_stop_i45[6] -pin t2b_inst|binary_stop_i44_i I1[6] -pin t2b_inst|binary_stop_i45_i__0 O[6]
load net t2b_inst|binary_stop_i7[2] -attr @rip O[2] -attr @name binary_stop_i7[2] -pin t2b_inst|binary_stop_i6_i I1[2] -pin t2b_inst|binary_stop_i7_i__0 O[2]
load net t2b_inst|thermometer_stop_i[51] -attr @rip thermometer_stop_i[51] -attr @name thermometer_stop_i[51] -hierPin t2b_inst thermometer_stop_i[51] -pin t2b_inst|binary_stop_i19_i__0 I0
load net t2b_inst|binary_stop_i61[1] -attr @rip O[1] -attr @name binary_stop_i61[1] -pin t2b_inst|binary_stop_i60_i I1[1] -pin t2b_inst|binary_stop_i61_i__0 O[1]
load net t2b_inst|binary_start_i52[1] -attr @rip O[1] -attr @name binary_start_i52[1] -pin t2b_inst|binary_start_i51_i I0[1] -pin t2b_inst|binary_start_i52_i O[1]
load net tdl_thermometer_start_val_w[28] -attr @rip thermometer_start_val_o[28] -pin t2b_inst thermometer_start_i[28] -pin tdl_inst thermometer_start_val_o[28]
load net t2b_inst|binary_stop_i12[6] -attr @rip O[6] -attr @name binary_stop_i12[6] -pin t2b_inst|binary_stop_i11_i I1[6] -pin t2b_inst|binary_stop_i12_i__0 O[6]
load net t2b_inst|binary_start_i17[1] -attr @rip O[1] -attr @name binary_start_i17[1] -pin t2b_inst|binary_start_i16_i I0[1] -pin t2b_inst|binary_start_i17_i O[1]
load net t2b_inst|binary_stop_i24[1] -attr @rip O[1] -attr @name binary_stop_i24[1] -pin t2b_inst|binary_stop_i23_i I1[1] -pin t2b_inst|binary_stop_i24_i__0 O[1]
load net tdl_thermometer_stop_val_w[36] -attr @rip thermometer_stop_val_o[36] -pin t2b_inst thermometer_stop_i[36] -pin tdl_inst thermometer_stop_val_o[36]
load net t2b_inst|binary_start_i14[3] -attr @rip O[3] -attr @name binary_start_i14[3] -pin t2b_inst|binary_start_i13_i I0[3] -pin t2b_inst|binary_start_i14_i O[3]
load net t2b_inst|binary_stop_i26[0] -attr @rip O[0] -attr @name binary_stop_i26[0] -pin t2b_inst|binary_stop_i25_i I1[0] -pin t2b_inst|binary_stop_i26_i__0 O[0]
load net nrst_i -pin cnt_nrst_w_i I0 -pin merge_inst nrst_i -port nrst_i -pin tdc_rst_w0_i I0
netloc nrst_i 1 0 8 20 280 190J 340 520 220 NJ 220 NJ 220 NJ 220 1670J 180 2170
load net t2b_inst|binary_start_i34[6] -attr @rip O[6] -attr @name binary_start_i34[6] -pin t2b_inst|binary_start_i33_i I0[6] -pin t2b_inst|binary_start_i34_i O[6]
load net t2b_inst|binary_start_i13[4] -attr @rip O[4] -attr @name binary_start_i13[4] -pin t2b_inst|binary_start_i12_i I0[4] -pin t2b_inst|binary_start_i13_i O[4]
load net t2b_inst|binary_start_i56[3] -attr @rip O[3] -attr @name binary_start_i56[3] -pin t2b_inst|binary_start_i55_i I0[3] -pin t2b_inst|binary_start_i56_i O[3]
load net t2b_inst|binary_stop_i2[2] -attr @rip O[2] -attr @name binary_stop_i2[2] -pin t2b_inst|binary_stop_i1_i I1[2] -pin t2b_inst|binary_stop_i2_i__0 O[2]
load net t2b_inst|binary_stop_i40[2] -attr @rip O[2] -attr @name binary_stop_i40[2] -pin t2b_inst|binary_stop_i39_i I1[2] -pin t2b_inst|binary_stop_i40_i__0 O[2]
load net t2b_inst|binary_stop_i38[6] -attr @rip O[6] -attr @name binary_stop_i38[6] -pin t2b_inst|binary_stop_i37_i I1[6] -pin t2b_inst|binary_stop_i38_i__0 O[6]
load net t2b_inst|binary_stop_i47[1] -attr @rip O[1] -attr @name binary_stop_i47[1] -pin t2b_inst|binary_stop_i46_i I1[1] -pin t2b_inst|binary_stop_i47_i__0 O[1]
load net t2b_inst|thermometer_start_i[39] -attr @rip thermometer_start_i[39] -attr @name thermometer_start_i[39] -hierPin t2b_inst thermometer_start_i[39] -pin t2b_inst|binary_start_i30_i I1
load net t2b_inst|binary_start_i23[5] -attr @rip O[5] -attr @name binary_start_i23[5] -pin t2b_inst|binary_start_i22_i I0[5] -pin t2b_inst|binary_start_i23_i O[5]
load net t2b_inst|binary_stop_i49_i_n_0 -attr @rip O[6] -attr @name binary_stop_i49_i_n_0 -pin t2b_inst|binary_stop_i48_i I0[6] -pin t2b_inst|binary_stop_i49_i O[6]
load net t2b_inst|binary_stop_i49_i_n_1 -attr @rip O[5] -attr @name binary_stop_i49_i_n_1 -pin t2b_inst|binary_stop_i48_i I0[5] -pin t2b_inst|binary_stop_i49_i O[5]
load net t2b_inst|binary_start_i52[3] -attr @rip O[3] -attr @name binary_start_i52[3] -pin t2b_inst|binary_start_i51_i I0[3] -pin t2b_inst|binary_start_i52_i O[3]
load net t2b_inst|binary_stop_i41[4] -attr @rip O[4] -attr @name binary_stop_i41[4] -pin t2b_inst|binary_stop_i40_i I1[4] -pin t2b_inst|binary_stop_i41_i__0 O[4]
load net t2b_inst|binary_stop_i49_i_n_2 -attr @rip O[4] -attr @name binary_stop_i49_i_n_2 -pin t2b_inst|binary_stop_i48_i I0[4] -pin t2b_inst|binary_stop_i49_i O[4]
load net t2b_inst|binary_stop_i42[5] -attr @rip O[5] -attr @name binary_stop_i42[5] -pin t2b_inst|binary_stop_i41_i I1[5] -pin t2b_inst|binary_stop_i42_i__0 O[5]
load net t2b_inst|binary_stop_i45[5] -attr @rip O[5] -attr @name binary_stop_i45[5] -pin t2b_inst|binary_stop_i44_i I1[5] -pin t2b_inst|binary_stop_i45_i__0 O[5]
load net t2b_inst|binary_stop_i49_i_n_3 -attr @rip O[3] -attr @name binary_stop_i49_i_n_3 -pin t2b_inst|binary_stop_i48_i I0[3] -pin t2b_inst|binary_stop_i49_i O[3]
load net t2b_inst|binary_stop_i7[1] -attr @rip O[1] -attr @name binary_stop_i7[1] -pin t2b_inst|binary_stop_i6_i I1[1] -pin t2b_inst|binary_stop_i7_i__0 O[1]
load net t2b_inst|thermometer_stop_i[50] -attr @rip thermometer_stop_i[50] -attr @name thermometer_stop_i[50] -hierPin t2b_inst thermometer_stop_i[50] -pin t2b_inst|binary_stop_i20_i__0 I0
load net t2b_inst|binary_stop_i12[3] -attr @rip O[3] -attr @name binary_stop_i12[3] -pin t2b_inst|binary_stop_i11_i I1[3] -pin t2b_inst|binary_stop_i12_i__0 O[3]
load net t2b_inst|binary_stop_i49_i_n_4 -attr @rip O[2] -attr @name binary_stop_i49_i_n_4 -pin t2b_inst|binary_stop_i48_i I0[2] -pin t2b_inst|binary_stop_i49_i O[2]
load net t2b_inst|binary_stop_i58[0] -attr @rip O[0] -attr @name binary_stop_i58[0] -pin t2b_inst|binary_stop_i57_i I1[0] -pin t2b_inst|binary_stop_i58_i__0 O[0]
load net t2b_inst|binary_stop_i61[0] -attr @rip O[0] -attr @name binary_stop_i61[0] -pin t2b_inst|binary_stop_i60_i I1[0] -pin t2b_inst|binary_stop_i61_i__0 O[0]
load net t2b_inst|thermometer_stop_i[31] -attr @rip thermometer_stop_i[31] -attr @name thermometer_stop_i[31] -hierPin t2b_inst thermometer_stop_i[31] -pin t2b_inst|binary_stop_i39_i__0 I0
load net t2b_inst|binary_start_i52[0] -attr @rip O[0] -attr @name binary_start_i52[0] -pin t2b_inst|binary_start_i51_i I0[0] -pin t2b_inst|binary_start_i52_i O[0]
load net en_tdc_i -port en_tdc_i -pin hit_r_reg CE -pin hit_r_reg D
netloc en_tdc_i 1 0 5 NJ 110 NJ 110 NJ 110 NJ 110 970
load net t2b_inst|binary_stop_i10[4] -attr @rip O[4] -attr @name binary_stop_i10[4] -pin t2b_inst|binary_stop_i10_i__0 O[4] -pin t2b_inst|binary_stop_i9_i I1[4]
load net tdl_thermometer_start_val_w[27] -attr @rip thermometer_start_val_o[27] -pin t2b_inst thermometer_start_i[27] -pin tdl_inst thermometer_start_val_o[27]
load net t2b_inst|binary_stop_i36[6] -attr @rip O[6] -attr @name binary_stop_i36[6] -pin t2b_inst|binary_stop_i35_i I1[6] -pin t2b_inst|binary_stop_i36_i__0 O[6]
load net t2b_inst|binary_stop_i49_i_n_5 -attr @rip O[1] -attr @name binary_stop_i49_i_n_5 -pin t2b_inst|binary_stop_i48_i I0[1] -pin t2b_inst|binary_stop_i49_i O[1]
load net t2b_inst|binary_start_i34[3] -attr @rip O[3] -attr @name binary_start_i34[3] -pin t2b_inst|binary_start_i33_i I0[3] -pin t2b_inst|binary_start_i34_i O[3]
load net t2b_inst|binary_stop_i49_i_n_6 -attr @rip O[0] -attr @name binary_stop_i49_i_n_6 -pin t2b_inst|binary_stop_i48_i I0[0] -pin t2b_inst|binary_stop_i49_i O[0]
load net t2b_inst|binary_start_i48[6] -attr @rip O[6] -attr @name binary_start_i48[6] -pin t2b_inst|binary_start_i47_i I0[6] -pin t2b_inst|binary_start_i48_i O[6]
load net t2b_inst|binary_start_i17[0] -attr @rip O[0] -attr @name binary_start_i17[0] -pin t2b_inst|binary_start_i16_i I0[0] -pin t2b_inst|binary_start_i17_i O[0]
load net t2b_inst|binary_stop_i24[0] -attr @rip O[0] -attr @name binary_stop_i24[0] -pin t2b_inst|binary_stop_i23_i I1[0] -pin t2b_inst|binary_stop_i24_i__0 O[0]
load net t2b_inst|binary_start_i14[2] -attr @rip O[2] -attr @name binary_start_i14[2] -pin t2b_inst|binary_start_i13_i I0[2] -pin t2b_inst|binary_start_i14_i O[2]
load net tdc_rst_w0 -pin tdc_rst_w0_i O -pin tdc_rst_w_i I0
netloc tdc_rst_w0 1 3 1 810
load net t2b_inst|binary_stop_i50[0] -attr @rip O[0] -attr @name binary_stop_i50[0] -pin t2b_inst|binary_stop_i49_i I1[0] -pin t2b_inst|binary_stop_i50_i__0 O[0]
load net t2b_inst|binary_start_i33[1] -attr @rip O[1] -attr @name binary_start_i33[1] -pin t2b_inst|binary_start_i32_i I0[1] -pin t2b_inst|binary_start_i33_i O[1]
load net tdl_thermometer_stop_val_w[37] -attr @rip thermometer_stop_val_o[37] -pin t2b_inst thermometer_stop_i[37] -pin tdl_inst thermometer_stop_val_o[37]
load net t2b_inst|binary_start_i15[3] -attr @rip O[3] -attr @name binary_start_i15[3] -pin t2b_inst|binary_start_i14_i I0[3] -pin t2b_inst|binary_start_i15_i O[3]
load net t2b_inst|binary_stop_i26[3] -attr @rip O[3] -attr @name binary_stop_i26[3] -pin t2b_inst|binary_stop_i25_i I1[3] -pin t2b_inst|binary_stop_i26_i__0 O[3]
load net t2b_inst|binary_stop_i2[1] -attr @rip O[1] -attr @name binary_stop_i2[1] -pin t2b_inst|binary_stop_i1_i I1[1] -pin t2b_inst|binary_stop_i2_i__0 O[1]
load net t2b_inst|binary_start_i56[4] -attr @rip O[4] -attr @name binary_start_i56[4] -pin t2b_inst|binary_start_i55_i I0[4] -pin t2b_inst|binary_start_i56_i O[4]
load net t2b_inst|binary_stop_i40[1] -attr @rip O[1] -attr @name binary_stop_i40[1] -pin t2b_inst|binary_stop_i39_i I1[1] -pin t2b_inst|binary_stop_i40_i__0 O[1]
load net tdl_thermometer_start_val_w[18] -attr @rip thermometer_start_val_o[18] -pin t2b_inst thermometer_start_i[18] -pin tdl_inst thermometer_start_val_o[18]
load net tdl_thermometer_stop_val_w[29] -attr @rip thermometer_stop_val_o[29] -pin t2b_inst thermometer_stop_i[29] -pin tdl_inst thermometer_stop_val_o[29]
load net measurement_o[18] -attr @rip tdc_measure_o[18] -port measurement_o[18] -pin merge_inst tdc_measure_o[18]
load net t2b_inst|binary_stop_i41[3] -attr @rip O[3] -attr @name binary_stop_i41[3] -pin t2b_inst|binary_stop_i40_i I1[3] -pin t2b_inst|binary_stop_i41_i__0 O[3]
load net t2b_inst|binary_stop_i42[4] -attr @rip O[4] -attr @name binary_stop_i42[4] -pin t2b_inst|binary_stop_i41_i I1[4] -pin t2b_inst|binary_stop_i42_i__0 O[4]
load net t2b_inst|binary_stop_i47[4] -attr @rip O[4] -attr @name binary_stop_i47[4] -pin t2b_inst|binary_stop_i46_i I1[4] -pin t2b_inst|binary_stop_i47_i__0 O[4]
load net t2b_inst|binary_start_i52[4] -attr @rip O[4] -attr @name binary_start_i52[4] -pin t2b_inst|binary_start_i51_i I0[4] -pin t2b_inst|binary_start_i52_i O[4]
load net t2b_inst|thermometer_start_i[20] -attr @rip thermometer_start_i[20] -attr @name thermometer_start_i[20] -hierPin t2b_inst thermometer_start_i[20] -pin t2b_inst|binary_start_i49_i I1
load net t2b_inst|thermometer_stop_i[30] -attr @rip thermometer_stop_i[30] -attr @name thermometer_stop_i[30] -hierPin t2b_inst thermometer_stop_i[30] -pin t2b_inst|binary_stop_i40_i__0 I0
load net t2b_inst|binary_stop_i12[4] -attr @rip O[4] -attr @name binary_stop_i12[4] -pin t2b_inst|binary_stop_i11_i I1[4] -pin t2b_inst|binary_stop_i12_i__0 O[4]
load net t2b_inst|binary_stop_i64[1] -attr @rip O[1] -attr @name binary_stop_i64[1] -pin t2b_inst|binary_stop_i63_i I1[1] -pin t2b_inst|binary_stop_i64_i__0 O[1]
load net t2b_inst|binary_start_i14[1] -attr @rip O[1] -attr @name binary_start_i14[1] -pin t2b_inst|binary_start_i13_i I0[1] -pin t2b_inst|binary_start_i14_i O[1]
load net t2b_inst|binary_start_i13[6] -attr @rip O[6] -attr @name binary_start_i13[6] -pin t2b_inst|binary_start_i12_i I0[6] -pin t2b_inst|binary_start_i13_i O[6]
load net t2b_inst|binary_stop_i10[5] -attr @rip O[5] -attr @name binary_stop_i10[5] -pin t2b_inst|binary_stop_i10_i__0 O[5] -pin t2b_inst|binary_stop_i9_i I1[5]
load net t2b_inst|binary_start_i34[4] -attr @rip O[4] -attr @name binary_start_i34[4] -pin t2b_inst|binary_start_i33_i I0[4] -pin t2b_inst|binary_start_i34_i O[4]
load net t2b_inst|binary_start_i63[0] -attr @rip O[0] -attr @name binary_start_i63[0] -pin t2b_inst|binary_start_i62_i I0[0] -pin t2b_inst|binary_start_i63_i O[0]
load net t2b_inst|binary_start_i33[0] -attr @rip O[0] -attr @name binary_start_i33[0] -pin t2b_inst|binary_start_i32_i I0[0] -pin t2b_inst|binary_start_i33_i O[0]
load net t2b_inst|binary_start_i15[2] -attr @rip O[2] -attr @name binary_start_i15[2] -pin t2b_inst|binary_start_i14_i I0[2] -pin t2b_inst|binary_start_i15_i O[2]
load net t2b_inst|binary_stop_i24[3] -attr @rip O[3] -attr @name binary_stop_i24[3] -pin t2b_inst|binary_stop_i23_i I1[3] -pin t2b_inst|binary_stop_i24_i__0 O[3]
load net t2b_inst|binary_stop_i26[2] -attr @rip O[2] -attr @name binary_stop_i26[2] -pin t2b_inst|binary_stop_i25_i I1[2] -pin t2b_inst|binary_stop_i26_i__0 O[2]
load net t2b_inst|binary_stop_i2[0] -attr @rip O[0] -attr @name binary_stop_i2[0] -pin t2b_inst|binary_stop_i1_i I1[0] -pin t2b_inst|binary_stop_i2_i__0 O[0]
load net t2b_inst|binary_stop_i40[0] -attr @rip O[0] -attr @name binary_stop_i40[0] -pin t2b_inst|binary_stop_i39_i I1[0] -pin t2b_inst|binary_stop_i40_i__0 O[0]
load net t2b_inst|thermometer_start_i[11] -attr @rip thermometer_start_i[11] -attr @name thermometer_start_i[11] -hierPin t2b_inst thermometer_start_i[11] -pin t2b_inst|binary_start_i58_i I1
load net t2b_inst|binary_start_i23[3] -attr @rip O[3] -attr @name binary_start_i23[3] -pin t2b_inst|binary_start_i22_i I0[3] -pin t2b_inst|binary_start_i23_i O[3]
load net t2b_inst|binary_start_i36[3] -attr @rip O[3] -attr @name binary_start_i36[3] -pin t2b_inst|binary_start_i35_i I0[3] -pin t2b_inst|binary_start_i36_i O[3]
load net tdl_thermometer_start_val_w[19] -attr @rip thermometer_start_val_o[19] -pin t2b_inst thermometer_start_i[19] -pin tdl_inst thermometer_start_val_o[19]
load net t2b_inst|binary_stop_i7_i_n_0 -attr @rip O[6] -attr @name binary_stop_i7_i_n_0 -pin t2b_inst|binary_stop_i6_i I0[6] -pin t2b_inst|binary_stop_i7_i O[6]
load net t2b_inst|binary_stop_i54[3] -attr @rip O[3] -attr @name binary_stop_i54[3] -pin t2b_inst|binary_stop_i53_i I1[3] -pin t2b_inst|binary_stop_i54_i__0 O[3]
load net t2b_inst|binary_stop_i7_i_n_1 -attr @rip O[5] -attr @name binary_stop_i7_i_n_1 -pin t2b_inst|binary_stop_i6_i I0[5] -pin t2b_inst|binary_stop_i7_i O[5]
load net t2b_inst|binary_start_i12[6] -attr @rip O[6] -attr @name binary_start_i12[6] -pin t2b_inst|binary_start_i11_i I0[6] -pin t2b_inst|binary_start_i12_i O[6]
load net t2b_inst|binary_stop_i47[3] -attr @rip O[3] -attr @name binary_stop_i47[3] -pin t2b_inst|binary_stop_i46_i I1[3] -pin t2b_inst|binary_stop_i47_i__0 O[3]
load net t2b_inst|binary_stop_i67_i_n_0 -attr @rip O[6] -attr @name binary_stop_i67_i_n_0 -pin t2b_inst|binary_stop_i66_i I0[6] -pin t2b_inst|binary_stop_i67_i O[6]
load net t2b_inst|binary_stop_i7_i_n_2 -attr @rip O[4] -attr @name binary_stop_i7_i_n_2 -pin t2b_inst|binary_stop_i6_i I0[4] -pin t2b_inst|binary_stop_i7_i O[4]
load net t2b_inst|binary_stop_i12[1] -attr @rip O[1] -attr @name binary_stop_i12[1] -pin t2b_inst|binary_stop_i11_i I1[1] -pin t2b_inst|binary_stop_i12_i__0 O[1]
load net measurement_o[19] -attr @rip tdc_measure_o[19] -port measurement_o[19] -pin merge_inst tdc_measure_o[19]
load net t2b_inst|binary_stop_i67_i_n_1 -attr @rip O[5] -attr @name binary_stop_i67_i_n_1 -pin t2b_inst|binary_stop_i66_i I0[5] -pin t2b_inst|binary_stop_i67_i O[5]
load net t2b_inst|binary_stop_i7_i_n_3 -attr @rip O[3] -attr @name binary_stop_i7_i_n_3 -pin t2b_inst|binary_stop_i6_i I0[3] -pin t2b_inst|binary_stop_i7_i O[3]
load net t2b_inst|binary_stop_i67_i_n_2 -attr @rip O[4] -attr @name binary_stop_i67_i_n_2 -pin t2b_inst|binary_stop_i66_i I0[4] -pin t2b_inst|binary_stop_i67_i O[4]
load net t2b_inst|binary_stop_i7_i_n_4 -attr @rip O[2] -attr @name binary_stop_i7_i_n_4 -pin t2b_inst|binary_stop_i6_i I0[2] -pin t2b_inst|binary_stop_i7_i O[2]
load net t2b_inst|binary_start_i52[5] -attr @rip O[5] -attr @name binary_start_i52[5] -pin t2b_inst|binary_start_i51_i I0[5] -pin t2b_inst|binary_start_i52_i O[5]
load net t2b_inst|binary_stop_i64[0] -attr @rip O[0] -attr @name binary_stop_i64[0] -pin t2b_inst|binary_stop_i63_i I1[0] -pin t2b_inst|binary_stop_i64_i__0 O[0]
load net t2b_inst|binary_stop_i67_i_n_3 -attr @rip O[3] -attr @name binary_stop_i67_i_n_3 -pin t2b_inst|binary_stop_i66_i I0[3] -pin t2b_inst|binary_stop_i67_i O[3]
load net t2b_inst|binary_stop_i7_i_n_5 -attr @rip O[1] -attr @name binary_stop_i7_i_n_5 -pin t2b_inst|binary_stop_i6_i I0[1] -pin t2b_inst|binary_stop_i7_i O[1]
load net t2b_inst|binary_start_i14[0] -attr @rip O[0] -attr @name binary_start_i14[0] -pin t2b_inst|binary_start_i13_i I0[0] -pin t2b_inst|binary_start_i14_i O[0]
load net t2b_inst|binary_start_i42[0] -attr @rip O[0] -attr @name binary_start_i42[0] -pin t2b_inst|binary_start_i41_i I0[0] -pin t2b_inst|binary_start_i42_i O[0]
load net t2b_inst|binary_start_i39[6] -attr @rip O[6] -attr @name binary_start_i39[6] -pin t2b_inst|binary_start_i38_i I0[6] -pin t2b_inst|binary_start_i39_i O[6]
load net t2b_inst|binary_stop_i63[6] -attr @rip O[6] -attr @name binary_stop_i63[6] -pin t2b_inst|binary_stop_i62_i I1[6] -pin t2b_inst|binary_stop_i63_i__0 O[6]
load net t2b_inst|binary_stop_i67_i_n_4 -attr @rip O[2] -attr @name binary_stop_i67_i_n_4 -pin t2b_inst|binary_stop_i66_i I0[2] -pin t2b_inst|binary_stop_i67_i O[2]
load net t2b_inst|binary_stop_i7_i_n_6 -attr @rip O[0] -attr @name binary_stop_i7_i_n_6 -pin t2b_inst|binary_stop_i6_i I0[0] -pin t2b_inst|binary_stop_i7_i O[0]
load net t2b_inst|binary_stop_i67_i_n_5 -attr @rip O[1] -attr @name binary_stop_i67_i_n_5 -pin t2b_inst|binary_stop_i66_i I0[1] -pin t2b_inst|binary_stop_i67_i O[1]
load net t2b_inst|thermometer_stop_i[33] -attr @rip thermometer_stop_i[33] -attr @name thermometer_stop_i[33] -hierPin t2b_inst thermometer_stop_i[33] -pin t2b_inst|binary_stop_i37_i__0 I0
load net tdl_thermometer_start_val_w[29] -attr @rip thermometer_start_val_o[29] -pin t2b_inst thermometer_start_i[29] -pin tdl_inst thermometer_start_val_o[29]
load net t2b_inst|binary_stop_i10[6] -attr @rip O[6] -attr @name binary_stop_i10[6] -pin t2b_inst|binary_stop_i10_i__0 O[6] -pin t2b_inst|binary_stop_i9_i I1[6]
load net t2b_inst|binary_stop_i66[6] -attr @rip O[6] -attr @name binary_stop_i66[6] -pin t2b_inst|binary_stop_i65_i I1[6] -pin t2b_inst|binary_stop_i66_i__0 O[6]
load net t2b_inst|binary_stop_i67_i_n_6 -attr @rip O[0] -attr @name binary_stop_i67_i_n_6 -pin t2b_inst|binary_stop_i66_i I0[0] -pin t2b_inst|binary_stop_i67_i O[0]
load net t2b_inst|binary_start_i15[1] -attr @rip O[1] -attr @name binary_start_i15[1] -pin t2b_inst|binary_start_i14_i I0[1] -pin t2b_inst|binary_start_i15_i O[1]
load net t2b_inst|binary_stop_i24[2] -attr @rip O[2] -attr @name binary_stop_i24[2] -pin t2b_inst|binary_stop_i23_i I1[2] -pin t2b_inst|binary_stop_i24_i__0 O[2]
load net t2b_inst|binary_start_i33[3] -attr @rip O[3] -attr @name binary_start_i33[3] -pin t2b_inst|binary_start_i32_i I0[3] -pin t2b_inst|binary_start_i33_i O[3]
load net t2b_inst|thermometer_start_i[10] -attr @rip thermometer_start_i[10] -attr @name thermometer_start_i[10] -hierPin t2b_inst thermometer_start_i[10] -pin t2b_inst|binary_start_i59_i I1
load net tdl_thermometer_start_val_w[16] -attr @rip thermometer_start_val_o[16] -pin t2b_inst thermometer_start_i[16] -pin tdl_inst thermometer_start_val_o[16]
load net t2b_inst|binary_stop_i26[5] -attr @rip O[5] -attr @name binary_stop_i26[5] -pin t2b_inst|binary_stop_i25_i I1[5] -pin t2b_inst|binary_stop_i26_i__0 O[5]
load net t2b_inst|binary_start_i5[6] -attr @rip O[6] -attr @name binary_start_i5[6] -pin t2b_inst|binary_start_i4_i I0[6] -pin t2b_inst|binary_start_i5_i O[6]
load net t2b_inst|binary_start_i23[4] -attr @rip O[4] -attr @name binary_start_i23[4] -pin t2b_inst|binary_start_i22_i I0[4] -pin t2b_inst|binary_start_i23_i O[4]
load net t2b_inst|binary_start_i36[4] -attr @rip O[4] -attr @name binary_start_i36[4] -pin t2b_inst|binary_start_i35_i I0[4] -pin t2b_inst|binary_start_i36_i O[4]
load net t2b_inst|binary_start_i12[5] -attr @rip O[5] -attr @name binary_start_i12[5] -pin t2b_inst|binary_start_i11_i I0[5] -pin t2b_inst|binary_start_i12_i O[5]
load net t2b_inst|binary_stop_i60[1] -attr @rip O[1] -attr @name binary_stop_i60[1] -pin t2b_inst|binary_stop_i59_i I1[1] -pin t2b_inst|binary_stop_i60_i__0 O[1]
load net t2b_inst|binary_stop_i54[4] -attr @rip O[4] -attr @name binary_stop_i54[4] -pin t2b_inst|binary_stop_i53_i I1[4] -pin t2b_inst|binary_stop_i54_i__0 O[4]
load net tdl_thermometer_start_val_w[24] -attr @rip thermometer_start_val_o[24] -pin t2b_inst thermometer_start_i[24] -pin tdl_inst thermometer_start_val_o[24]
load net t2b_inst|binary_stop_i12[2] -attr @rip O[2] -attr @name binary_stop_i12[2] -pin t2b_inst|binary_stop_i11_i I1[2] -pin t2b_inst|binary_stop_i12_i__0 O[2]
load net t2b_inst|binary_start_i59[4] -attr @rip O[4] -attr @name binary_start_i59[4] -pin t2b_inst|binary_start_i58_i I0[4] -pin t2b_inst|binary_start_i59_i O[4]
load net t2b_inst|binary_stop_i22[1] -attr @rip O[1] -attr @name binary_stop_i22[1] -pin t2b_inst|binary_stop_i21_i I1[1] -pin t2b_inst|binary_stop_i22_i__0 O[1]
load net t2b_inst|binary_stop_i47[6] -attr @rip O[6] -attr @name binary_stop_i47[6] -pin t2b_inst|binary_stop_i46_i I1[6] -pin t2b_inst|binary_stop_i47_i__0 O[6]
load net t2b_inst|binary_stop_i63[5] -attr @rip O[5] -attr @name binary_stop_i63[5] -pin t2b_inst|binary_stop_i62_i I1[5] -pin t2b_inst|binary_stop_i63_i__0 O[5]
load net measurement_o[0] -attr @rip tdc_measure_o[0] -port measurement_o[0] -pin merge_inst tdc_measure_o[0]
load net t2b_inst|binary_start_i47[6] -attr @rip O[6] -attr @name binary_start_i47[6] -pin t2b_inst|binary_start_i46_i I0[6] -pin t2b_inst|binary_start_i47_i O[6]
load net t2b_inst|binary_start_i52[6] -attr @rip O[6] -attr @name binary_start_i52[6] -pin t2b_inst|binary_start_i51_i I0[6] -pin t2b_inst|binary_start_i52_i O[6]
load net t2b_inst|thermometer_stop_i[32] -attr @rip thermometer_stop_i[32] -attr @name thermometer_stop_i[32] -hierPin t2b_inst thermometer_stop_i[32] -pin t2b_inst|binary_stop_i38_i__0 I0
load net t2b_inst|binary_start_i42[1] -attr @rip O[1] -attr @name binary_start_i42[1] -pin t2b_inst|binary_start_i41_i I0[1] -pin t2b_inst|binary_start_i42_i O[1]
load net t2b_inst|binary_stop_i65[2] -attr @rip O[2] -attr @name binary_stop_i65[2] -pin t2b_inst|binary_stop_i64_i I1[2] -pin t2b_inst|binary_stop_i65_i__0 O[2]
load net t2b_inst|binary_start_i15[0] -attr @rip O[0] -attr @name binary_start_i15[0] -pin t2b_inst|binary_start_i14_i I0[0] -pin t2b_inst|binary_start_i15_i O[0]
load net t2b_inst|binary_stop_i58[3] -attr @rip O[3] -attr @name binary_stop_i58[3] -pin t2b_inst|binary_stop_i57_i I1[3] -pin t2b_inst|binary_stop_i58_i__0 O[3]
load net t2b_inst|binary_stop_i64[3] -attr @rip O[3] -attr @name binary_stop_i64[3] -pin t2b_inst|binary_stop_i63_i I1[3] -pin t2b_inst|binary_stop_i64_i__0 O[3]
load net t2b_inst|binary_start_i33[2] -attr @rip O[2] -attr @name binary_start_i33[2] -pin t2b_inst|binary_start_i32_i I0[2] -pin t2b_inst|binary_start_i33_i O[2]
load net t2b_inst|binary_start_i17[6] -attr @rip O[6] -attr @name binary_start_i17[6] -pin t2b_inst|binary_start_i16_i I0[6] -pin t2b_inst|binary_start_i17_i O[6]
load net t2b_inst|binary_stop_i50[3] -attr @rip O[3] -attr @name binary_stop_i50[3] -pin t2b_inst|binary_stop_i49_i I1[3] -pin t2b_inst|binary_stop_i50_i__0 O[3]
load net t2b_inst|binary_start_i23[1] -attr @rip O[1] -attr @name binary_start_i23[1] -pin t2b_inst|binary_start_i22_i I0[1] -pin t2b_inst|binary_start_i23_i O[1]
load net tdl_thermometer_stop_val_w[53] -attr @rip thermometer_stop_val_o[53] -pin t2b_inst thermometer_stop_i[53] -pin tdl_inst thermometer_stop_val_o[53]
load net t2b_inst|binary_stop_i26[4] -attr @rip O[4] -attr @name binary_stop_i26[4] -pin t2b_inst|binary_stop_i25_i I1[4] -pin t2b_inst|binary_stop_i26_i__0 O[4]
load net t2b_inst|binary_start_i36[1] -attr @rip O[1] -attr @name binary_start_i36[1] -pin t2b_inst|binary_start_i35_i I0[1] -pin t2b_inst|binary_start_i36_i O[1]
load net t2b_inst|binary_start_i5[5] -attr @rip O[5] -attr @name binary_start_i5[5] -pin t2b_inst|binary_start_i4_i I0[5] -pin t2b_inst|binary_start_i5_i O[5]
load net tdl_thermometer_start_val_w[17] -attr @rip thermometer_start_val_o[17] -pin t2b_inst thermometer_start_i[17] -pin tdl_inst thermometer_start_val_o[17]
load net t2b_inst|binary_stop_i54[1] -attr @rip O[1] -attr @name binary_stop_i54[1] -pin t2b_inst|binary_stop_i53_i I1[1] -pin t2b_inst|binary_stop_i54_i__0 O[1]
load net t2b_inst|binary_start_i12[4] -attr @rip O[4] -attr @name binary_start_i12[4] -pin t2b_inst|binary_start_i11_i I0[4] -pin t2b_inst|binary_start_i12_i O[4]
load net t2b_inst|binary_stop_i60[0] -attr @rip O[0] -attr @name binary_stop_i60[0] -pin t2b_inst|binary_stop_i59_i I1[0] -pin t2b_inst|binary_stop_i60_i__0 O[0]
load net tdl_thermometer_start_val_w[23] -attr @rip thermometer_start_val_o[23] -pin t2b_inst thermometer_start_i[23] -pin tdl_inst thermometer_start_val_o[23]
load net t2b_inst|binary_start_i15[4] -attr @rip O[4] -attr @name binary_start_i15[4] -pin t2b_inst|binary_start_i14_i I0[4] -pin t2b_inst|binary_start_i15_i O[4]
load net t2b_inst|binary_stop_i57_i_n_0 -attr @rip O[6] -attr @name binary_stop_i57_i_n_0 -pin t2b_inst|binary_stop_i56_i I0[6] -pin t2b_inst|binary_stop_i57_i O[6]
load net t2b_inst|binary_stop_i57_i_n_1 -attr @rip O[5] -attr @name binary_stop_i57_i_n_1 -pin t2b_inst|binary_stop_i56_i I0[5] -pin t2b_inst|binary_stop_i57_i O[5]
load net t2b_inst|binary_stop_i22[0] -attr @rip O[0] -attr @name binary_stop_i22[0] -pin t2b_inst|binary_stop_i21_i I1[0] -pin t2b_inst|binary_stop_i22_i__0 O[0]
load net t2b_inst|binary_stop_i47[5] -attr @rip O[5] -attr @name binary_stop_i47[5] -pin t2b_inst|binary_stop_i46_i I1[5] -pin t2b_inst|binary_stop_i47_i__0 O[5]
load net t2b_inst|binary_stop_i57_i_n_2 -attr @rip O[4] -attr @name binary_stop_i57_i_n_2 -pin t2b_inst|binary_stop_i56_i I0[4] -pin t2b_inst|binary_stop_i57_i O[4]
load net t2b_inst|binary_start_i47[5] -attr @rip O[5] -attr @name binary_start_i47[5] -pin t2b_inst|binary_start_i46_i I0[5] -pin t2b_inst|binary_start_i47_i O[5]
load net t2b_inst|binary_start_i59[5] -attr @rip O[5] -attr @name binary_start_i59[5] -pin t2b_inst|binary_start_i58_i I0[5] -pin t2b_inst|binary_start_i59_i O[5]
load net t2b_inst|binary_stop_i57_i_n_3 -attr @rip O[3] -attr @name binary_stop_i57_i_n_3 -pin t2b_inst|binary_stop_i56_i I0[3] -pin t2b_inst|binary_stop_i57_i O[3]
load net t2b_inst|binary_stop_i6[3] -attr @rip O[3] -attr @name binary_stop_i6[3] -pin t2b_inst|binary_stop_i5_i I1[3] -pin t2b_inst|binary_stop_i6_i__0 O[3]
load net t2b_inst|binary_stop_i57_i_n_4 -attr @rip O[2] -attr @name binary_stop_i57_i_n_4 -pin t2b_inst|binary_stop_i56_i I0[2] -pin t2b_inst|binary_stop_i57_i O[2]
load net t2b_inst|binary_stop_i65[1] -attr @rip O[1] -attr @name binary_stop_i65[1] -pin t2b_inst|binary_stop_i64_i I1[1] -pin t2b_inst|binary_stop_i65_i__0 O[1]
load net t2b_inst|binary_stop_i57_i_n_5 -attr @rip O[1] -attr @name binary_stop_i57_i_n_5 -pin t2b_inst|binary_stop_i56_i I0[1] -pin t2b_inst|binary_stop_i57_i O[1]
load net t2b_inst|binary_stop_i64[2] -attr @rip O[2] -attr @name binary_stop_i64[2] -pin t2b_inst|binary_stop_i63_i I1[2] -pin t2b_inst|binary_stop_i64_i__0 O[2]
load net t2b_inst|binary_start_i51[4] -attr @rip O[4] -attr @name binary_start_i51[4] -pin t2b_inst|binary_start_i50_i I0[4] -pin t2b_inst|binary_start_i51_i O[4]
load net t2b_inst|binary_start_i42[2] -attr @rip O[2] -attr @name binary_start_i42[2] -pin t2b_inst|binary_start_i41_i I0[2] -pin t2b_inst|binary_start_i42_i O[2]
load net t2b_inst|binary_stop_i17[6] -attr @rip O[6] -attr @name binary_stop_i17[6] -pin t2b_inst|binary_stop_i16_i I1[6] -pin t2b_inst|binary_stop_i17_i__0 O[6]
load net t2b_inst|binary_stop_i57_i_n_6 -attr @rip O[0] -attr @name binary_stop_i57_i_n_6 -pin t2b_inst|binary_stop_i56_i I0[0] -pin t2b_inst|binary_stop_i57_i O[0]
load net t2b_inst|binary_stop_i58[4] -attr @rip O[4] -attr @name binary_stop_i58[4] -pin t2b_inst|binary_stop_i57_i I1[4] -pin t2b_inst|binary_stop_i58_i__0 O[4]
load net t2b_inst|thermometer_stop_i[35] -attr @rip thermometer_stop_i[35] -attr @name thermometer_stop_i[35] -hierPin t2b_inst thermometer_stop_i[35] -pin t2b_inst|binary_stop_i35_i__0 I0
load net tdl_thermometer_start_val_w[14] -attr @rip thermometer_start_val_o[14] -pin t2b_inst thermometer_start_i[14] -pin tdl_inst thermometer_start_val_o[14]
load net t2b_inst|binary_start_i50[5] -attr @rip O[5] -attr @name binary_start_i50[5] -pin t2b_inst|binary_start_i49_i I0[5] -pin t2b_inst|binary_start_i50_i O[5]
load net tdl_thermometer_stop_val_w[52] -attr @rip thermometer_stop_val_o[52] -pin t2b_inst thermometer_stop_i[52] -pin tdl_inst thermometer_stop_val_o[52]
load net t2b_inst|binary_stop_i50[4] -attr @rip O[4] -attr @name binary_stop_i50[4] -pin t2b_inst|binary_stop_i49_i I1[4] -pin t2b_inst|binary_stop_i50_i__0 O[4]
load net t2b_inst|binary_start_i23[2] -attr @rip O[2] -attr @name binary_start_i23[2] -pin t2b_inst|binary_start_i22_i I0[2] -pin t2b_inst|binary_start_i23_i O[2]
load net t2b_inst|binary_stop_i66[3] -attr @rip O[3] -attr @name binary_stop_i66[3] -pin t2b_inst|binary_stop_i65_i I1[3] -pin t2b_inst|binary_stop_i66_i__0 O[3]
load net t2b_inst|binary_stop_i10_i_n_0 -attr @rip O[6] -attr @name binary_stop_i10_i_n_0 -pin t2b_inst|binary_stop_i10_i O[6] -pin t2b_inst|binary_stop_i9_i I0[6]
load net t2b_inst|binary_start_i36[2] -attr @rip O[2] -attr @name binary_start_i36[2] -pin t2b_inst|binary_start_i35_i I0[2] -pin t2b_inst|binary_start_i36_i O[2]
load net t2b_inst|binary_start_i12[3] -attr @rip O[3] -attr @name binary_start_i12[3] -pin t2b_inst|binary_start_i11_i I0[3] -pin t2b_inst|binary_start_i12_i O[3]
load net tdl_thermometer_start_val_w[0] -attr @rip thermometer_start_val_o[0] -pin t2b_inst thermometer_start_i[0] -pin tdl_inst thermometer_start_val_o[0]
load net t2b_inst|binary_stop_i10_i_n_1 -attr @rip O[5] -attr @name binary_stop_i10_i_n_1 -pin t2b_inst|binary_stop_i10_i O[5] -pin t2b_inst|binary_stop_i9_i I0[5]
load net t2b_inst|binary_stop_i54[2] -attr @rip O[2] -attr @name binary_stop_i54[2] -pin t2b_inst|binary_stop_i53_i I1[2] -pin t2b_inst|binary_stop_i54_i__0 O[2]
load net t2b_inst|binary_stop_i10_i_n_2 -attr @rip O[4] -attr @name binary_stop_i10_i_n_2 -pin t2b_inst|binary_stop_i10_i O[4] -pin t2b_inst|binary_stop_i9_i I0[4]
load net t2b_inst|binary_stop_i10_i_n_3 -attr @rip O[3] -attr @name binary_stop_i10_i_n_3 -pin t2b_inst|binary_stop_i10_i O[3] -pin t2b_inst|binary_stop_i9_i I0[3]
load net t2b_inst|binary_stop_i12[0] -attr @rip O[0] -attr @name binary_stop_i12[0] -pin t2b_inst|binary_stop_i11_i I1[0] -pin t2b_inst|binary_stop_i12_i__0 O[0]
load net t2b_inst|binary_stop_i10_i_n_4 -attr @rip O[2] -attr @name binary_stop_i10_i_n_4 -pin t2b_inst|binary_stop_i10_i O[2] -pin t2b_inst|binary_stop_i9_i I0[2]
load net t2b_inst|binary_start_i15[5] -attr @rip O[5] -attr @name binary_start_i15[5] -pin t2b_inst|binary_start_i14_i I0[5] -pin t2b_inst|binary_start_i15_i O[5]
load net t2b_inst|binary_stop_i60[3] -attr @rip O[3] -attr @name binary_stop_i60[3] -pin t2b_inst|binary_stop_i59_i I1[3] -pin t2b_inst|binary_stop_i60_i__0 O[3]
load net t2b_inst|binary_stop_i10_i_n_5 -attr @rip O[1] -attr @name binary_stop_i10_i_n_5 -pin t2b_inst|binary_stop_i10_i O[1] -pin t2b_inst|binary_stop_i9_i I0[1]
load net t2b_inst|binary_start_i47[4] -attr @rip O[4] -attr @name binary_start_i47[4] -pin t2b_inst|binary_start_i46_i I0[4] -pin t2b_inst|binary_start_i47_i O[4]
load net t2b_inst|binary_stop_i6[2] -attr @rip O[2] -attr @name binary_stop_i6[2] -pin t2b_inst|binary_stop_i5_i I1[2] -pin t2b_inst|binary_stop_i6_i__0 O[2]
load net tdl_thermometer_start_val_w[26] -attr @rip thermometer_start_val_o[26] -pin t2b_inst thermometer_start_i[26] -pin tdl_inst thermometer_start_val_o[26]
load net t2b_inst|binary_stop_i10_i_n_6 -attr @rip O[0] -attr @name binary_stop_i10_i_n_6 -pin t2b_inst|binary_stop_i10_i O[0] -pin t2b_inst|binary_stop_i9_i I0[0]
load net t2b_inst|binary_stop_i65[0] -attr @rip O[0] -attr @name binary_stop_i65[0] -pin t2b_inst|binary_stop_i64_i I1[0] -pin t2b_inst|binary_stop_i65_i__0 O[0]
load net t2b_inst|binary_start_i59[6] -attr @rip O[6] -attr @name binary_start_i59[6] -pin t2b_inst|binary_start_i58_i I0[6] -pin t2b_inst|binary_start_i59_i O[6]
load net t2b_inst|binary_stop_i58[1] -attr @rip O[1] -attr @name binary_stop_i58[1] -pin t2b_inst|binary_stop_i57_i I1[1] -pin t2b_inst|binary_stop_i58_i__0 O[1]
load net t2b_inst|binary_stop_i22[3] -attr @rip O[3] -attr @name binary_stop_i22[3] -pin t2b_inst|binary_stop_i21_i I1[3] -pin t2b_inst|binary_stop_i22_i__0 O[3]
load net t2b_inst|thermometer_stop_i[34] -attr @rip thermometer_stop_i[34] -attr @name thermometer_stop_i[34] -hierPin t2b_inst thermometer_stop_i[34] -pin t2b_inst|binary_stop_i36_i__0 I0
load net t2b_inst|binary_start_i51[5] -attr @rip O[5] -attr @name binary_start_i51[5] -pin t2b_inst|binary_start_i50_i I0[5] -pin t2b_inst|binary_start_i51_i O[5]
load net t2b_inst|binary_start_i42[3] -attr @rip O[3] -attr @name binary_start_i42[3] -pin t2b_inst|binary_start_i41_i I0[3] -pin t2b_inst|binary_start_i42_i O[3]
load net t2b_inst|binary_start_i44[6] -attr @rip O[6] -attr @name binary_start_i44[6] -pin t2b_inst|binary_start_i43_i I0[6] -pin t2b_inst|binary_start_i44_i O[6]
load net t2b_inst|binary_stop_i50[1] -attr @rip O[1] -attr @name binary_stop_i50[1] -pin t2b_inst|binary_stop_i49_i I1[1] -pin t2b_inst|binary_stop_i50_i__0 O[1]
load net t2b_inst|binary_stop_i64[5] -attr @rip O[5] -attr @name binary_stop_i64[5] -pin t2b_inst|binary_stop_i63_i I1[5] -pin t2b_inst|binary_stop_i64_i__0 O[5]
load net tdl_thermometer_stop_val_w[51] -attr @rip thermometer_stop_val_o[51] -pin t2b_inst thermometer_stop_i[51] -pin tdl_inst thermometer_stop_val_o[51]
load net tdl_thermometer_start_val_w[15] -attr @rip thermometer_start_val_o[15] -pin t2b_inst thermometer_start_i[15] -pin tdl_inst thermometer_start_val_o[15]
load net t2b_inst|binary_start_i5[3] -attr @rip O[3] -attr @name binary_start_i5[3] -pin t2b_inst|binary_start_i4_i I0[3] -pin t2b_inst|binary_start_i5_i O[3]
load net t2b_inst|binary_start_i50[6] -attr @rip O[6] -attr @name binary_start_i50[6] -pin t2b_inst|binary_start_i49_i I0[6] -pin t2b_inst|binary_start_i50_i O[6]
load net t2b_inst|binary_stop_i66[2] -attr @rip O[2] -attr @name binary_stop_i66[2] -pin t2b_inst|binary_stop_i65_i I1[2] -pin t2b_inst|binary_stop_i66_i__0 O[2]
load net t2b_inst|binary_start_i12[2] -attr @rip O[2] -attr @name binary_start_i12[2] -pin t2b_inst|binary_start_i11_i I0[2] -pin t2b_inst|binary_start_i12_i O[2]
load net t2b_inst|binary_stop_i26[6] -attr @rip O[6] -attr @name binary_stop_i26[6] -pin t2b_inst|binary_stop_i25_i I1[6] -pin t2b_inst|binary_stop_i26_i__0 O[6]
load net t2b_inst|binary_stop_i60[2] -attr @rip O[2] -attr @name binary_stop_i60[2] -pin t2b_inst|binary_stop_i59_i I1[2] -pin t2b_inst|binary_stop_i60_i__0 O[2]
load net t2b_inst|binary_start_i47[3] -attr @rip O[3] -attr @name binary_start_i47[3] -pin t2b_inst|binary_start_i46_i I0[3] -pin t2b_inst|binary_start_i47_i O[3]
load net t2b_inst|binary_stop_i25_i_n_0 -attr @rip O[6] -attr @name binary_stop_i25_i_n_0 -pin t2b_inst|binary_stop_i24_i I0[6] -pin t2b_inst|binary_stop_i25_i O[6]
load net t2b_inst|binary_stop_i6[1] -attr @rip O[1] -attr @name binary_stop_i6[1] -pin t2b_inst|binary_stop_i5_i I1[1] -pin t2b_inst|binary_stop_i6_i__0 O[1]
load net tdl_thermometer_start_val_w[25] -attr @rip thermometer_start_val_o[25] -pin t2b_inst thermometer_start_i[25] -pin tdl_inst thermometer_start_val_o[25]
load net t2b_inst|binary_start_i15[6] -attr @rip O[6] -attr @name binary_start_i15[6] -pin t2b_inst|binary_start_i14_i I0[6] -pin t2b_inst|binary_start_i15_i O[6]
load net t2b_inst|binary_stop_i25_i_n_1 -attr @rip O[5] -attr @name binary_stop_i25_i_n_1 -pin t2b_inst|binary_stop_i24_i I0[5] -pin t2b_inst|binary_stop_i25_i O[5]
load net t2b_inst|binary_start_i25[1] -attr @rip O[1] -attr @name binary_start_i25[1] -pin t2b_inst|binary_start_i24_i I0[1] -pin t2b_inst|binary_start_i25_i O[1]
load net t2b_inst|binary_start_i41[0] -attr @rip O[0] -attr @name binary_start_i41[0] -pin t2b_inst|binary_start_i40_i I0[0] -pin t2b_inst|binary_start_i41_i O[0]
load net t2b_inst|binary_stop_i25_i_n_2 -attr @rip O[4] -attr @name binary_stop_i25_i_n_2 -pin t2b_inst|binary_stop_i24_i I0[4] -pin t2b_inst|binary_stop_i25_i O[4]
load net t2b_inst|binary_stop_i22[2] -attr @rip O[2] -attr @name binary_stop_i22[2] -pin t2b_inst|binary_stop_i21_i I1[2] -pin t2b_inst|binary_stop_i22_i__0 O[2]
load net t2b_inst|binary_stop_i25_i_n_3 -attr @rip O[3] -attr @name binary_stop_i25_i_n_3 -pin t2b_inst|binary_stop_i24_i I0[3] -pin t2b_inst|binary_stop_i25_i O[3]
load net t2b_inst|binary_stop_i25_i_n_4 -attr @rip O[2] -attr @name binary_stop_i25_i_n_4 -pin t2b_inst|binary_stop_i24_i I0[2] -pin t2b_inst|binary_stop_i25_i O[2]
load net t2b_inst|binary_stop_i58[2] -attr @rip O[2] -attr @name binary_stop_i58[2] -pin t2b_inst|binary_stop_i57_i I1[2] -pin t2b_inst|binary_stop_i58_i__0 O[2]
load net t2b_inst|binary_stop_i25_i_n_5 -attr @rip O[1] -attr @name binary_stop_i25_i_n_5 -pin t2b_inst|binary_stop_i24_i I0[1] -pin t2b_inst|binary_stop_i25_i O[1]
load net tdl_thermometer_start_val_w[12] -attr @rip thermometer_start_val_o[12] -pin t2b_inst thermometer_start_i[12] -pin tdl_inst thermometer_start_val_o[12]
load net t2b_inst|binary_stop_i25_i_n_6 -attr @rip O[0] -attr @name binary_stop_i25_i_n_6 -pin t2b_inst|binary_stop_i24_i I0[0] -pin t2b_inst|binary_stop_i25_i O[0]
load net t2b_inst|binary_stop_i64[4] -attr @rip O[4] -attr @name binary_stop_i64[4] -pin t2b_inst|binary_stop_i63_i I1[4] -pin t2b_inst|binary_stop_i64_i__0 O[4]
load net tdl_thermometer_stop_val_w[50] -attr @rip thermometer_stop_val_o[50] -pin t2b_inst thermometer_stop_i[50] -pin tdl_inst thermometer_stop_val_o[50]
load net t2b_inst|binary_start_i51[6] -attr @rip O[6] -attr @name binary_start_i51[6] -pin t2b_inst|binary_start_i50_i I0[6] -pin t2b_inst|binary_start_i51_i O[6]
load net t2b_inst|binary_stop_i50[2] -attr @rip O[2] -attr @name binary_stop_i50[2] -pin t2b_inst|binary_stop_i49_i I1[2] -pin t2b_inst|binary_stop_i50_i__0 O[2]
load net t2b_inst|thermometer_stop_i[37] -attr @rip thermometer_stop_i[37] -attr @name thermometer_stop_i[37] -hierPin t2b_inst thermometer_stop_i[37] -pin t2b_inst|binary_stop_i33_i__0 I0
load net t2b_inst|binary_start_i23[0] -attr @rip O[0] -attr @name binary_start_i23[0] -pin t2b_inst|binary_start_i22_i I0[0] -pin t2b_inst|binary_start_i23_i O[0]
load net t2b_inst|binary_start_i5[4] -attr @rip O[4] -attr @name binary_start_i5[4] -pin t2b_inst|binary_start_i4_i I0[4] -pin t2b_inst|binary_start_i5_i O[4]
load net t2b_inst|binary_start_i12[1] -attr @rip O[1] -attr @name binary_start_i12[1] -pin t2b_inst|binary_start_i11_i I0[1] -pin t2b_inst|binary_start_i12_i O[1]
load net tdl_thermometer_start_val_w[20] -attr @rip thermometer_start_val_o[20] -pin t2b_inst thermometer_start_i[20] -pin tdl_inst thermometer_start_val_o[20]
load net t2b_inst|binary_start_i59[0] -attr @rip O[0] -attr @name binary_start_i59[0] -pin t2b_inst|binary_start_i58_i I0[0] -pin t2b_inst|binary_start_i59_i O[0]
load net t2b_inst|binary_start_i16[2] -attr @rip O[2] -attr @name binary_start_i16[2] -pin t2b_inst|binary_start_i15_i I0[2] -pin t2b_inst|binary_start_i16_i O[2]
load net t2b_inst|binary_stop_i66[5] -attr @rip O[5] -attr @name binary_stop_i66[5] -pin t2b_inst|binary_stop_i65_i I1[5] -pin t2b_inst|binary_stop_i66_i__0 O[5]
load net t2b_inst|binary_start_i47[2] -attr @rip O[2] -attr @name binary_start_i47[2] -pin t2b_inst|binary_start_i46_i I0[2] -pin t2b_inst|binary_start_i47_i O[2]
load net t2b_inst|binary_stop_i6[0] -attr @rip O[0] -attr @name binary_stop_i6[0] -pin t2b_inst|binary_stop_i5_i I1[0] -pin t2b_inst|binary_stop_i6_i__0 O[0]
load net t2b_inst|binary_stop_i56_i_n_0 -attr @rip O[6] -attr @name binary_stop_i56_i_n_0 -pin t2b_inst|binary_stop_i55_i I0[6] -pin t2b_inst|binary_stop_i56_i O[6]
load net t2b_inst|binary_stop_i56_i_n_1 -attr @rip O[5] -attr @name binary_stop_i56_i_n_1 -pin t2b_inst|binary_stop_i55_i I0[5] -pin t2b_inst|binary_stop_i56_i O[5]
load net t2b_inst|binary_stop_i60[5] -attr @rip O[5] -attr @name binary_stop_i60[5] -pin t2b_inst|binary_stop_i59_i I1[5] -pin t2b_inst|binary_stop_i60_i__0 O[5]
load net t2b_inst|binary_start_i25[2] -attr @rip O[2] -attr @name binary_start_i25[2] -pin t2b_inst|binary_start_i24_i I0[2] -pin t2b_inst|binary_start_i25_i O[2]
load net t2b_inst|binary_start_i41[1] -attr @rip O[1] -attr @name binary_start_i41[1] -pin t2b_inst|binary_start_i40_i I0[1] -pin t2b_inst|binary_start_i41_i O[1]
load net t2b_inst|binary_stop_i33[2] -attr @rip O[2] -attr @name binary_stop_i33[2] -pin t2b_inst|binary_stop_i32_i I1[2] -pin t2b_inst|binary_stop_i33_i__0 O[2]
load net t2b_inst|binary_stop_i56_i_n_2 -attr @rip O[4] -attr @name binary_stop_i56_i_n_2 -pin t2b_inst|binary_stop_i55_i I0[4] -pin t2b_inst|binary_stop_i56_i O[4]
load net t2b_inst|binary_stop_i[0] -attr @rip O[0] -attr @name binary_stop_i[0] -hierPin t2b_inst binary_stop_i[0] -pin t2b_inst|binary_stop_i0_i O[0]
load net t2b_inst|binary_stop_i56_i_n_3 -attr @rip O[3] -attr @name binary_stop_i56_i_n_3 -pin t2b_inst|binary_stop_i55_i I0[3] -pin t2b_inst|binary_stop_i56_i O[3]
load net t2b_inst|binary_start_i17[2] -attr @rip O[2] -attr @name binary_start_i17[2] -pin t2b_inst|binary_start_i16_i I0[2] -pin t2b_inst|binary_start_i17_i O[2]
load net t2b_inst|binary_stop_i56_i_n_4 -attr @rip O[2] -attr @name binary_stop_i56_i_n_4 -pin t2b_inst|binary_stop_i55_i I0[2] -pin t2b_inst|binary_stop_i56_i O[2]
load net t2b_inst|binary_stop_i22[5] -attr @rip O[5] -attr @name binary_stop_i22[5] -pin t2b_inst|binary_stop_i21_i I1[5] -pin t2b_inst|binary_stop_i22_i__0 O[5]
load net t2b_inst|binary_stop_i56_i_n_5 -attr @rip O[1] -attr @name binary_stop_i56_i_n_5 -pin t2b_inst|binary_stop_i55_i I0[1] -pin t2b_inst|binary_stop_i56_i O[1]
load net tdl_thermometer_start_val_w[13] -attr @rip thermometer_start_val_o[13] -pin t2b_inst thermometer_start_i[13] -pin tdl_inst thermometer_start_val_o[13]
load net t2b_inst|binary_start_i53[2] -attr @rip O[2] -attr @name binary_start_i53[2] -pin t2b_inst|binary_start_i52_i I0[2] -pin t2b_inst|binary_start_i53_i O[2]
load net t2b_inst|binary_start_i5[1] -attr @rip O[1] -attr @name binary_start_i5[1] -pin t2b_inst|binary_start_i4_i I0[1] -pin t2b_inst|binary_start_i5_i O[1]
load net t2b_inst|binary_stop_i56_i_n_6 -attr @rip O[0] -attr @name binary_stop_i56_i_n_6 -pin t2b_inst|binary_stop_i55_i I0[0] -pin t2b_inst|binary_stop_i56_i O[0]
load net t2b_inst|thermometer_stop_i[36] -attr @rip thermometer_stop_i[36] -attr @name thermometer_stop_i[36] -hierPin t2b_inst thermometer_stop_i[36] -pin t2b_inst|binary_stop_i34_i__0 I0
load net t2b_inst|binary_stop_i65[6] -attr @rip O[6] -attr @name binary_stop_i65[6] -pin t2b_inst|binary_stop_i64_i I1[6] -pin t2b_inst|binary_stop_i65_i__0 O[6]
load net t2b_inst|binary_start_i12[0] -attr @rip O[0] -attr @name binary_start_i12[0] -pin t2b_inst|binary_start_i11_i I0[0] -pin t2b_inst|binary_start_i12_i O[0]
load net t2b_inst|binary_start_i16[1] -attr @rip O[1] -attr @name binary_start_i16[1] -pin t2b_inst|binary_start_i15_i I0[1] -pin t2b_inst|binary_start_i16_i O[1]
load net t2b_inst|binary_stop_i66[4] -attr @rip O[4] -attr @name binary_stop_i66[4] -pin t2b_inst|binary_stop_i65_i I1[4] -pin t2b_inst|binary_stop_i66_i__0 O[4]
load net t2b_inst|binary_start_i39[0] -attr @rip O[0] -attr @name binary_start_i39[0] -pin t2b_inst|binary_start_i38_i I0[0] -pin t2b_inst|binary_start_i39_i O[0]
load net t2b_inst|binary_start_i59[1] -attr @rip O[1] -attr @name binary_start_i59[1] -pin t2b_inst|binary_start_i58_i I0[1] -pin t2b_inst|binary_start_i59_i O[1]
load net t2b_inst|binary_start_i47[1] -attr @rip O[1] -attr @name binary_start_i47[1] -pin t2b_inst|binary_start_i46_i I0[1] -pin t2b_inst|binary_start_i47_i O[1]
load net t2b_inst|binary_start_i36[5] -attr @rip O[5] -attr @name binary_start_i36[5] -pin t2b_inst|binary_start_i35_i I0[5] -pin t2b_inst|binary_start_i36_i O[5]
load net t2b_inst|binary_stop_i54[5] -attr @rip O[5] -attr @name binary_stop_i54[5] -pin t2b_inst|binary_stop_i53_i I1[5] -pin t2b_inst|binary_stop_i54_i__0 O[5]
load net t2b_inst|binary_stop_i8[5] -attr @rip O[5] -attr @name binary_stop_i8[5] -pin t2b_inst|binary_stop_i7_i I1[5] -pin t2b_inst|binary_stop_i8_i__0 O[5]
load net t2b_inst|binary_stop_i17[2] -attr @rip O[2] -attr @name binary_stop_i17[2] -pin t2b_inst|binary_stop_i16_i I1[2] -pin t2b_inst|binary_stop_i17_i__0 O[2]
load net t2b_inst|binary_stop_i60[4] -attr @rip O[4] -attr @name binary_stop_i60[4] -pin t2b_inst|binary_stop_i59_i I1[4] -pin t2b_inst|binary_stop_i60_i__0 O[4]
load net t2b_inst|binary_stop_i20[5] -attr @rip O[5] -attr @name binary_stop_i20[5] -pin t2b_inst|binary_stop_i19_i I1[5] -pin t2b_inst|binary_stop_i20_i__0 O[5]
load net t2b_inst|binary_stop_i14_i_n_0 -attr @rip O[6] -attr @name binary_stop_i14_i_n_0 -pin t2b_inst|binary_stop_i13_i I0[6] -pin t2b_inst|binary_stop_i14_i O[6]
load net t2b_inst|binary_stop_i14_i_n_1 -attr @rip O[5] -attr @name binary_stop_i14_i_n_1 -pin t2b_inst|binary_stop_i13_i I0[5] -pin t2b_inst|binary_stop_i14_i O[5]
load net tdl_thermometer_start_val_w[10] -attr @rip thermometer_start_val_o[10] -pin t2b_inst thermometer_start_i[10] -pin tdl_inst thermometer_start_val_o[10]
load net t2b_inst|binary_start_i44[3] -attr @rip O[3] -attr @name binary_start_i44[3] -pin t2b_inst|binary_start_i43_i I0[3] -pin t2b_inst|binary_start_i44_i O[3]
load net t2b_inst|binary_start_i41[2] -attr @rip O[2] -attr @name binary_start_i41[2] -pin t2b_inst|binary_start_i40_i I0[2] -pin t2b_inst|binary_start_i41_i O[2]
load net t2b_inst|binary_stop_i33[3] -attr @rip O[3] -attr @name binary_stop_i33[3] -pin t2b_inst|binary_stop_i32_i I1[3] -pin t2b_inst|binary_stop_i33_i__0 O[3]
load net t2b_inst|binary_stop_i[1] -attr @rip O[1] -attr @name binary_stop_i[1] -hierPin t2b_inst binary_stop_i[1] -pin t2b_inst|binary_stop_i0_i O[1]
load net t2b_inst|binary_stop_i22[4] -attr @rip O[4] -attr @name binary_stop_i22[4] -pin t2b_inst|binary_stop_i21_i I1[4] -pin t2b_inst|binary_stop_i22_i__0 O[4]
load net t2b_inst|binary_stop_i14_i_n_2 -attr @rip O[4] -attr @name binary_stop_i14_i_n_2 -pin t2b_inst|binary_stop_i13_i I0[4] -pin t2b_inst|binary_stop_i14_i O[4]
load net t2b_inst|binary_stop_i14_i_n_3 -attr @rip O[3] -attr @name binary_stop_i14_i_n_3 -pin t2b_inst|binary_stop_i13_i I0[3] -pin t2b_inst|binary_stop_i14_i O[3]
load net t2b_inst|binary_start_i50[0] -attr @rip O[0] -attr @name binary_start_i50[0] -pin t2b_inst|binary_start_i49_i I0[0] -pin t2b_inst|binary_start_i50_i O[0]
load net t2b_inst|binary_start_i17[3] -attr @rip O[3] -attr @name binary_start_i17[3] -pin t2b_inst|binary_start_i16_i I0[3] -pin t2b_inst|binary_start_i17_i O[3]
load net t2b_inst|binary_stop_i14_i_n_4 -attr @rip O[2] -attr @name binary_stop_i14_i_n_4 -pin t2b_inst|binary_stop_i13_i I0[2] -pin t2b_inst|binary_stop_i14_i O[2]
load net t2b_inst|binary_stop_i65[5] -attr @rip O[5] -attr @name binary_stop_i65[5] -pin t2b_inst|binary_stop_i64_i I1[5] -pin t2b_inst|binary_stop_i65_i__0 O[5]
load net t2b_inst|binary_stop_i14_i_n_5 -attr @rip O[1] -attr @name binary_stop_i14_i_n_5 -pin t2b_inst|binary_stop_i13_i I0[1] -pin t2b_inst|binary_stop_i14_i O[1]
load net t2b_inst|binary_start_i53[3] -attr @rip O[3] -attr @name binary_start_i53[3] -pin t2b_inst|binary_start_i52_i I0[3] -pin t2b_inst|binary_start_i53_i O[3]
load net t2b_inst|binary_start_i5[2] -attr @rip O[2] -attr @name binary_start_i5[2] -pin t2b_inst|binary_start_i4_i I0[2] -pin t2b_inst|binary_start_i5_i O[2]
load net t2b_inst|binary_stop_i35[0] -attr @rip O[0] -attr @name binary_stop_i35[0] -pin t2b_inst|binary_stop_i34_i I1[0] -pin t2b_inst|binary_stop_i35_i__0 O[0]
load net t2b_inst|binary_stop_i64[6] -attr @rip O[6] -attr @name binary_stop_i64[6] -pin t2b_inst|binary_stop_i63_i I1[6] -pin t2b_inst|binary_stop_i64_i__0 O[6]
load net t2b_inst|binary_stop_i14_i_n_6 -attr @rip O[0] -attr @name binary_stop_i14_i_n_6 -pin t2b_inst|binary_stop_i13_i I0[0] -pin t2b_inst|binary_stop_i14_i O[0]
load net t2b_inst|binary_start_i64[1] -attr @rip O[1] -attr @name binary_start_i64[1] -pin t2b_inst|binary_start_i63_i I0[1] -pin t2b_inst|binary_start_i64_i O[1]
load net t2b_inst|binary_start_i16[0] -attr @rip O[0] -attr @name binary_start_i16[0] -pin t2b_inst|binary_start_i15_i I0[0] -pin t2b_inst|binary_start_i16_i O[0]
load net t2b_inst|binary_stop_i45[0] -attr @rip O[0] -attr @name binary_stop_i45[0] -pin t2b_inst|binary_stop_i44_i I1[0] -pin t2b_inst|binary_stop_i45_i__0 O[0]
load net t2b_inst|binary_start_i47[0] -attr @rip O[0] -attr @name binary_start_i47[0] -pin t2b_inst|binary_start_i46_i I0[0] -pin t2b_inst|binary_start_i47_i O[0]
load net t2b_inst|binary_start_i39[1] -attr @rip O[1] -attr @name binary_start_i39[1] -pin t2b_inst|binary_start_i38_i I0[1] -pin t2b_inst|binary_start_i39_i O[1]
load net t2b_inst|binary_stop_i24_i_n_0 -attr @rip O[6] -attr @name binary_stop_i24_i_n_0 -pin t2b_inst|binary_stop_i23_i I0[6] -pin t2b_inst|binary_stop_i24_i O[6]
load net tdl_thermometer_start_val_w[22] -attr @rip thermometer_start_val_o[22] -pin t2b_inst thermometer_start_i[22] -pin tdl_inst thermometer_start_val_o[22]
load net t2b_inst|binary_start_i59[2] -attr @rip O[2] -attr @name binary_start_i59[2] -pin t2b_inst|binary_start_i58_i I0[2] -pin t2b_inst|binary_start_i59_i O[2]
load net t2b_inst|binary_stop_i24_i_n_1 -attr @rip O[5] -attr @name binary_stop_i24_i_n_1 -pin t2b_inst|binary_stop_i23_i I0[5] -pin t2b_inst|binary_stop_i24_i O[5]
load net t2b_inst|binary_stop_i8[4] -attr @rip O[4] -attr @name binary_stop_i8[4] -pin t2b_inst|binary_stop_i7_i I1[4] -pin t2b_inst|binary_stop_i8_i__0 O[4]
load net t2b_inst|binary_start_i48[1] -attr @rip O[1] -attr @name binary_start_i48[1] -pin t2b_inst|binary_start_i47_i I0[1] -pin t2b_inst|binary_start_i48_i O[1]
load net t2b_inst|binary_stop_i24_i_n_2 -attr @rip O[4] -attr @name binary_stop_i24_i_n_2 -pin t2b_inst|binary_stop_i23_i I0[4] -pin t2b_inst|binary_stop_i24_i O[4]
load net t2b_inst|binary_start_i36[6] -attr @rip O[6] -attr @name binary_start_i36[6] -pin t2b_inst|binary_start_i35_i I0[6] -pin t2b_inst|binary_start_i36_i O[6]
load net t2b_inst|binary_stop_i20[4] -attr @rip O[4] -attr @name binary_stop_i20[4] -pin t2b_inst|binary_stop_i19_i I1[4] -pin t2b_inst|binary_stop_i20_i__0 O[4]
load net cnt_nrst_w -pin cnt_nrst_w_i O -pin coarse_cnt_inst nrst_i
netloc cnt_nrst_w 1 1 1 210
load net t2b_inst|binary_stop_i24_i_n_3 -attr @rip O[3] -attr @name binary_stop_i24_i_n_3 -pin t2b_inst|binary_stop_i23_i I0[3] -pin t2b_inst|binary_stop_i24_i O[3]
load net t2b_inst|binary_start_i25[0] -attr @rip O[0] -attr @name binary_start_i25[0] -pin t2b_inst|binary_start_i24_i I0[0] -pin t2b_inst|binary_start_i25_i O[0]
load net t2b_inst|binary_stop_i33[0] -attr @rip O[0] -attr @name binary_stop_i33[0] -pin t2b_inst|binary_stop_i32_i I1[0] -pin t2b_inst|binary_stop_i33_i__0 O[0]
load net t2b_inst|binary_stop_i54[6] -attr @rip O[6] -attr @name binary_stop_i54[6] -pin t2b_inst|binary_stop_i53_i I1[6] -pin t2b_inst|binary_stop_i54_i__0 O[6]
load net t2b_inst|binary_stop_i17[3] -attr @rip O[3] -attr @name binary_stop_i17[3] -pin t2b_inst|binary_stop_i16_i I1[3] -pin t2b_inst|binary_stop_i17_i__0 O[3]
load net t2b_inst|binary_stop_i24_i_n_4 -attr @rip O[2] -attr @name binary_stop_i24_i_n_4 -pin t2b_inst|binary_stop_i23_i I0[2] -pin t2b_inst|binary_stop_i24_i O[2]
load net t2b_inst|binary_start_i54[5] -attr @rip O[5] -attr @name binary_start_i54[5] -pin t2b_inst|binary_start_i53_i I0[5] -pin t2b_inst|binary_start_i54_i O[5]
load net t2b_inst|binary_stop_i68[3] -attr @rip O[3] -attr @name binary_stop_i68[3] -pin t2b_inst|binary_stop_i67_i I1[3] -pin t2b_inst|binary_stop_i68_i__0 O[3]
load net t2b_inst|binary_stop_i24_i_n_5 -attr @rip O[1] -attr @name binary_stop_i24_i_n_5 -pin t2b_inst|binary_stop_i23_i I0[1] -pin t2b_inst|binary_stop_i24_i O[1]
load net t2b_inst|binary_start_i44[2] -attr @rip O[2] -attr @name binary_start_i44[2] -pin t2b_inst|binary_start_i43_i I0[2] -pin t2b_inst|binary_start_i44_i O[2]
load net t2b_inst|binary_stop_i24_i_n_6 -attr @rip O[0] -attr @name binary_stop_i24_i_n_6 -pin t2b_inst|binary_stop_i23_i I0[0] -pin t2b_inst|binary_stop_i24_i O[0]
load net t2b_inst|binary_start_i41[3] -attr @rip O[3] -attr @name binary_start_i41[3] -pin t2b_inst|binary_start_i40_i I0[3] -pin t2b_inst|binary_start_i41_i O[3]
load net tdl_thermometer_start_val_w[11] -attr @rip thermometer_start_val_o[11] -pin t2b_inst thermometer_start_i[11] -pin tdl_inst thermometer_start_val_o[11]
load net t2b_inst|binary_stop_i65[4] -attr @rip O[4] -attr @name binary_stop_i65[4] -pin t2b_inst|binary_stop_i64_i I1[4] -pin t2b_inst|binary_stop_i65_i__0 O[4]
load net t2b_inst|binary_start_i17[4] -attr @rip O[4] -attr @name binary_start_i17[4] -pin t2b_inst|binary_start_i16_i I0[4] -pin t2b_inst|binary_start_i17_i O[4]
load net t2b_inst|binary_start_i64[0] -attr @rip O[0] -attr @name binary_start_i64[0] -pin t2b_inst|binary_start_i63_i I0[0] -pin t2b_inst|binary_start_i64_i O[0]
load net t2b_inst|binary_start_i45[0] -attr @rip O[0] -attr @name binary_start_i45[0] -pin t2b_inst|binary_start_i44_i I0[0] -pin t2b_inst|binary_start_i45_i O[0]
load net t2b_inst|binary_start_i53[4] -attr @rip O[4] -attr @name binary_start_i53[4] -pin t2b_inst|binary_start_i52_i I0[4] -pin t2b_inst|binary_start_i53_i O[4]
load net t2b_inst|binary_stop_i35[1] -attr @rip O[1] -attr @name binary_stop_i35[1] -pin t2b_inst|binary_stop_i34_i I1[1] -pin t2b_inst|binary_stop_i35_i__0 O[1]
load net t2b_inst|thermometer_stop_i[38] -attr @rip thermometer_stop_i[38] -attr @name thermometer_stop_i[38] -hierPin t2b_inst thermometer_stop_i[38] -pin t2b_inst|binary_stop_i32_i__0 I0
load net t2b_inst|binary_start_i31[6] -attr @rip O[6] -attr @name binary_start_i31[6] -pin t2b_inst|binary_start_i30_i I0[6] -pin t2b_inst|binary_start_i31_i O[6]
load net t2b_inst|binary_stop_i25[6] -attr @rip O[6] -attr @name binary_stop_i25[6] -pin t2b_inst|binary_stop_i24_i I1[6] -pin t2b_inst|binary_stop_i25_i__0 O[6]
load net t2b_inst|binary_start_i45[2] -attr @rip O[2] -attr @name binary_start_i45[2] -pin t2b_inst|binary_start_i44_i I0[2] -pin t2b_inst|binary_start_i45_i O[2]
load net t2b_inst|binary_stop_i50[5] -attr @rip O[5] -attr @name binary_stop_i50[5] -pin t2b_inst|binary_stop_i49_i I1[5] -pin t2b_inst|binary_stop_i50_i__0 O[5]
load net tdl_thermometer_start_val_w[21] -attr @rip thermometer_start_val_o[21] -pin t2b_inst thermometer_start_i[21] -pin tdl_inst thermometer_start_val_o[21]
load net t2b_inst|binary_stop_i15_i_n_0 -attr @rip O[6] -attr @name binary_stop_i15_i_n_0 -pin t2b_inst|binary_stop_i14_i I0[6] -pin t2b_inst|binary_stop_i15_i O[6]
load net t2b_inst|binary_stop_i8[3] -attr @rip O[3] -attr @name binary_stop_i8[3] -pin t2b_inst|binary_stop_i7_i I1[3] -pin t2b_inst|binary_stop_i8_i__0 O[3]
load net t2b_inst|binary_start_i48[0] -attr @rip O[0] -attr @name binary_start_i48[0] -pin t2b_inst|binary_start_i47_i I0[0] -pin t2b_inst|binary_start_i48_i O[0]
load net t2b_inst|binary_stop_i15_i_n_1 -attr @rip O[5] -attr @name binary_stop_i15_i_n_1 -pin t2b_inst|binary_stop_i14_i I0[5] -pin t2b_inst|binary_stop_i15_i O[5]
load net t2b_inst|binary_start_i59[3] -attr @rip O[3] -attr @name binary_start_i59[3] -pin t2b_inst|binary_start_i58_i I0[3] -pin t2b_inst|binary_start_i59_i O[3]
load net t2b_inst|binary_stop_i15_i_n_2 -attr @rip O[4] -attr @name binary_stop_i15_i_n_2 -pin t2b_inst|binary_stop_i14_i I0[4] -pin t2b_inst|binary_stop_i15_i O[4]
load net t2b_inst|binary_stop_i15_i_n_3 -attr @rip O[3] -attr @name binary_stop_i15_i_n_3 -pin t2b_inst|binary_stop_i14_i I0[3] -pin t2b_inst|binary_stop_i15_i O[3]
load net t2b_inst|binary_stop_i68[2] -attr @rip O[2] -attr @name binary_stop_i68[2] -pin t2b_inst|binary_stop_i67_i I1[2] -pin t2b_inst|binary_stop_i68_i__0 O[2]
load net t2b_inst|binary_stop_i15_i_n_4 -attr @rip O[2] -attr @name binary_stop_i15_i_n_4 -pin t2b_inst|binary_stop_i14_i I0[2] -pin t2b_inst|binary_stop_i15_i O[2]
load net t2b_inst|binary_stop_i33[1] -attr @rip O[1] -attr @name binary_stop_i33[1] -pin t2b_inst|binary_stop_i32_i I1[1] -pin t2b_inst|binary_stop_i33_i__0 O[1]
load net t2b_inst|binary_stop_i17[4] -attr @rip O[4] -attr @name binary_stop_i17[4] -pin t2b_inst|binary_stop_i16_i I1[4] -pin t2b_inst|binary_stop_i17_i__0 O[4]
load net t2b_inst|binary_start_i54[6] -attr @rip O[6] -attr @name binary_start_i54[6] -pin t2b_inst|binary_start_i53_i I0[6] -pin t2b_inst|binary_start_i54_i O[6]
load net t2b_inst|binary_stop_i15_i_n_5 -attr @rip O[1] -attr @name binary_stop_i15_i_n_5 -pin t2b_inst|binary_stop_i14_i I0[1] -pin t2b_inst|binary_stop_i15_i O[1]
load net t2b_inst|binary_stop_i60[6] -attr @rip O[6] -attr @name binary_stop_i60[6] -pin t2b_inst|binary_stop_i59_i I1[6] -pin t2b_inst|binary_stop_i60_i__0 O[6]
load net t2b_inst|binary_start_i6[2] -attr @rip O[2] -attr @name binary_start_i6[2] -pin t2b_inst|binary_start_i5_i I0[2] -pin t2b_inst|binary_start_i6_i O[2]
load net t2b_inst|binary_stop_i15_i_n_6 -attr @rip O[0] -attr @name binary_stop_i15_i_n_6 -pin t2b_inst|binary_stop_i14_i I0[0] -pin t2b_inst|binary_stop_i15_i O[0]
load net t2b_inst|binary_stop_i51_i_n_0 -attr @rip O[6] -attr @name binary_stop_i51_i_n_0 -pin t2b_inst|binary_stop_i50_i I0[6] -pin t2b_inst|binary_stop_i51_i O[6]
load net t2b_inst|binary_stop_i65[3] -attr @rip O[3] -attr @name binary_stop_i65[3] -pin t2b_inst|binary_stop_i64_i I1[3] -pin t2b_inst|binary_stop_i65_i__0 O[3]
load net t2b_inst|binary_stop_i68_i_n_0 -attr @rip O[6] -attr @name binary_stop_i68_i_n_0 -pin t2b_inst|binary_stop_i67_i I0[6] -pin t2b_inst|binary_stop_i68_i O[6]
load net t2b_inst|binary_start_i5[0] -attr @rip O[0] -attr @name binary_start_i5[0] -pin t2b_inst|binary_start_i4_i I0[0] -pin t2b_inst|binary_start_i5_i O[0]
load net t2b_inst|binary_start_i41[4] -attr @rip O[4] -attr @name binary_start_i41[4] -pin t2b_inst|binary_start_i40_i I0[4] -pin t2b_inst|binary_start_i41_i O[4]
load net t2b_inst|binary_start_i44[5] -attr @rip O[5] -attr @name binary_start_i44[5] -pin t2b_inst|binary_start_i43_i I0[5] -pin t2b_inst|binary_start_i44_i O[5]
load net t2b_inst|binary_stop_i51_i_n_1 -attr @rip O[5] -attr @name binary_stop_i51_i_n_1 -pin t2b_inst|binary_stop_i50_i I0[5] -pin t2b_inst|binary_stop_i51_i O[5]
load net t2b_inst|binary_stop_i68_i_n_1 -attr @rip O[5] -attr @name binary_stop_i68_i_n_1 -pin t2b_inst|binary_stop_i67_i I0[5] -pin t2b_inst|binary_stop_i68_i O[5]
load net t2b_inst|binary_stop_i3_i_n_0 -attr @rip O[6] -attr @name binary_stop_i3_i_n_0 -pin t2b_inst|binary_stop_i2_i I0[6] -pin t2b_inst|binary_stop_i3_i O[6]
load net t2b_inst|binary_stop_i51_i_n_2 -attr @rip O[4] -attr @name binary_stop_i51_i_n_2 -pin t2b_inst|binary_stop_i50_i I0[4] -pin t2b_inst|binary_stop_i51_i O[4]
load net t2b_inst|binary_stop_i68_i_n_2 -attr @rip O[4] -attr @name binary_stop_i68_i_n_2 -pin t2b_inst|binary_stop_i67_i I0[4] -pin t2b_inst|binary_stop_i68_i O[4]
load net t2b_inst|binary_start_i17[5] -attr @rip O[5] -attr @name binary_start_i17[5] -pin t2b_inst|binary_start_i16_i I0[5] -pin t2b_inst|binary_start_i17_i O[5]
load net t2b_inst|binary_stop_i3_i_n_1 -attr @rip O[5] -attr @name binary_stop_i3_i_n_1 -pin t2b_inst|binary_stop_i2_i I0[5] -pin t2b_inst|binary_stop_i3_i O[5]
load net t2b_inst|binary_stop_i51_i_n_3 -attr @rip O[3] -attr @name binary_stop_i51_i_n_3 -pin t2b_inst|binary_stop_i50_i I0[3] -pin t2b_inst|binary_stop_i51_i O[3]
load net t2b_inst|binary_stop_i68_i_n_3 -attr @rip O[3] -attr @name binary_stop_i68_i_n_3 -pin t2b_inst|binary_stop_i67_i I0[3] -pin t2b_inst|binary_stop_i68_i O[3]
load net t2b_inst|binary_start_i1[5] -attr @rip O[5] -attr @name binary_start_i1[5] -pin t2b_inst|binary_start_i0_i I0[5] -pin t2b_inst|binary_start_i1_i O[5]
load net t2b_inst|binary_stop_i25[5] -attr @rip O[5] -attr @name binary_stop_i25[5] -pin t2b_inst|binary_stop_i24_i I1[5] -pin t2b_inst|binary_stop_i25_i__0 O[5]
load net t2b_inst|binary_start_i45[1] -attr @rip O[1] -attr @name binary_start_i45[1] -pin t2b_inst|binary_start_i44_i I0[1] -pin t2b_inst|binary_start_i45_i O[1]
load net t2b_inst|binary_stop_i3_i_n_2 -attr @rip O[4] -attr @name binary_stop_i3_i_n_2 -pin t2b_inst|binary_stop_i2_i I0[4] -pin t2b_inst|binary_stop_i3_i O[4]
load net t2b_inst|binary_stop_i51_i_n_4 -attr @rip O[2] -attr @name binary_stop_i51_i_n_4 -pin t2b_inst|binary_stop_i50_i I0[2] -pin t2b_inst|binary_stop_i51_i O[2]
load net t2b_inst|binary_stop_i66[1] -attr @rip O[1] -attr @name binary_stop_i66[1] -pin t2b_inst|binary_stop_i65_i I1[1] -pin t2b_inst|binary_stop_i66_i__0 O[1]
load net t2b_inst|binary_stop_i68_i_n_4 -attr @rip O[2] -attr @name binary_stop_i68_i_n_4 -pin t2b_inst|binary_stop_i67_i I0[2] -pin t2b_inst|binary_stop_i68_i O[2]
load net t2b_inst|binary_start_i53[5] -attr @rip O[5] -attr @name binary_start_i53[5] -pin t2b_inst|binary_start_i52_i I0[5] -pin t2b_inst|binary_start_i53_i O[5]
load net t2b_inst|binary_stop_i3_i_n_3 -attr @rip O[3] -attr @name binary_stop_i3_i_n_3 -pin t2b_inst|binary_stop_i2_i I0[3] -pin t2b_inst|binary_stop_i3_i O[3]
load net t2b_inst|binary_stop_i51_i_n_5 -attr @rip O[1] -attr @name binary_stop_i51_i_n_5 -pin t2b_inst|binary_stop_i50_i I0[1] -pin t2b_inst|binary_stop_i51_i O[1]
load net t2b_inst|binary_stop_i68_i_n_5 -attr @rip O[1] -attr @name binary_stop_i68_i_n_5 -pin t2b_inst|binary_stop_i67_i I0[1] -pin t2b_inst|binary_stop_i68_i O[1]
load net t2b_inst|thermometer_stop_i[39] -attr @rip thermometer_stop_i[39] -attr @name thermometer_stop_i[39] -hierPin t2b_inst thermometer_stop_i[39] -pin t2b_inst|binary_stop_i31_i__0 I0
load net t2b_inst|binary_start_i64[3] -attr @rip O[3] -attr @name binary_start_i64[3] -pin t2b_inst|binary_start_i63_i I0[3] -pin t2b_inst|binary_start_i64_i O[3]
load net t2b_inst|binary_stop_i3_i_n_4 -attr @rip O[2] -attr @name binary_stop_i3_i_n_4 -pin t2b_inst|binary_stop_i2_i I0[2] -pin t2b_inst|binary_stop_i3_i O[2]
load net t2b_inst|binary_stop_i51_i_n_6 -attr @rip O[0] -attr @name binary_stop_i51_i_n_6 -pin t2b_inst|binary_stop_i50_i I0[0] -pin t2b_inst|binary_stop_i51_i O[0]
load net t2b_inst|binary_stop_i68_i_n_6 -attr @rip O[0] -attr @name binary_stop_i68_i_n_6 -pin t2b_inst|binary_stop_i67_i I0[0] -pin t2b_inst|binary_stop_i68_i O[0]
load net t2b_inst|binary_stop_i3_i_n_5 -attr @rip O[1] -attr @name binary_stop_i3_i_n_5 -pin t2b_inst|binary_stop_i2_i I0[1] -pin t2b_inst|binary_stop_i3_i O[1]
load net t2b_inst|binary_stop_i50[6] -attr @rip O[6] -attr @name binary_stop_i50[6] -pin t2b_inst|binary_stop_i49_i I1[6] -pin t2b_inst|binary_stop_i50_i__0 O[6]
load net t2b_inst|binary_stop_i3_i_n_6 -attr @rip O[0] -attr @name binary_stop_i3_i_n_6 -pin t2b_inst|binary_stop_i2_i I0[0] -pin t2b_inst|binary_stop_i3_i O[0]
load net t2b_inst|binary_stop_i8[2] -attr @rip O[2] -attr @name binary_stop_i8[2] -pin t2b_inst|binary_stop_i7_i I1[2] -pin t2b_inst|binary_stop_i8_i__0 O[2]
load net t2b_inst|binary_stop_i19[0] -attr @rip O[0] -attr @name binary_stop_i19[0] -pin t2b_inst|binary_stop_i18_i I1[0] -pin t2b_inst|binary_stop_i19_i__0 O[0]
load net t2b_inst|binary_start_i31[5] -attr @rip O[5] -attr @name binary_start_i31[5] -pin t2b_inst|binary_start_i30_i I0[5] -pin t2b_inst|binary_start_i31_i O[5]
load net t2b_inst|binary_stop_i68[1] -attr @rip O[1] -attr @name binary_stop_i68[1] -pin t2b_inst|binary_stop_i67_i I1[1] -pin t2b_inst|binary_stop_i68_i__0 O[1]
load net t2b_inst|binary_start_i48[3] -attr @rip O[3] -attr @name binary_start_i48[3] -pin t2b_inst|binary_start_i47_i I0[3] -pin t2b_inst|binary_start_i48_i O[3]
load net t2b_inst|binary_stop_i56[1] -attr @rip O[1] -attr @name binary_stop_i56[1] -pin t2b_inst|binary_stop_i55_i I1[1] -pin t2b_inst|binary_stop_i56_i__0 O[1]
load net t2b_inst|binary_stop_i20[6] -attr @rip O[6] -attr @name binary_stop_i20[6] -pin t2b_inst|binary_stop_i19_i I1[6] -pin t2b_inst|binary_stop_i20_i__0 O[6]
load net t2b_inst|binary_stop_i17[5] -attr @rip O[5] -attr @name binary_stop_i17[5] -pin t2b_inst|binary_stop_i16_i I1[5] -pin t2b_inst|binary_stop_i17_i__0 O[5]
load net t2b_inst|binary_start_i44[4] -attr @rip O[4] -attr @name binary_start_i44[4] -pin t2b_inst|binary_start_i43_i I0[4] -pin t2b_inst|binary_start_i44_i O[4]
load net t2b_inst|binary_start_i6[3] -attr @rip O[3] -attr @name binary_start_i6[3] -pin t2b_inst|binary_start_i5_i I0[3] -pin t2b_inst|binary_start_i6_i O[3]
load net t2b_inst|binary_stop_i25[4] -attr @rip O[4] -attr @name binary_stop_i25[4] -pin t2b_inst|binary_stop_i24_i I1[4] -pin t2b_inst|binary_stop_i25_i__0 O[4]
load net t2b_inst|binary_stop_i66[0] -attr @rip O[0] -attr @name binary_stop_i66[0] -pin t2b_inst|binary_stop_i65_i I1[0] -pin t2b_inst|binary_stop_i66_i__0 O[0]
load net t2b_inst|binary_stop_i24[5] -attr @rip O[5] -attr @name binary_stop_i24[5] -pin t2b_inst|binary_stop_i23_i I1[5] -pin t2b_inst|binary_stop_i24_i__0 O[5]
load net t2b_inst|binary_start_i64[2] -attr @rip O[2] -attr @name binary_start_i64[2] -pin t2b_inst|binary_start_i63_i I0[2] -pin t2b_inst|binary_start_i64_i O[2]
load net t2b_inst|binary_start_i1[6] -attr @rip O[6] -attr @name binary_start_i1[6] -pin t2b_inst|binary_start_i0_i I0[6] -pin t2b_inst|binary_start_i1_i O[6]
load net t2b_inst|binary_start_i53[6] -attr @rip O[6] -attr @name binary_start_i53[6] -pin t2b_inst|binary_start_i52_i I0[6] -pin t2b_inst|binary_start_i53_i O[6]
load net t2b_inst|binary_start_i45[4] -attr @rip O[4] -attr @name binary_start_i45[4] -pin t2b_inst|binary_start_i44_i I0[4] -pin t2b_inst|binary_start_i45_i O[4]
load net t2b_inst|binary_stop_i20[1] -attr @rip O[1] -attr @name binary_stop_i20[1] -pin t2b_inst|binary_stop_i19_i I1[1] -pin t2b_inst|binary_stop_i20_i__0 O[1]
load net t2b_inst|binary_start_i31[4] -attr @rip O[4] -attr @name binary_start_i31[4] -pin t2b_inst|binary_start_i30_i I0[4] -pin t2b_inst|binary_start_i31_i O[4]
load net t2b_inst|binary_stop_i40[6] -attr @rip O[6] -attr @name binary_stop_i40[6] -pin t2b_inst|binary_stop_i39_i I1[6] -pin t2b_inst|binary_stop_i40_i__0 O[6]
load net t2b_inst|binary_stop_i68[0] -attr @rip O[0] -attr @name binary_stop_i68[0] -pin t2b_inst|binary_stop_i67_i I1[0] -pin t2b_inst|binary_stop_i68_i__0 O[0]
load net t2b_inst|binary_stop_i19[1] -attr @rip O[1] -attr @name binary_stop_i19[1] -pin t2b_inst|binary_stop_i18_i I1[1] -pin t2b_inst|binary_stop_i19_i__0 O[1]
load net t2b_inst|binary_stop_i67[5] -attr @rip O[5] -attr @name binary_stop_i67[5] -pin t2b_inst|binary_stop_i66_i I1[5] -pin t2b_inst|binary_stop_i67_i__0 O[5]
load net t2b_inst|binary_stop_i17_i_n_0 -attr @rip O[6] -attr @name binary_stop_i17_i_n_0 -pin t2b_inst|binary_stop_i16_i I0[6] -pin t2b_inst|binary_stop_i17_i O[6]
load net t2b_inst|binary_start_i48[2] -attr @rip O[2] -attr @name binary_start_i48[2] -pin t2b_inst|binary_start_i47_i I0[2] -pin t2b_inst|binary_start_i48_i O[2]
load net t2b_inst|binary_start_i39[4] -attr @rip O[4] -attr @name binary_start_i39[4] -pin t2b_inst|binary_start_i38_i I0[4] -pin t2b_inst|binary_start_i39_i O[4]
load net t2b_inst|binary_stop_i17_i_n_1 -attr @rip O[5] -attr @name binary_stop_i17_i_n_1 -pin t2b_inst|binary_stop_i16_i I0[5] -pin t2b_inst|binary_stop_i17_i O[5]
load net t2b_inst|binary_start_i6[0] -attr @rip O[0] -attr @name binary_start_i6[0] -pin t2b_inst|binary_start_i5_i I0[0] -pin t2b_inst|binary_start_i6_i O[0]
load net t2b_inst|binary_stop_i27[6] -attr @rip O[6] -attr @name binary_stop_i27[6] -pin t2b_inst|binary_stop_i26_i I1[6] -pin t2b_inst|binary_stop_i27_i__0 O[6]
load net t2b_inst|binary_stop_i17_i_n_2 -attr @rip O[4] -attr @name binary_stop_i17_i_n_2 -pin t2b_inst|binary_stop_i16_i I0[4] -pin t2b_inst|binary_stop_i17_i O[4]
load net t2b_inst|binary_stop_i56[2] -attr @rip O[2] -attr @name binary_stop_i56[2] -pin t2b_inst|binary_stop_i55_i I1[2] -pin t2b_inst|binary_stop_i56_i__0 O[2]
load net t2b_inst|binary_stop_i17_i_n_3 -attr @rip O[3] -attr @name binary_stop_i17_i_n_3 -pin t2b_inst|binary_stop_i16_i I0[3] -pin t2b_inst|binary_stop_i17_i O[3]
load net t2b_inst|binary_stop_i2_i_n_0 -attr @rip O[6] -attr @name binary_stop_i2_i_n_0 -pin t2b_inst|binary_stop_i1_i I0[6] -pin t2b_inst|binary_stop_i2_i O[6]
load net t2b_inst|binary_stop_i17_i_n_4 -attr @rip O[2] -attr @name binary_stop_i17_i_n_4 -pin t2b_inst|binary_stop_i16_i I0[2] -pin t2b_inst|binary_stop_i17_i O[2]
load net t2b_inst|binary_stop_i14[5] -attr @rip O[5] -attr @name binary_stop_i14[5] -pin t2b_inst|binary_stop_i13_i I1[5] -pin t2b_inst|binary_stop_i14_i__0 O[5]
load net t2b_inst|binary_stop_i2_i_n_1 -attr @rip O[5] -attr @name binary_stop_i2_i_n_1 -pin t2b_inst|binary_stop_i1_i I0[5] -pin t2b_inst|binary_stop_i2_i O[5]
load net t2b_inst|binary_stop_i17_i_n_5 -attr @rip O[1] -attr @name binary_stop_i17_i_n_5 -pin t2b_inst|binary_stop_i16_i I0[1] -pin t2b_inst|binary_stop_i17_i O[1]
load net t2b_inst|binary_stop_i2_i_n_2 -attr @rip O[4] -attr @name binary_stop_i2_i_n_2 -pin t2b_inst|binary_stop_i1_i I0[4] -pin t2b_inst|binary_stop_i2_i O[4]
load net t2b_inst|binary_stop_i17_i_n_6 -attr @rip O[0] -attr @name binary_stop_i17_i_n_6 -pin t2b_inst|binary_stop_i16_i I0[0] -pin t2b_inst|binary_stop_i17_i O[0]
load net t2b_inst|binary_start_i7[1] -attr @rip O[1] -attr @name binary_start_i7[1] -pin t2b_inst|binary_start_i6_i I0[1] -pin t2b_inst|binary_start_i7_i O[1]
load net t2b_inst|binary_start_i1[3] -attr @rip O[3] -attr @name binary_start_i1[3] -pin t2b_inst|binary_start_i0_i I0[3] -pin t2b_inst|binary_start_i1_i O[3]
load net t2b_inst|binary_stop_i25[3] -attr @rip O[3] -attr @name binary_stop_i25[3] -pin t2b_inst|binary_stop_i24_i I1[3] -pin t2b_inst|binary_stop_i25_i__0 O[3]
load net t2b_inst|binary_stop_i2_i_n_3 -attr @rip O[3] -attr @name binary_stop_i2_i_n_3 -pin t2b_inst|binary_stop_i1_i I0[3] -pin t2b_inst|binary_stop_i2_i O[3]
load net t2b_inst|binary_stop_i2_i_n_4 -attr @rip O[2] -attr @name binary_stop_i2_i_n_4 -pin t2b_inst|binary_stop_i1_i I0[2] -pin t2b_inst|binary_stop_i2_i O[2]
load net t2b_inst|binary_stop_i24[4] -attr @rip O[4] -attr @name binary_stop_i24[4] -pin t2b_inst|binary_stop_i23_i I1[4] -pin t2b_inst|binary_stop_i24_i__0 O[4]
load net t2b_inst|binary_stop_i2_i_n_5 -attr @rip O[1] -attr @name binary_stop_i2_i_n_5 -pin t2b_inst|binary_stop_i1_i I0[1] -pin t2b_inst|binary_stop_i2_i O[1]
load net t2b_inst|binary_start_i50[4] -attr @rip O[4] -attr @name binary_start_i50[4] -pin t2b_inst|binary_start_i49_i I0[4] -pin t2b_inst|binary_start_i50_i O[4]
load net t2b_inst|binary_stop_i2_i_n_6 -attr @rip O[0] -attr @name binary_stop_i2_i_n_6 -pin t2b_inst|binary_stop_i1_i I0[0] -pin t2b_inst|binary_stop_i2_i O[0]
load net t2b_inst|binary_start_i45[3] -attr @rip O[3] -attr @name binary_start_i45[3] -pin t2b_inst|binary_start_i44_i I0[3] -pin t2b_inst|binary_start_i45_i O[3]
load net t2b_inst|binary_stop_i35[4] -attr @rip O[4] -attr @name binary_stop_i35[4] -pin t2b_inst|binary_stop_i34_i I1[4] -pin t2b_inst|binary_stop_i35_i__0 O[4]
load net t2b_inst|binary_stop_i20[0] -attr @rip O[0] -attr @name binary_stop_i20[0] -pin t2b_inst|binary_stop_i19_i I1[0] -pin t2b_inst|binary_stop_i20_i__0 O[0]
load net t2b_inst|binary_start_i4[2] -attr @rip O[2] -attr @name binary_start_i4[2] -pin t2b_inst|binary_start_i3_i I0[2] -pin t2b_inst|binary_start_i4_i O[2]
load net t2b_inst|binary_start_i64[5] -attr @rip O[5] -attr @name binary_start_i64[5] -pin t2b_inst|binary_start_i63_i I0[5] -pin t2b_inst|binary_start_i64_i O[5]
load net t2b_inst|binary_stop_i23[4] -attr @rip O[4] -attr @name binary_stop_i23[4] -pin t2b_inst|binary_stop_i22_i I1[4] -pin t2b_inst|binary_stop_i23_i__0 O[4]
load net t2b_inst|binary_start_i31[3] -attr @rip O[3] -attr @name binary_start_i31[3] -pin t2b_inst|binary_start_i30_i I0[3] -pin t2b_inst|binary_start_i31_i O[3]
load net t2b_inst|binary_start_i54[1] -attr @rip O[1] -attr @name binary_start_i54[1] -pin t2b_inst|binary_start_i53_i I0[1] -pin t2b_inst|binary_start_i54_i O[1]
load net t2b_inst|binary_stop_i19[2] -attr @rip O[2] -attr @name binary_stop_i19[2] -pin t2b_inst|binary_stop_i18_i I1[2] -pin t2b_inst|binary_stop_i19_i__0 O[2]
load net t2b_inst|binary_stop_i27[5] -attr @rip O[5] -attr @name binary_stop_i27[5] -pin t2b_inst|binary_stop_i26_i I1[5] -pin t2b_inst|binary_stop_i27_i__0 O[5]
load net t2b_inst|binary_stop_i67[6] -attr @rip O[6] -attr @name binary_stop_i67[6] -pin t2b_inst|binary_stop_i66_i I1[6] -pin t2b_inst|binary_stop_i67_i__0 O[6]
load net t2b_inst|binary_start_i39[5] -attr @rip O[5] -attr @name binary_start_i39[5] -pin t2b_inst|binary_start_i38_i I0[5] -pin t2b_inst|binary_start_i39_i O[5]
load net tdl_thermometer_stop_val_w[5] -attr @rip thermometer_stop_val_o[5] -pin t2b_inst thermometer_stop_i[5] -pin tdl_inst thermometer_stop_val_o[5]
load net t2b_inst|binary_start_i6[1] -attr @rip O[1] -attr @name binary_start_i6[1] -pin t2b_inst|binary_start_i5_i I0[1] -pin t2b_inst|binary_start_i6_i O[1]
load net t2b_inst|binary_start_i28[6] -attr @rip O[6] -attr @name binary_start_i28[6] -pin t2b_inst|binary_start_i27_i I0[6] -pin t2b_inst|binary_start_i28_i O[6]
load net t2b_inst|binary_stop_i44_i_n_0 -attr @rip O[6] -attr @name binary_stop_i44_i_n_0 -pin t2b_inst|binary_stop_i43_i I0[6] -pin t2b_inst|binary_stop_i44_i O[6]
load net t2b_inst|binary_start_i48[5] -attr @rip O[5] -attr @name binary_start_i48[5] -pin t2b_inst|binary_start_i47_i I0[5] -pin t2b_inst|binary_start_i48_i O[5]
load net t2b_inst|binary_stop_i44_i_n_1 -attr @rip O[5] -attr @name binary_stop_i44_i_n_1 -pin t2b_inst|binary_stop_i43_i I0[5] -pin t2b_inst|binary_stop_i44_i O[5]
load net t2b_inst|binary_stop_i1[0] -attr @rip O[0] -attr @name binary_stop_i1[0] -pin t2b_inst|binary_stop_i0_i I1[0] -pin t2b_inst|binary_stop_i1_i__0 O[0]
load net t2b_inst|binary_stop_i44_i_n_2 -attr @rip O[4] -attr @name binary_stop_i44_i_n_2 -pin t2b_inst|binary_stop_i43_i I0[4] -pin t2b_inst|binary_stop_i44_i O[4]
load net t2b_inst|binary_stop_i14[6] -attr @rip O[6] -attr @name binary_stop_i14[6] -pin t2b_inst|binary_stop_i13_i I1[6] -pin t2b_inst|binary_stop_i14_i__0 O[6]
load net t2b_inst|binary_stop_i25[2] -attr @rip O[2] -attr @name binary_stop_i25[2] -pin t2b_inst|binary_stop_i24_i I1[2] -pin t2b_inst|binary_stop_i25_i__0 O[2]
load net t2b_inst|binary_stop_i44_i_n_3 -attr @rip O[3] -attr @name binary_stop_i44_i_n_3 -pin t2b_inst|binary_stop_i43_i I0[3] -pin t2b_inst|binary_stop_i44_i O[3]
load net t2b_inst|binary_stop_i44_i_n_4 -attr @rip O[2] -attr @name binary_stop_i44_i_n_4 -pin t2b_inst|binary_stop_i43_i I0[2] -pin t2b_inst|binary_stop_i44_i O[2]
load net t2b_inst|binary_start_i7[2] -attr @rip O[2] -attr @name binary_start_i7[2] -pin t2b_inst|binary_start_i6_i I0[2] -pin t2b_inst|binary_start_i7_i O[2]
load net t2b_inst|binary_start_i1[4] -attr @rip O[4] -attr @name binary_start_i1[4] -pin t2b_inst|binary_start_i0_i I0[4] -pin t2b_inst|binary_start_i1_i O[4]
load net t2b_inst|binary_stop_i44_i_n_5 -attr @rip O[1] -attr @name binary_stop_i44_i_n_5 -pin t2b_inst|binary_stop_i43_i I0[1] -pin t2b_inst|binary_stop_i44_i O[1]
load net tdl_thermometer_stop_val_w[48] -attr @rip thermometer_stop_val_o[48] -pin t2b_inst thermometer_stop_i[48] -pin tdl_inst thermometer_stop_val_o[48]
load net t2b_inst|binary_start_i26[0] -attr @rip O[0] -attr @name binary_start_i26[0] -pin t2b_inst|binary_start_i25_i I0[0] -pin t2b_inst|binary_start_i26_i O[0]
load net t2b_inst|binary_start_i50[3] -attr @rip O[3] -attr @name binary_start_i50[3] -pin t2b_inst|binary_start_i49_i I0[3] -pin t2b_inst|binary_start_i50_i O[3]
load net t2b_inst|binary_stop_i44_i_n_6 -attr @rip O[0] -attr @name binary_stop_i44_i_n_6 -pin t2b_inst|binary_stop_i43_i I0[0] -pin t2b_inst|binary_stop_i44_i O[0]
load net t2b_inst|binary_stop_i46[3] -attr @rip O[3] -attr @name binary_stop_i46[3] -pin t2b_inst|binary_stop_i45_i I1[3] -pin t2b_inst|binary_stop_i46_i__0 O[3]
load net t2b_inst|binary_stop_i33_i_n_0 -attr @rip O[6] -attr @name binary_stop_i33_i_n_0 -pin t2b_inst|binary_stop_i32_i I0[6] -pin t2b_inst|binary_stop_i33_i O[6]
load net t2b_inst|binary_start_i64[4] -attr @rip O[4] -attr @name binary_start_i64[4] -pin t2b_inst|binary_start_i63_i I0[4] -pin t2b_inst|binary_start_i64_i O[4]
load net t2b_inst|binary_stop_i33_i_n_1 -attr @rip O[5] -attr @name binary_stop_i33_i_n_1 -pin t2b_inst|binary_stop_i32_i I0[5] -pin t2b_inst|binary_stop_i33_i O[5]
load net t2b_inst|binary_stop_i23[3] -attr @rip O[3] -attr @name binary_stop_i23[3] -pin t2b_inst|binary_stop_i22_i I1[3] -pin t2b_inst|binary_stop_i23_i__0 O[3]
load net coarse_cnt_w[6] -attr @rip coarse_cnt_o[6] -pin coarse_cnt_inst coarse_cnt_o[6] -pin error_inst coarse_cnt_i[0] -pin merge_inst coarse_cnt_i[6]
load net t2b_inst|binary_start_i31[2] -attr @rip O[2] -attr @name binary_start_i31[2] -pin t2b_inst|binary_start_i30_i I0[2] -pin t2b_inst|binary_start_i31_i O[2]
load net t2b_inst|binary_stop_i33_i_n_2 -attr @rip O[4] -attr @name binary_stop_i33_i_n_2 -pin t2b_inst|binary_stop_i32_i I0[4] -pin t2b_inst|binary_stop_i33_i O[4]
load net t2b_inst|binary_stop_i35[5] -attr @rip O[5] -attr @name binary_stop_i35[5] -pin t2b_inst|binary_stop_i34_i I1[5] -pin t2b_inst|binary_stop_i35_i__0 O[5]
load net t2b_inst|binary_start_i45[6] -attr @rip O[6] -attr @name binary_start_i45[6] -pin t2b_inst|binary_start_i44_i I0[6] -pin t2b_inst|binary_start_i45_i O[6]
load net t2b_inst|binary_start_i16[3] -attr @rip O[3] -attr @name binary_start_i16[3] -pin t2b_inst|binary_start_i15_i I0[3] -pin t2b_inst|binary_start_i16_i O[3]
load net t2b_inst|binary_start_i4[3] -attr @rip O[3] -attr @name binary_start_i4[3] -pin t2b_inst|binary_start_i3_i I0[3] -pin t2b_inst|binary_start_i4_i O[3]
load net t2b_inst|binary_stop_i33_i_n_3 -attr @rip O[3] -attr @name binary_stop_i33_i_n_3 -pin t2b_inst|binary_stop_i32_i I0[3] -pin t2b_inst|binary_stop_i33_i O[3]
load net t2b_inst|binary_start_i54[2] -attr @rip O[2] -attr @name binary_start_i54[2] -pin t2b_inst|binary_start_i53_i I0[2] -pin t2b_inst|binary_start_i54_i O[2]
load net t2b_inst|binary_start_i39[2] -attr @rip O[2] -attr @name binary_start_i39[2] -pin t2b_inst|binary_start_i38_i I0[2] -pin t2b_inst|binary_start_i39_i O[2]
load net t2b_inst|binary_stop_i33_i_n_4 -attr @rip O[2] -attr @name binary_stop_i33_i_n_4 -pin t2b_inst|binary_stop_i32_i I0[2] -pin t2b_inst|binary_stop_i33_i O[2]
load net t2b_inst|binary_stop_i20[3] -attr @rip O[3] -attr @name binary_stop_i20[3] -pin t2b_inst|binary_stop_i19_i I1[3] -pin t2b_inst|binary_stop_i20_i__0 O[3]
load net t2b_inst|binary_start_i61[0] -attr @rip O[0] -attr @name binary_start_i61[0] -pin t2b_inst|binary_start_i60_i I0[0] -pin t2b_inst|binary_start_i61_i O[0]
load net t2b_inst|binary_stop_i27[4] -attr @rip O[4] -attr @name binary_stop_i27[4] -pin t2b_inst|binary_stop_i26_i I1[4] -pin t2b_inst|binary_stop_i27_i__0 O[4]
load net t2b_inst|binary_stop_i33_i_n_5 -attr @rip O[1] -attr @name binary_stop_i33_i_n_5 -pin t2b_inst|binary_stop_i32_i I0[1] -pin t2b_inst|binary_stop_i33_i O[1]
load net t2b_inst|binary_stop_i33_i_n_6 -attr @rip O[0] -attr @name binary_stop_i33_i_n_6 -pin t2b_inst|binary_stop_i32_i I0[0] -pin t2b_inst|binary_stop_i33_i O[0]
load net t2b_inst|binary_stop_i56[0] -attr @rip O[0] -attr @name binary_stop_i56[0] -pin t2b_inst|binary_stop_i55_i I1[0] -pin t2b_inst|binary_stop_i56_i__0 O[0]
load net t2b_inst|binary_start_i28[5] -attr @rip O[5] -attr @name binary_start_i28[5] -pin t2b_inst|binary_start_i27_i I0[5] -pin t2b_inst|binary_start_i28_i O[5]
load net t2b_inst|binary_stop_i19[3] -attr @rip O[3] -attr @name binary_stop_i19[3] -pin t2b_inst|binary_stop_i18_i I1[3] -pin t2b_inst|binary_stop_i19_i__0 O[3]
load net t2b_inst|binary_stop_i14[3] -attr @rip O[3] -attr @name binary_stop_i14[3] -pin t2b_inst|binary_stop_i13_i I1[3] -pin t2b_inst|binary_stop_i14_i__0 O[3]
load net t2b_inst|binary_start_i48[4] -attr @rip O[4] -attr @name binary_start_i48[4] -pin t2b_inst|binary_start_i47_i I0[4] -pin t2b_inst|binary_start_i48_i O[4]
load net tdl_thermometer_stop_val_w[6] -attr @rip thermometer_stop_val_o[6] -pin t2b_inst thermometer_stop_i[6] -pin tdl_inst thermometer_stop_val_o[6]
load net sync_signals_w[1] -attr @rip thermometer_sample_stage_o[1] -pin synchronizer_inst sync_signals_i[1] -pin tdl_inst thermometer_sample_stage_o[1]
load net t2b_inst|binary_stop_i25[1] -attr @rip O[1] -attr @name binary_stop_i25[1] -pin t2b_inst|binary_stop_i24_i I1[1] -pin t2b_inst|binary_stop_i25_i__0 O[1]
load net t2b_inst|binary_start_i1[1] -attr @rip O[1] -attr @name binary_start_i1[1] -pin t2b_inst|binary_start_i0_i I0[1] -pin t2b_inst|binary_start_i1_i O[1]
load net tdl_thermometer_stop_val_w[47] -attr @rip thermometer_stop_val_o[47] -pin t2b_inst thermometer_stop_i[47] -pin tdl_inst thermometer_stop_val_o[47]
load net t2b_inst|binary_stop_i18[5] -attr @rip O[5] -attr @name binary_stop_i18[5] -pin t2b_inst|binary_stop_i17_i I1[5] -pin t2b_inst|binary_stop_i18_i__0 O[5]
load net t2b_inst|binary_start_i50[2] -attr @rip O[2] -attr @name binary_start_i50[2] -pin t2b_inst|binary_start_i49_i I0[2] -pin t2b_inst|binary_start_i50_i O[2]
load net t2b_inst|binary_stop_i26_i_n_0 -attr @rip O[6] -attr @name binary_stop_i26_i_n_0 -pin t2b_inst|binary_stop_i25_i I0[6] -pin t2b_inst|binary_stop_i26_i O[6]
load net t2b_inst|binary_stop_i26_i_n_1 -attr @rip O[5] -attr @name binary_stop_i26_i_n_1 -pin t2b_inst|binary_stop_i25_i I0[5] -pin t2b_inst|binary_stop_i26_i O[5]
load net t2b_inst|binary_stop_i46[2] -attr @rip O[2] -attr @name binary_stop_i46[2] -pin t2b_inst|binary_stop_i45_i I1[2] -pin t2b_inst|binary_stop_i46_i__0 O[2]
load net t2b_inst|binary_start_i26[1] -attr @rip O[1] -attr @name binary_start_i26[1] -pin t2b_inst|binary_start_i25_i I0[1] -pin t2b_inst|binary_start_i26_i O[1]
load net t2b_inst|binary_stop_i26_i_n_2 -attr @rip O[4] -attr @name binary_stop_i26_i_n_2 -pin t2b_inst|binary_stop_i25_i I0[4] -pin t2b_inst|binary_stop_i26_i O[4]
load net t2b_inst|binary_stop_i35[2] -attr @rip O[2] -attr @name binary_stop_i35[2] -pin t2b_inst|binary_stop_i34_i I1[2] -pin t2b_inst|binary_stop_i35_i__0 O[2]
load net t2b_inst|binary_stop_i24[6] -attr @rip O[6] -attr @name binary_stop_i24[6] -pin t2b_inst|binary_stop_i23_i I1[6] -pin t2b_inst|binary_stop_i24_i__0 O[6]
load net t2b_inst|binary_stop_i26_i_n_3 -attr @rip O[3] -attr @name binary_stop_i26_i_n_3 -pin t2b_inst|binary_stop_i25_i I0[3] -pin t2b_inst|binary_stop_i26_i O[3]
load net t2b_inst|binary_start_i31[1] -attr @rip O[1] -attr @name binary_start_i31[1] -pin t2b_inst|binary_start_i30_i I0[1] -pin t2b_inst|binary_start_i31_i O[1]
load net t2b_inst|binary_stop_i23[2] -attr @rip O[2] -attr @name binary_stop_i23[2] -pin t2b_inst|binary_stop_i22_i I1[2] -pin t2b_inst|binary_stop_i23_i__0 O[2]
load net t2b_inst|binary_stop_i26_i_n_4 -attr @rip O[2] -attr @name binary_stop_i26_i_n_4 -pin t2b_inst|binary_stop_i25_i I0[2] -pin t2b_inst|binary_stop_i26_i O[2]
load net t2b_inst|binary_start_i45[5] -attr @rip O[5] -attr @name binary_start_i45[5] -pin t2b_inst|binary_start_i44_i I0[5] -pin t2b_inst|binary_start_i45_i O[5]
load net t2b_inst|binary_stop_i26_i_n_5 -attr @rip O[1] -attr @name binary_stop_i26_i_n_5 -pin t2b_inst|binary_stop_i25_i I0[1] -pin t2b_inst|binary_stop_i26_i O[1]
load net coarse_cnt_w[7] -attr @rip coarse_cnt_o[7] -pin coarse_cnt_inst coarse_cnt_o[7] -pin error_inst coarse_cnt_i[1] -pin merge_inst coarse_cnt_i[7]
load net t2b_inst|binary_stop_i26_i_n_6 -attr @rip O[0] -attr @name binary_stop_i26_i_n_6 -pin t2b_inst|binary_stop_i25_i I0[0] -pin t2b_inst|binary_stop_i26_i O[0]
load net t2b_inst|binary_start_i16[4] -attr @rip O[4] -attr @name binary_start_i16[4] -pin t2b_inst|binary_start_i15_i I0[4] -pin t2b_inst|binary_start_i16_i O[4]
load net t2b_inst|binary_stop_i20[2] -attr @rip O[2] -attr @name binary_stop_i20[2] -pin t2b_inst|binary_stop_i19_i I1[2] -pin t2b_inst|binary_stop_i20_i__0 O[2]
load net t2b_inst|binary_start_i4[4] -attr @rip O[4] -attr @name binary_start_i4[4] -pin t2b_inst|binary_start_i3_i I0[4] -pin t2b_inst|binary_start_i4_i O[4]
load net t2b_inst|binary_stop_i27[3] -attr @rip O[3] -attr @name binary_stop_i27[3] -pin t2b_inst|binary_stop_i26_i I1[3] -pin t2b_inst|binary_stop_i27_i__0 O[3]
load net t2b_inst|binary_start_i54[3] -attr @rip O[3] -attr @name binary_start_i54[3] -pin t2b_inst|binary_start_i53_i I0[3] -pin t2b_inst|binary_start_i54_i O[3]
load net t2b_inst|binary_start_i39[3] -attr @rip O[3] -attr @name binary_start_i39[3] -pin t2b_inst|binary_start_i38_i I0[3] -pin t2b_inst|binary_start_i39_i O[3]
load net t2b_inst|binary_start_i28[4] -attr @rip O[4] -attr @name binary_start_i28[4] -pin t2b_inst|binary_start_i27_i I0[4] -pin t2b_inst|binary_start_i28_i O[4]
load net t2b_inst|binary_start_i61[1] -attr @rip O[1] -attr @name binary_start_i61[1] -pin t2b_inst|binary_start_i60_i I0[1] -pin t2b_inst|binary_start_i61_i O[1]
load net t2b_inst|binary_stop_i8[6] -attr @rip O[6] -attr @name binary_stop_i8[6] -pin t2b_inst|binary_stop_i7_i I1[6] -pin t2b_inst|binary_stop_i8_i__0 O[6]
load net sync_signals_w[0] -attr @rip thermometer_sample_stage_o[0] -pin synchronizer_inst sync_signals_i[0] -pin tdl_inst thermometer_sample_stage_o[0]
load net t2b_inst|binary_stop_i19[4] -attr @rip O[4] -attr @name binary_stop_i19[4] -pin t2b_inst|binary_stop_i18_i I1[4] -pin t2b_inst|binary_stop_i19_i__0 O[4]
load net tdl_thermometer_stop_val_w[7] -attr @rip thermometer_stop_val_o[7] -pin t2b_inst thermometer_stop_i[7] -pin tdl_inst thermometer_stop_val_o[7]
load net t2b_inst|binary_stop_i25[0] -attr @rip O[0] -attr @name binary_stop_i25[0] -pin t2b_inst|binary_stop_i24_i I1[0] -pin t2b_inst|binary_stop_i25_i__0 O[0]
load net t2b_inst|binary_stop_i14[4] -attr @rip O[4] -attr @name binary_stop_i14[4] -pin t2b_inst|binary_stop_i13_i I1[4] -pin t2b_inst|binary_stop_i14_i__0 O[4]
load net t2b_inst|binary_start_i58[0] -attr @rip O[0] -attr @name binary_start_i58[0] -pin t2b_inst|binary_start_i57_i I0[0] -pin t2b_inst|binary_start_i58_i O[0]
load net t2b_inst|thermometer_stop_i[11] -attr @rip thermometer_stop_i[11] -attr @name thermometer_stop_i[11] -hierPin t2b_inst thermometer_stop_i[11] -pin t2b_inst|binary_stop_i59_i__0 I0
load net t2b_inst|binary_start_i8[6] -attr @rip O[6] -attr @name binary_start_i8[6] -pin t2b_inst|binary_start_i7_i I0[6] -pin t2b_inst|binary_start_i8_i O[6]
load net t2b_inst|binary_start_i1[2] -attr @rip O[2] -attr @name binary_start_i1[2] -pin t2b_inst|binary_start_i0_i I0[2] -pin t2b_inst|binary_start_i1_i O[2]
load net t2b_inst|binary_start_i7[0] -attr @rip O[0] -attr @name binary_start_i7[0] -pin t2b_inst|binary_start_i6_i I0[0] -pin t2b_inst|binary_start_i7_i O[0]
load net t2b_inst|binary_stop_i56[5] -attr @rip O[5] -attr @name binary_stop_i56[5] -pin t2b_inst|binary_stop_i55_i I1[5] -pin t2b_inst|binary_stop_i56_i__0 O[5]
load net t2b_inst|binary_start_i50[1] -attr @rip O[1] -attr @name binary_start_i50[1] -pin t2b_inst|binary_start_i49_i I0[1] -pin t2b_inst|binary_start_i50_i O[1]
load net tdl_thermometer_stop_val_w[46] -attr @rip thermometer_stop_val_o[46] -pin t2b_inst thermometer_stop_i[46] -pin tdl_inst thermometer_stop_val_o[46]
load net t2b_inst|binary_stop_i46[1] -attr @rip O[1] -attr @name binary_stop_i46[1] -pin t2b_inst|binary_stop_i45_i I1[1] -pin t2b_inst|binary_stop_i46_i__0 O[1]
load net t2b_inst|binary_stop_i18[6] -attr @rip O[6] -attr @name binary_stop_i18[6] -pin t2b_inst|binary_stop_i17_i I1[6] -pin t2b_inst|binary_stop_i18_i__0 O[6]
load net t2b_inst|binary_start_i31[0] -attr @rip O[0] -attr @name binary_start_i31[0] -pin t2b_inst|binary_start_i30_i I0[0] -pin t2b_inst|binary_start_i31_i O[0]
load net t2b_inst|binary_start_i40[0] -attr @rip O[0] -attr @name binary_start_i40[0] -pin t2b_inst|binary_start_i39_i I0[0] -pin t2b_inst|binary_start_i40_i O[0]
load net t2b_inst|binary_stop_i23[1] -attr @rip O[1] -attr @name binary_stop_i23[1] -pin t2b_inst|binary_stop_i22_i I1[1] -pin t2b_inst|binary_stop_i23_i__0 O[1]
load net t2b_inst|binary_stop_i35[3] -attr @rip O[3] -attr @name binary_stop_i35[3] -pin t2b_inst|binary_stop_i34_i I1[3] -pin t2b_inst|binary_stop_i35_i__0 O[3]
load net t2b_inst|binary_stop_i43[4] -attr @rip O[4] -attr @name binary_stop_i43[4] -pin t2b_inst|binary_stop_i42_i I1[4] -pin t2b_inst|binary_stop_i43_i__0 O[4]
load net t2b_inst|binary_stop_i690_in[4] -attr @rip O[4] -attr @name binary_stop_i690_in[4] -pin t2b_inst|binary_stop_i68_i I0[4] -pin t2b_inst|binary_stop_i69_i O[4]
load net t2b_inst|binary_stop_i16_i_n_0 -attr @rip O[6] -attr @name binary_stop_i16_i_n_0 -pin t2b_inst|binary_stop_i15_i I0[6] -pin t2b_inst|binary_stop_i16_i O[6]
load net t2b_inst|binary_start_i29[4] -attr @rip O[4] -attr @name binary_start_i29[4] -pin t2b_inst|binary_start_i28_i I0[4] -pin t2b_inst|binary_start_i29_i O[4]
load net t2b_inst|binary_stop_i16_i_n_1 -attr @rip O[5] -attr @name binary_stop_i16_i_n_1 -pin t2b_inst|binary_stop_i15_i I0[5] -pin t2b_inst|binary_stop_i16_i O[5]
load net t2b_inst|binary_stop_i27[2] -attr @rip O[2] -attr @name binary_stop_i27[2] -pin t2b_inst|binary_stop_i26_i I1[2] -pin t2b_inst|binary_stop_i27_i__0 O[2]
load net t2b_inst|binary_stop_i16_i_n_2 -attr @rip O[4] -attr @name binary_stop_i16_i_n_2 -pin t2b_inst|binary_stop_i15_i I0[4] -pin t2b_inst|binary_stop_i16_i O[4]
load net coarse_cnt_w[8] -attr @rip coarse_cnt_o[8] -pin coarse_cnt_inst coarse_cnt_o[8] -pin error_inst coarse_cnt_i[2] -pin merge_inst coarse_cnt_i[8]
load net t2b_inst|binary_stop_i16_i_n_3 -attr @rip O[3] -attr @name binary_stop_i16_i_n_3 -pin t2b_inst|binary_stop_i15_i I0[3] -pin t2b_inst|binary_stop_i16_i O[3]
load net t2b_inst|binary_start_i16[5] -attr @rip O[5] -attr @name binary_start_i16[5] -pin t2b_inst|binary_start_i15_i I0[5] -pin t2b_inst|binary_start_i16_i O[5]
load net t2b_inst|binary_start_i28[3] -attr @rip O[3] -attr @name binary_start_i28[3] -pin t2b_inst|binary_start_i27_i I0[3] -pin t2b_inst|binary_start_i28_i O[3]
load net t2b_inst|binary_start_i4[5] -attr @rip O[5] -attr @name binary_start_i4[5] -pin t2b_inst|binary_start_i3_i I0[5] -pin t2b_inst|binary_start_i4_i O[5]
load net tdl_thermometer_stop_val_w[17] -attr @rip thermometer_stop_val_o[17] -pin t2b_inst thermometer_stop_i[17] -pin tdl_inst thermometer_stop_val_o[17]
load net t2b_inst|binary_start_i54[4] -attr @rip O[4] -attr @name binary_start_i54[4] -pin t2b_inst|binary_start_i53_i I0[4] -pin t2b_inst|binary_start_i54_i O[4]
load net t2b_inst|binary_stop_i14[1] -attr @rip O[1] -attr @name binary_stop_i14[1] -pin t2b_inst|binary_stop_i13_i I1[1] -pin t2b_inst|binary_stop_i14_i__0 O[1]
load net t2b_inst|binary_stop_i16_i_n_4 -attr @rip O[2] -attr @name binary_stop_i16_i_n_4 -pin t2b_inst|binary_stop_i15_i I0[2] -pin t2b_inst|binary_stop_i16_i O[2]
load net t2b_inst|binary_stop_i16_i_n_5 -attr @rip O[1] -attr @name binary_stop_i16_i_n_5 -pin t2b_inst|binary_stop_i15_i I0[1] -pin t2b_inst|binary_stop_i16_i O[1]
load net t2b_inst|binary_start_i61[2] -attr @rip O[2] -attr @name binary_start_i61[2] -pin t2b_inst|binary_start_i60_i I0[2] -pin t2b_inst|binary_start_i61_i O[2]
load net t2b_inst|binary_stop_i16_i_n_6 -attr @rip O[0] -attr @name binary_stop_i16_i_n_6 -pin t2b_inst|binary_stop_i15_i I0[0] -pin t2b_inst|binary_stop_i16_i O[0]
load net t2b_inst|thermometer_stop_i[41] -attr @rip thermometer_stop_i[41] -attr @name thermometer_stop_i[41] -hierPin t2b_inst thermometer_stop_i[41] -pin t2b_inst|binary_stop_i29_i__0 I0
load net t2b_inst|binary_stop_i19[5] -attr @rip O[5] -attr @name binary_stop_i19[5] -pin t2b_inst|binary_stop_i18_i I1[5] -pin t2b_inst|binary_stop_i19_i__0 O[5]
load net t2b_inst|thermometer_stop_i[10] -attr @rip thermometer_stop_i[10] -attr @name thermometer_stop_i[10] -hierPin t2b_inst thermometer_stop_i[10] -pin t2b_inst|binary_stop_i60_i__0 I0
load net t2b_inst|binary_start_i8[5] -attr @rip O[5] -attr @name binary_start_i8[5] -pin t2b_inst|binary_start_i7_i I0[5] -pin t2b_inst|binary_start_i8_i O[5]
load net tdl_thermometer_stop_val_w[8] -attr @rip thermometer_stop_val_o[8] -pin t2b_inst thermometer_stop_i[8] -pin tdl_inst thermometer_stop_val_o[8]
load net t2b_inst|binary_start_i37[6] -attr @rip O[6] -attr @name binary_start_i37[6] -pin t2b_inst|binary_start_i36_i I0[6] -pin t2b_inst|binary_start_i37_i O[6]
load net clk_i -port clk_i -pin clk_i_IBUF_inst I
netloc clk_i 1 0 1 NJ
load net tdl_thermometer_stop_val_w[45] -attr @rip thermometer_stop_val_o[45] -pin t2b_inst thermometer_stop_i[45] -pin tdl_inst thermometer_stop_val_o[45]
load net t2b_inst|binary_stop_i18[3] -attr @rip O[3] -attr @name binary_stop_i18[3] -pin t2b_inst|binary_stop_i17_i I1[3] -pin t2b_inst|binary_stop_i18_i__0 O[3]
load net tdl_thermometer_start_val_w[52] -attr @rip thermometer_start_val_o[52] -pin t2b_inst thermometer_start_i[52] -pin tdl_inst thermometer_start_val_o[52]
load net t2b_inst|binary_stop_i46[0] -attr @rip O[0] -attr @name binary_stop_i46[0] -pin t2b_inst|binary_stop_i45_i I1[0] -pin t2b_inst|binary_stop_i46_i__0 O[0]
load net t2b_inst|binary_stop_i56[6] -attr @rip O[6] -attr @name binary_stop_i56[6] -pin t2b_inst|binary_stop_i55_i I1[6] -pin t2b_inst|binary_stop_i56_i__0 O[6]
load net t2b_inst|binary_stop_i23[0] -attr @rip O[0] -attr @name binary_stop_i23[0] -pin t2b_inst|binary_stop_i22_i I1[0] -pin t2b_inst|binary_stop_i23_i__0 O[0]
load net t2b_inst|binary_stop_i43[3] -attr @rip O[3] -attr @name binary_stop_i43[3] -pin t2b_inst|binary_stop_i42_i I1[3] -pin t2b_inst|binary_stop_i43_i__0 O[3]
load net t2b_inst|binary_stop_i690_in[3] -attr @rip O[3] -attr @name binary_stop_i690_in[3] -pin t2b_inst|binary_stop_i68_i I0[3] -pin t2b_inst|binary_stop_i69_i O[3]
load net t2b_inst|binary_stop_i39[6] -attr @rip O[6] -attr @name binary_stop_i39[6] -pin t2b_inst|binary_stop_i38_i I1[6] -pin t2b_inst|binary_stop_i39_i__0 O[6]
load net t2b_inst|binary_stop_i59[2] -attr @rip O[2] -attr @name binary_stop_i59[2] -pin t2b_inst|binary_stop_i58_i I1[2] -pin t2b_inst|binary_stop_i59_i__0 O[2]
load net t2b_inst|binary_start_i40[1] -attr @rip O[1] -attr @name binary_start_i40[1] -pin t2b_inst|binary_start_i39_i I0[1] -pin t2b_inst|binary_start_i40_i O[1]
load net t2b_inst|binary_start_i11[5] -attr @rip O[5] -attr @name binary_start_i11[5] -pin t2b_inst|binary_start_i10_i I0[5] -pin t2b_inst|binary_start_i11_i O[5]
load net t2b_inst|thermometer_stop_i[29] -attr @rip thermometer_stop_i[29] -attr @name thermometer_stop_i[29] -hierPin t2b_inst thermometer_stop_i[29] -pin t2b_inst|binary_stop_i41_i__0 I0
load net t2b_inst|binary_start_i29[3] -attr @rip O[3] -attr @name binary_start_i29[3] -pin t2b_inst|binary_start_i28_i I0[3] -pin t2b_inst|binary_start_i29_i O[3]
load net t2b_inst|binary_stop_i27[1] -attr @rip O[1] -attr @name binary_stop_i27[1] -pin t2b_inst|binary_stop_i26_i I1[1] -pin t2b_inst|binary_stop_i27_i__0 O[1]
load net tdl_thermometer_stop_val_w[1] -attr @rip thermometer_stop_val_o[1] -pin t2b_inst thermometer_stop_i[1] -pin tdl_inst thermometer_stop_val_o[1]
load net t2b_inst|binary_start_i28[2] -attr @rip O[2] -attr @name binary_start_i28[2] -pin t2b_inst|binary_start_i27_i I0[2] -pin t2b_inst|binary_start_i28_i O[2]
load net tdl_thermometer_stop_val_w[16] -attr @rip thermometer_stop_val_o[16] -pin t2b_inst thermometer_stop_i[16] -pin tdl_inst thermometer_stop_val_o[16]
load net coarse_cnt_w[9] -attr @rip coarse_cnt_o[9] -pin coarse_cnt_inst coarse_cnt_o[9] -pin error_inst coarse_cnt_i[3] -pin merge_inst coarse_cnt_i[9]
load net t2b_inst|binary_start_i16[6] -attr @rip O[6] -attr @name binary_start_i16[6] -pin t2b_inst|binary_start_i15_i I0[6] -pin t2b_inst|binary_start_i16_i O[6]
load net t2b_inst|binary_start_i36[0] -attr @rip O[0] -attr @name binary_start_i36[0] -pin t2b_inst|binary_start_i35_i I0[0] -pin t2b_inst|binary_start_i36_i O[0]
load net t2b_inst|binary_stop_i14[2] -attr @rip O[2] -attr @name binary_stop_i14[2] -pin t2b_inst|binary_stop_i13_i I1[2] -pin t2b_inst|binary_stop_i14_i__0 O[2]
load net t2b_inst|binary_start_i8[4] -attr @rip O[4] -attr @name binary_start_i8[4] -pin t2b_inst|binary_start_i7_i I0[4] -pin t2b_inst|binary_start_i8_i O[4]
load net t2b_inst|binary_start_i1[0] -attr @rip O[0] -attr @name binary_start_i1[0] -pin t2b_inst|binary_start_i0_i I0[0] -pin t2b_inst|binary_start_i1_i O[0]
load net t2b_inst|binary_stop_i56[3] -attr @rip O[3] -attr @name binary_stop_i56[3] -pin t2b_inst|binary_stop_i55_i I1[3] -pin t2b_inst|binary_stop_i56_i__0 O[3]
load net t2b_inst|thermometer_stop_i[42] -attr @rip thermometer_stop_i[42] -attr @name thermometer_stop_i[42] -hierPin t2b_inst thermometer_stop_i[42] -pin t2b_inst|binary_stop_i28_i__0 I0
load net t2b_inst|binary_stop_i19[6] -attr @rip O[6] -attr @name binary_stop_i19[6] -pin t2b_inst|binary_stop_i18_i I1[6] -pin t2b_inst|binary_stop_i19_i__0 O[6]
load net t2b_inst|binary_start_i18[1] -attr @rip O[1] -attr @name binary_start_i18[1] -pin t2b_inst|binary_start_i17_i I0[1] -pin t2b_inst|binary_start_i18_i O[1]
load net t2b_inst|binary_stop_i6[6] -attr @rip O[6] -attr @name binary_stop_i6[6] -pin t2b_inst|binary_stop_i5_i I1[6] -pin t2b_inst|binary_stop_i6_i__0 O[6]
load net t2b_inst|binary_stop_i5[2] -attr @rip O[2] -attr @name binary_stop_i5[2] -pin t2b_inst|binary_stop_i4_i I1[2] -pin t2b_inst|binary_stop_i5_i__0 O[2]
load net t2b_inst|binary_start_i25[6] -attr @rip O[6] -attr @name binary_start_i25[6] -pin t2b_inst|binary_start_i24_i I0[6] -pin t2b_inst|binary_start_i25_i O[6]
load net t2b_inst|binary_stop_i18[4] -attr @rip O[4] -attr @name binary_stop_i18[4] -pin t2b_inst|binary_stop_i17_i I1[4] -pin t2b_inst|binary_stop_i18_i__0 O[4]
load net tdl_thermometer_start_val_w[53] -attr @rip thermometer_start_val_o[53] -pin t2b_inst thermometer_start_i[53] -pin tdl_inst thermometer_start_val_o[53]
load net coarse_cnt_w[2] -attr @rip coarse_cnt_o[2] -pin coarse_cnt_inst coarse_cnt_o[2] -pin merge_inst coarse_cnt_i[2]
load net t2b_inst|binary_stop_i28_i_n_0 -attr @rip O[6] -attr @name binary_stop_i28_i_n_0 -pin t2b_inst|binary_stop_i27_i I0[6] -pin t2b_inst|binary_stop_i28_i O[6]
load net t2b_inst|binary_stop_i55[4] -attr @rip O[4] -attr @name binary_stop_i55[4] -pin t2b_inst|binary_stop_i54_i I1[4] -pin t2b_inst|binary_stop_i55_i__0 O[4]
load net t2b_inst|binary_stop_i67[0] -attr @rip O[0] -attr @name binary_stop_i67[0] -pin t2b_inst|binary_stop_i66_i I1[0] -pin t2b_inst|binary_stop_i67_i__0 O[0]
load net t2b_inst|binary_stop_i690_in[2] -attr @rip O[2] -attr @name binary_stop_i690_in[2] -pin t2b_inst|binary_stop_i68_i I0[2] -pin t2b_inst|binary_stop_i69_i O[2]
load net t2b_inst|binary_stop_i28_i_n_1 -attr @rip O[5] -attr @name binary_stop_i28_i_n_1 -pin t2b_inst|binary_stop_i27_i I0[5] -pin t2b_inst|binary_stop_i28_i O[5]
load net t2b_inst|binary_start_i11[4] -attr @rip O[4] -attr @name binary_start_i11[4] -pin t2b_inst|binary_start_i10_i I0[4] -pin t2b_inst|binary_start_i11_i O[4]
load net t2b_inst|binary_stop_i28_i_n_2 -attr @rip O[4] -attr @name binary_stop_i28_i_n_2 -pin t2b_inst|binary_stop_i27_i I0[4] -pin t2b_inst|binary_stop_i28_i O[4]
load net t2b_inst|binary_start_i[6] -attr @rip O[6] -attr @name binary_start_i[6] -hierPin t2b_inst binary_start_i[6] -pin t2b_inst|binary_start_i0_i O[6]
load net t2b_inst|binary_stop_i27[0] -attr @rip O[0] -attr @name binary_stop_i27[0] -pin t2b_inst|binary_stop_i26_i I1[0] -pin t2b_inst|binary_stop_i27_i__0 O[0]
load net t2b_inst|binary_stop_i28_i_n_3 -attr @rip O[3] -attr @name binary_stop_i28_i_n_3 -pin t2b_inst|binary_stop_i27_i I0[3] -pin t2b_inst|binary_stop_i28_i O[3]
load net t2b_inst|binary_stop_i59[3] -attr @rip O[3] -attr @name binary_stop_i59[3] -pin t2b_inst|binary_stop_i58_i I1[3] -pin t2b_inst|binary_stop_i59_i__0 O[3]
load net t2b_inst|binary_stop_i28_i_n_4 -attr @rip O[2] -attr @name binary_stop_i28_i_n_4 -pin t2b_inst|binary_stop_i27_i I0[2] -pin t2b_inst|binary_stop_i28_i O[2]
load net t2b_inst|binary_stop_i43[6] -attr @rip O[6] -attr @name binary_stop_i43[6] -pin t2b_inst|binary_stop_i42_i I1[6] -pin t2b_inst|binary_stop_i43_i__0 O[6]
load net t2b_inst|binary_start_i28[1] -attr @rip O[1] -attr @name binary_start_i28[1] -pin t2b_inst|binary_start_i27_i I0[1] -pin t2b_inst|binary_start_i28_i O[1]
load net t2b_inst|binary_stop_i28_i_n_5 -attr @rip O[1] -attr @name binary_stop_i28_i_n_5 -pin t2b_inst|binary_stop_i27_i I0[1] -pin t2b_inst|binary_stop_i28_i O[1]
load net tdl_thermometer_stop_val_w[2] -attr @rip thermometer_stop_val_o[2] -pin t2b_inst thermometer_stop_i[2] -pin tdl_inst thermometer_stop_val_o[2]
load net tdl_thermometer_stop_val_w[15] -attr @rip thermometer_stop_val_o[15] -pin t2b_inst thermometer_stop_i[15] -pin tdl_inst thermometer_stop_val_o[15]
load net t2b_inst|binary_stop_i28_i_n_6 -attr @rip O[0] -attr @name binary_stop_i28_i_n_6 -pin t2b_inst|binary_stop_i27_i I0[0] -pin t2b_inst|binary_stop_i28_i O[0]
load net t2b_inst|binary_start_i29[6] -attr @rip O[6] -attr @name binary_start_i29[6] -pin t2b_inst|binary_start_i28_i I0[6] -pin t2b_inst|binary_start_i29_i O[6]
load net t2b_inst|binary_stop_i50_i_n_0 -attr @rip O[6] -attr @name binary_stop_i50_i_n_0 -pin t2b_inst|binary_stop_i49_i I0[6] -pin t2b_inst|binary_stop_i50_i O[6]
load net t2b_inst|binary_stop_i50_i_n_1 -attr @rip O[5] -attr @name binary_stop_i50_i_n_1 -pin t2b_inst|binary_stop_i49_i I0[5] -pin t2b_inst|binary_stop_i50_i O[5]
load net t2b_inst|binary_stop_i50_i_n_2 -attr @rip O[4] -attr @name binary_stop_i50_i_n_2 -pin t2b_inst|binary_stop_i49_i I0[4] -pin t2b_inst|binary_stop_i50_i O[4]
load net t2b_inst|thermometer_start_i[62] -attr @rip thermometer_start_i[62] -attr @name thermometer_start_i[62] -hierPin t2b_inst thermometer_start_i[62] -pin t2b_inst|binary_start_i7_i I1
load net t2b_inst|binary_start_i8[3] -attr @rip O[3] -attr @name binary_start_i8[3] -pin t2b_inst|binary_start_i7_i I0[3] -pin t2b_inst|binary_start_i8_i O[3]
load net t2b_inst|binary_start_i37[4] -attr @rip O[4] -attr @name binary_start_i37[4] -pin t2b_inst|binary_start_i36_i I0[4] -pin t2b_inst|binary_start_i37_i O[4]
load net t2b_inst|binary_start_i32[0] -attr @rip O[0] -attr @name binary_start_i32[0] -pin t2b_inst|binary_start_i31_i I0[0] -pin t2b_inst|binary_start_i32_i O[0]
load net t2b_inst|binary_stop_i50_i_n_3 -attr @rip O[3] -attr @name binary_stop_i50_i_n_3 -pin t2b_inst|binary_stop_i49_i I0[3] -pin t2b_inst|binary_stop_i50_i O[3]
load net t2b_inst|binary_stop_i62_i_n_0 -attr @rip O[6] -attr @name binary_stop_i62_i_n_0 -pin t2b_inst|binary_stop_i61_i I0[6] -pin t2b_inst|binary_stop_i62_i O[6]
load net tdl_thermometer_start_val_w[50] -attr @rip thermometer_start_val_o[50] -pin t2b_inst thermometer_start_i[50] -pin tdl_inst thermometer_start_val_o[50]
load net t2b_inst|binary_stop_i18[1] -attr @rip O[1] -attr @name binary_stop_i18[1] -pin t2b_inst|binary_stop_i17_i I1[1] -pin t2b_inst|binary_stop_i18_i__0 O[1]
load net t2b_inst|binary_stop_i50_i_n_4 -attr @rip O[2] -attr @name binary_stop_i50_i_n_4 -pin t2b_inst|binary_stop_i49_i I0[2] -pin t2b_inst|binary_stop_i50_i O[2]
load net t2b_inst|binary_stop_i62_i_n_1 -attr @rip O[5] -attr @name binary_stop_i62_i_n_1 -pin t2b_inst|binary_stop_i61_i I0[5] -pin t2b_inst|binary_stop_i62_i O[5]
load net t2b_inst|binary_stop_i6[5] -attr @rip O[5] -attr @name binary_stop_i6[5] -pin t2b_inst|binary_stop_i5_i I1[5] -pin t2b_inst|binary_stop_i6_i__0 O[5]
load net t2b_inst|binary_stop_i50_i_n_5 -attr @rip O[1] -attr @name binary_stop_i50_i_n_5 -pin t2b_inst|binary_stop_i49_i I0[1] -pin t2b_inst|binary_stop_i50_i O[1]
load net t2b_inst|binary_stop_i56[4] -attr @rip O[4] -attr @name binary_stop_i56[4] -pin t2b_inst|binary_stop_i55_i I1[4] -pin t2b_inst|binary_stop_i56_i__0 O[4]
load net t2b_inst|binary_stop_i5[1] -attr @rip O[1] -attr @name binary_stop_i5[1] -pin t2b_inst|binary_stop_i4_i I1[1] -pin t2b_inst|binary_stop_i5_i__0 O[1]
load net t2b_inst|binary_stop_i62_i_n_2 -attr @rip O[4] -attr @name binary_stop_i62_i_n_2 -pin t2b_inst|binary_stop_i61_i I0[4] -pin t2b_inst|binary_stop_i62_i O[4]
load net t2b_inst|binary_start_i18[2] -attr @rip O[2] -attr @name binary_start_i18[2] -pin t2b_inst|binary_start_i17_i I0[2] -pin t2b_inst|binary_start_i18_i O[2]
load net t2b_inst|binary_start_i25[5] -attr @rip O[5] -attr @name binary_start_i25[5] -pin t2b_inst|binary_start_i24_i I0[5] -pin t2b_inst|binary_start_i25_i O[5]
load net t2b_inst|binary_stop_i50_i_n_6 -attr @rip O[0] -attr @name binary_stop_i50_i_n_6 -pin t2b_inst|binary_stop_i49_i I0[0] -pin t2b_inst|binary_stop_i50_i O[0]
load net t2b_inst|binary_stop_i62_i_n_3 -attr @rip O[3] -attr @name binary_stop_i62_i_n_3 -pin t2b_inst|binary_stop_i61_i I0[3] -pin t2b_inst|binary_stop_i62_i O[3]
load net t2b_inst|binary_stop_i34[0] -attr @rip O[0] -attr @name binary_stop_i34[0] -pin t2b_inst|binary_stop_i33_i I1[0] -pin t2b_inst|binary_stop_i34_i__0 O[0]
load net t2b_inst|binary_stop_i52[1] -attr @rip O[1] -attr @name binary_stop_i52[1] -pin t2b_inst|binary_stop_i51_i I1[1] -pin t2b_inst|binary_stop_i52_i__0 O[1]
load net t2b_inst|binary_stop_i62_i_n_4 -attr @rip O[2] -attr @name binary_stop_i62_i_n_4 -pin t2b_inst|binary_stop_i61_i I0[2] -pin t2b_inst|binary_stop_i62_i O[2]
load net t2b_inst|binary_start_i58[3] -attr @rip O[3] -attr @name binary_start_i58[3] -pin t2b_inst|binary_start_i57_i I0[3] -pin t2b_inst|binary_start_i58_i O[3]
load net t2b_inst|binary_stop_i62_i_n_5 -attr @rip O[1] -attr @name binary_stop_i62_i_n_5 -pin t2b_inst|binary_stop_i61_i I0[1] -pin t2b_inst|binary_stop_i62_i O[1]
load net t2b_inst|binary_stop_i690_in[1] -attr @rip O[1] -attr @name binary_stop_i690_in[1] -pin t2b_inst|binary_stop_i68_i I0[1] -pin t2b_inst|binary_stop_i69_i O[1]
load net t2b_inst|binary_stop_i59[0] -attr @rip O[0] -attr @name binary_stop_i59[0] -pin t2b_inst|binary_stop_i58_i I1[0] -pin t2b_inst|binary_stop_i59_i__0 O[0]
load net t2b_inst|binary_stop_i62_i_n_6 -attr @rip O[0] -attr @name binary_stop_i62_i_n_6 -pin t2b_inst|binary_stop_i61_i I0[0] -pin t2b_inst|binary_stop_i62_i O[0]
load net coarse_cnt_w[3] -attr @rip coarse_cnt_o[3] -pin coarse_cnt_inst coarse_cnt_o[3] -pin merge_inst coarse_cnt_i[3]
load net t2b_inst|binary_stop_i55[5] -attr @rip O[5] -attr @name binary_stop_i55[5] -pin t2b_inst|binary_stop_i54_i I1[5] -pin t2b_inst|binary_stop_i55_i__0 O[5]
load net t2b_inst|thermometer_start_i[54] -attr @rip thermometer_start_i[54] -attr @name thermometer_start_i[54] -hierPin t2b_inst thermometer_start_i[54] -pin t2b_inst|binary_start_i15_i I1
load net t2b_inst|binary_start_i4[0] -attr @rip O[0] -attr @name binary_start_i4[0] -pin t2b_inst|binary_start_i3_i I0[0] -pin t2b_inst|binary_start_i4_i O[0]
load net t2b_inst|binary_start_i68[1] -attr @rip O[1] -attr @name binary_start_i68[1] -pin t2b_inst|binary_start_i67_i I0[1] -pin t2b_inst|binary_start_i68_i O[1]
load net t2b_inst|binary_stop_i43[5] -attr @rip O[5] -attr @name binary_stop_i43[5] -pin t2b_inst|binary_stop_i42_i I1[5] -pin t2b_inst|binary_stop_i43_i__0 O[5]
load net t2b_inst|binary_start_i28[0] -attr @rip O[0] -attr @name binary_start_i28[0] -pin t2b_inst|binary_start_i27_i I0[0] -pin t2b_inst|binary_start_i28_i O[0]
load net t2b_inst|binary_stop_i46[6] -attr @rip O[6] -attr @name binary_stop_i46[6] -pin t2b_inst|binary_stop_i45_i I1[6] -pin t2b_inst|binary_stop_i46_i__0 O[6]
load net tdl_thermometer_stop_val_w[14] -attr @rip thermometer_stop_val_o[14] -pin t2b_inst thermometer_stop_i[14] -pin tdl_inst thermometer_stop_val_o[14]
load net measurement_o[2] -attr @rip tdc_measure_o[2] -port measurement_o[2] -pin merge_inst tdc_measure_o[2]
load net t2b_inst|binary_stop_i35[6] -attr @rip O[6] -attr @name binary_stop_i35[6] -pin t2b_inst|binary_stop_i34_i I1[6] -pin t2b_inst|binary_stop_i35_i__0 O[6]
load net t2b_inst|thermometer_start_i[24] -attr @rip thermometer_start_i[24] -attr @name thermometer_start_i[24] -hierPin t2b_inst thermometer_start_i[24] -pin t2b_inst|binary_start_i45_i I1
load net t2b_inst|thermometer_start_i[42] -attr @rip thermometer_start_i[42] -attr @name thermometer_start_i[42] -hierPin t2b_inst thermometer_start_i[42] -pin t2b_inst|binary_start_i27_i I1
load net t2b_inst|binary_start_i29[5] -attr @rip O[5] -attr @name binary_start_i29[5] -pin t2b_inst|binary_start_i28_i I0[5] -pin t2b_inst|binary_start_i29_i O[5]
load net tdl_thermometer_stop_val_w[3] -attr @rip thermometer_stop_val_o[3] -pin t2b_inst thermometer_stop_i[3] -pin tdl_inst thermometer_stop_val_o[3]
load net t2b_inst|binary_stop_i14[0] -attr @rip O[0] -attr @name binary_stop_i14[0] -pin t2b_inst|binary_stop_i13_i I1[0] -pin t2b_inst|binary_stop_i14_i__0 O[0]
load net t2b_inst|thermometer_start_i[61] -attr @rip thermometer_start_i[61] -attr @name thermometer_start_i[61] -hierPin t2b_inst thermometer_start_i[61] -pin t2b_inst|binary_start_i8_i I1
load net t2b_inst|binary_start_i67[0] -attr @rip O[0] -attr @name binary_start_i67[0] -pin t2b_inst|binary_start_i66_i I0[0] -pin t2b_inst|binary_start_i67_i O[0]
load net t2b_inst|binary_start_i8[2] -attr @rip O[2] -attr @name binary_start_i8[2] -pin t2b_inst|binary_start_i7_i I0[2] -pin t2b_inst|binary_start_i8_i O[2]
load net t2b_inst|thermometer_stop_i[40] -attr @rip thermometer_stop_i[40] -attr @name thermometer_stop_i[40] -hierPin t2b_inst thermometer_stop_i[40] -pin t2b_inst|binary_stop_i30_i__0 I0
load net t2b_inst|binary_stop_i6[4] -attr @rip O[4] -attr @name binary_stop_i6[4] -pin t2b_inst|binary_stop_i5_i I1[4] -pin t2b_inst|binary_stop_i6_i__0 O[4]
load net t2b_inst|binary_start_i37[5] -attr @rip O[5] -attr @name binary_start_i37[5] -pin t2b_inst|binary_start_i36_i I0[5] -pin t2b_inst|binary_start_i37_i O[5]
load net tdl_thermometer_start_val_w[51] -attr @rip thermometer_start_val_o[51] -pin t2b_inst thermometer_start_i[51] -pin tdl_inst thermometer_start_val_o[51]
load net t2b_inst|binary_start_i25[4] -attr @rip O[4] -attr @name binary_start_i25[4] -pin t2b_inst|binary_start_i24_i I0[4] -pin t2b_inst|binary_start_i25_i O[4]
load net t2b_inst|binary_stop_i18[2] -attr @rip O[2] -attr @name binary_stop_i18[2] -pin t2b_inst|binary_stop_i17_i I1[2] -pin t2b_inst|binary_stop_i18_i__0 O[2]
load net t2b_inst|binary_start_i18[3] -attr @rip O[3] -attr @name binary_start_i18[3] -pin t2b_inst|binary_start_i17_i I0[3] -pin t2b_inst|binary_start_i18_i O[3]
load net t2b_inst|binary_stop_i28[5] -attr @rip O[5] -attr @name binary_stop_i28[5] -pin t2b_inst|binary_stop_i27_i I1[5] -pin t2b_inst|binary_stop_i28_i__0 O[5]
load net t2b_inst|binary_stop_i33[6] -attr @rip O[6] -attr @name binary_stop_i33[6] -pin t2b_inst|binary_stop_i32_i I1[6] -pin t2b_inst|binary_stop_i33_i__0 O[6]
load net t2b_inst|binary_stop_i690_in[0] -attr @rip O[0] -attr @name binary_stop_i690_in[0] -pin t2b_inst|binary_stop_i68_i I0[0] -pin t2b_inst|binary_stop_i69_i O[0]
load net t2b_inst|binary_stop_i34[1] -attr @rip O[1] -attr @name binary_stop_i34[1] -pin t2b_inst|binary_stop_i33_i I1[1] -pin t2b_inst|binary_stop_i34_i__0 O[1]
load net t2b_inst|binary_stop_i44[1] -attr @rip O[1] -attr @name binary_stop_i44[1] -pin t2b_inst|binary_stop_i43_i I1[1] -pin t2b_inst|binary_stop_i44_i__0 O[1]
load net t2b_inst|binary_stop_i52[2] -attr @rip O[2] -attr @name binary_stop_i52[2] -pin t2b_inst|binary_stop_i51_i I1[2] -pin t2b_inst|binary_stop_i52_i__0 O[2]
load net t2b_inst|binary_stop_i5[4] -attr @rip O[4] -attr @name binary_stop_i5[4] -pin t2b_inst|binary_stop_i4_i I1[4] -pin t2b_inst|binary_stop_i5_i__0 O[4]
load net t2b_inst|binary_start_i58[4] -attr @rip O[4] -attr @name binary_start_i58[4] -pin t2b_inst|binary_start_i57_i I0[4] -pin t2b_inst|binary_start_i58_i O[4]
load net t2b_inst|binary_stop_i4[6] -attr @rip O[6] -attr @name binary_stop_i4[6] -pin t2b_inst|binary_stop_i3_i I1[6] -pin t2b_inst|binary_stop_i4_i__0 O[6]
load net t2b_inst|binary_stop_i61_i_n_0 -attr @rip O[6] -attr @name binary_stop_i61_i_n_0 -pin t2b_inst|binary_stop_i60_i I0[6] -pin t2b_inst|binary_stop_i61_i O[6]
load net t2b_inst|thermometer_stop_i[15] -attr @rip thermometer_stop_i[15] -attr @name thermometer_stop_i[15] -hierPin t2b_inst thermometer_stop_i[15] -pin t2b_inst|binary_stop_i55_i__0 I0
load net t2b_inst|binary_start_i[4] -attr @rip O[4] -attr @name binary_start_i[4] -hierPin t2b_inst binary_start_i[4] -pin t2b_inst|binary_start_i0_i O[4]
load net t2b_inst|binary_start_i29[0] -attr @rip O[0] -attr @name binary_start_i29[0] -pin t2b_inst|binary_start_i28_i I0[0] -pin t2b_inst|binary_start_i29_i O[0]
load net t2b_inst|binary_stop_i59[1] -attr @rip O[1] -attr @name binary_stop_i59[1] -pin t2b_inst|binary_stop_i58_i I1[1] -pin t2b_inst|binary_stop_i59_i__0 O[1]
load net t2b_inst|binary_stop_i61_i_n_1 -attr @rip O[5] -attr @name binary_stop_i61_i_n_1 -pin t2b_inst|binary_stop_i60_i I0[5] -pin t2b_inst|binary_stop_i61_i O[5]
load net coarse_cnt_w[4] -attr @rip coarse_cnt_o[4] -pin coarse_cnt_inst coarse_cnt_o[4] -pin merge_inst coarse_cnt_i[4]
load net t2b_inst|binary_start_i68[0] -attr @rip O[0] -attr @name binary_start_i68[0] -pin t2b_inst|binary_start_i67_i I0[0] -pin t2b_inst|binary_start_i68_i O[0]
load net t2b_inst|binary_stop_i55[6] -attr @rip O[6] -attr @name binary_stop_i55[6] -pin t2b_inst|binary_stop_i54_i I1[6] -pin t2b_inst|binary_stop_i55_i__0 O[6]
load net t2b_inst|binary_stop_i61_i_n_2 -attr @rip O[4] -attr @name binary_stop_i61_i_n_2 -pin t2b_inst|binary_stop_i60_i I0[4] -pin t2b_inst|binary_stop_i61_i O[4]
load net t2b_inst|thermometer_start_i[55] -attr @rip thermometer_start_i[55] -attr @name thermometer_start_i[55] -hierPin t2b_inst thermometer_start_i[55] -pin t2b_inst|binary_start_i14_i I1
load net t2b_inst|binary_start_i4[1] -attr @rip O[1] -attr @name binary_start_i4[1] -pin t2b_inst|binary_start_i3_i I0[1] -pin t2b_inst|binary_start_i4_i O[1]
load net t2b_inst|binary_start_i66[3] -attr @rip O[3] -attr @name binary_start_i66[3] -pin t2b_inst|binary_start_i65_i I0[3] -pin t2b_inst|binary_start_i66_i O[3]
load net t2b_inst|binary_stop_i46[5] -attr @rip O[5] -attr @name binary_stop_i46[5] -pin t2b_inst|binary_stop_i45_i I1[5] -pin t2b_inst|binary_stop_i46_i__0 O[5]
load net t2b_inst|binary_stop_i61_i_n_3 -attr @rip O[3] -attr @name binary_stop_i61_i_n_3 -pin t2b_inst|binary_stop_i60_i I0[3] -pin t2b_inst|binary_stop_i61_i O[3]
load net t2b_inst|binary_stop_i8[1] -attr @rip O[1] -attr @name binary_stop_i8[1] -pin t2b_inst|binary_stop_i7_i I1[1] -pin t2b_inst|binary_stop_i8_i__0 O[1]
load net t2b_inst|binary_start_i11[6] -attr @rip O[6] -attr @name binary_start_i11[6] -pin t2b_inst|binary_start_i10_i I0[6] -pin t2b_inst|binary_start_i11_i O[6]
load net tdl_thermometer_stop_val_w[13] -attr @rip thermometer_stop_val_o[13] -pin t2b_inst thermometer_stop_i[13] -pin tdl_inst thermometer_stop_val_o[13]
load net measurement_o[1] -attr @rip tdc_measure_o[1] -port measurement_o[1] -pin merge_inst tdc_measure_o[1]
load net t2b_inst|binary_stop_i61_i_n_4 -attr @rip O[2] -attr @name binary_stop_i61_i_n_4 -pin t2b_inst|binary_stop_i60_i I0[2] -pin t2b_inst|binary_stop_i61_i O[2]
load net t2b_inst|thermometer_start_i[23] -attr @rip thermometer_start_i[23] -attr @name thermometer_start_i[23] -hierPin t2b_inst thermometer_start_i[23] -pin t2b_inst|binary_start_i46_i I1
load net t2b_inst|thermometer_start_i[41] -attr @rip thermometer_start_i[41] -attr @name thermometer_start_i[41] -hierPin t2b_inst thermometer_start_i[41] -pin t2b_inst|binary_start_i28_i I1
load net t2b_inst|binary_stop_i61_i_n_5 -attr @rip O[1] -attr @name binary_stop_i61_i_n_5 -pin t2b_inst|binary_stop_i60_i I0[1] -pin t2b_inst|binary_stop_i61_i O[1]
load net t2b_inst|binary_stop_i11[0] -attr @rip O[0] -attr @name binary_stop_i11[0] -pin t2b_inst|binary_stop_i10_i I1[0] -pin t2b_inst|binary_stop_i11_i__0 O[0]
load net t2b_inst|binary_start_i40[4] -attr @rip O[4] -attr @name binary_start_i40[4] -pin t2b_inst|binary_start_i39_i I0[4] -pin t2b_inst|binary_start_i40_i O[4]
load net t2b_inst|binary_stop_i61_i_n_6 -attr @rip O[0] -attr @name binary_stop_i61_i_n_6 -pin t2b_inst|binary_stop_i60_i I0[0] -pin t2b_inst|binary_stop_i61_i O[0]
load net tdl_thermometer_stop_val_w[4] -attr @rip thermometer_stop_val_o[4] -pin t2b_inst thermometer_stop_i[4] -pin tdl_inst thermometer_stop_val_o[4]
load net t2b_inst|binary_start_i37[2] -attr @rip O[2] -attr @name binary_start_i37[2] -pin t2b_inst|binary_start_i36_i I0[2] -pin t2b_inst|binary_start_i37_i O[2]
load net t2b_inst|binary_start_i22[2] -attr @rip O[2] -attr @name binary_start_i22[2] -pin t2b_inst|binary_start_i21_i I0[2] -pin t2b_inst|binary_start_i22_i O[2]
load net t2b_inst|binary_start_i25[3] -attr @rip O[3] -attr @name binary_start_i25[3] -pin t2b_inst|binary_start_i24_i I0[3] -pin t2b_inst|binary_start_i25_i O[3]
load net t2b_inst|thermometer_start_i[64] -attr @rip thermometer_start_i[64] -attr @name thermometer_start_i[64] -hierPin t2b_inst thermometer_start_i[64] -pin t2b_inst|binary_start_i5_i I1
load net t2b_inst|binary_start_i32[2] -attr @rip O[2] -attr @name binary_start_i32[2] -pin t2b_inst|binary_start_i31_i I0[2] -pin t2b_inst|binary_start_i32_i O[2]
load net t2b_inst|binary_start_i58[1] -attr @rip O[1] -attr @name binary_start_i58[1] -pin t2b_inst|binary_start_i57_i I0[1] -pin t2b_inst|binary_start_i58_i O[1]
load net t2b_inst|binary_start_i30[0] -attr @rip O[0] -attr @name binary_start_i30[0] -pin t2b_inst|binary_start_i29_i I0[0] -pin t2b_inst|binary_start_i30_i O[0]
load net t2b_inst|binary_stop_i28[4] -attr @rip O[4] -attr @name binary_stop_i28[4] -pin t2b_inst|binary_stop_i27_i I1[4] -pin t2b_inst|binary_stop_i28_i__0 O[4]
load net t2b_inst|binary_stop_i60_i_n_0 -attr @rip O[6] -attr @name binary_stop_i60_i_n_0 -pin t2b_inst|binary_stop_i59_i I0[6] -pin t2b_inst|binary_stop_i60_i O[6]
load net t2b_inst|binary_start_i35[4] -attr @rip O[4] -attr @name binary_start_i35[4] -pin t2b_inst|binary_start_i34_i I0[4] -pin t2b_inst|binary_start_i35_i O[4]
load net t2b_inst|binary_stop_i42_i_n_0 -attr @rip O[6] -attr @name binary_stop_i42_i_n_0 -pin t2b_inst|binary_stop_i41_i I0[6] -pin t2b_inst|binary_stop_i42_i O[6]
load net t2b_inst|binary_stop_i44[0] -attr @rip O[0] -attr @name binary_stop_i44[0] -pin t2b_inst|binary_stop_i43_i I1[0] -pin t2b_inst|binary_stop_i44_i__0 O[0]
load net t2b_inst|binary_stop_i5[3] -attr @rip O[3] -attr @name binary_stop_i5[3] -pin t2b_inst|binary_stop_i4_i I1[3] -pin t2b_inst|binary_stop_i5_i__0 O[3]
load net t2b_inst|binary_stop_i60_i_n_1 -attr @rip O[5] -attr @name binary_stop_i60_i_n_1 -pin t2b_inst|binary_stop_i59_i I0[5] -pin t2b_inst|binary_stop_i60_i O[5]
load net t2b_inst|thermometer_stop_i[45] -attr @rip thermometer_stop_i[45] -attr @name thermometer_stop_i[45] -hierPin t2b_inst thermometer_stop_i[45] -pin t2b_inst|binary_stop_i25_i__0 I0
load net t2b_inst|binary_start_i11[1] -attr @rip O[1] -attr @name binary_start_i11[1] -pin t2b_inst|binary_start_i10_i I0[1] -pin t2b_inst|binary_start_i11_i O[1]
load net t2b_inst|binary_start_i18[4] -attr @rip O[4] -attr @name binary_start_i18[4] -pin t2b_inst|binary_start_i17_i I0[4] -pin t2b_inst|binary_start_i18_i O[4]
load net t2b_inst|binary_stop_i42_i_n_1 -attr @rip O[5] -attr @name binary_stop_i42_i_n_1 -pin t2b_inst|binary_stop_i41_i I0[5] -pin t2b_inst|binary_stop_i42_i O[5]
load net t2b_inst|binary_stop_i60_i_n_2 -attr @rip O[4] -attr @name binary_stop_i60_i_n_2 -pin t2b_inst|binary_stop_i59_i I0[4] -pin t2b_inst|binary_stop_i60_i O[4]
load net t2b_inst|thermometer_start_i[52] -attr @rip thermometer_start_i[52] -attr @name thermometer_start_i[52] -hierPin t2b_inst thermometer_start_i[52] -pin t2b_inst|binary_start_i17_i I1
load net t2b_inst|thermometer_stop_i[14] -attr @rip thermometer_stop_i[14] -attr @name thermometer_stop_i[14] -hierPin t2b_inst thermometer_stop_i[14] -pin t2b_inst|binary_stop_i56_i__0 I0
load net t2b_inst|binary_start_i24[6] -attr @rip O[6] -attr @name binary_start_i24[6] -pin t2b_inst|binary_start_i23_i I0[6] -pin t2b_inst|binary_start_i24_i O[6]
load net t2b_inst|binary_stop_i34[2] -attr @rip O[2] -attr @name binary_stop_i34[2] -pin t2b_inst|binary_stop_i33_i I1[2] -pin t2b_inst|binary_stop_i34_i__0 O[2]
load net t2b_inst|binary_stop_i42_i_n_2 -attr @rip O[4] -attr @name binary_stop_i42_i_n_2 -pin t2b_inst|binary_stop_i41_i I0[4] -pin t2b_inst|binary_stop_i42_i O[4]
load net t2b_inst|binary_stop_i60_i_n_3 -attr @rip O[3] -attr @name binary_stop_i60_i_n_3 -pin t2b_inst|binary_stop_i59_i I0[3] -pin t2b_inst|binary_stop_i60_i O[3]
load net tdl_thermometer_start_val_w[56] -attr @rip thermometer_start_val_o[56] -pin t2b_inst thermometer_start_i[56] -pin tdl_inst thermometer_start_val_o[56]
load net tdl_thermometer_stop_val_w[49] -attr @rip thermometer_stop_val_o[49] -pin t2b_inst thermometer_stop_i[49] -pin tdl_inst thermometer_stop_val_o[49]
load net t2b_inst|binary_stop_i42_i_n_3 -attr @rip O[3] -attr @name binary_stop_i42_i_n_3 -pin t2b_inst|binary_stop_i41_i I0[3] -pin t2b_inst|binary_stop_i42_i O[3]
load net t2b_inst|binary_stop_i60_i_n_4 -attr @rip O[2] -attr @name binary_stop_i60_i_n_4 -pin t2b_inst|binary_stop_i59_i I0[2] -pin t2b_inst|binary_stop_i60_i O[2]
load net t2b_inst|binary_start_i66[2] -attr @rip O[2] -attr @name binary_start_i66[2] -pin t2b_inst|binary_start_i65_i I0[2] -pin t2b_inst|binary_start_i66_i O[2]
load net t2b_inst|binary_stop_i12_i_n_0 -attr @rip O[6] -attr @name binary_stop_i12_i_n_0 -pin t2b_inst|binary_stop_i11_i I0[6] -pin t2b_inst|binary_stop_i12_i O[6]
load net t2b_inst|binary_start_i[5] -attr @rip O[5] -attr @name binary_start_i[5] -hierPin t2b_inst binary_start_i[5] -pin t2b_inst|binary_start_i0_i O[5]
load net t2b_inst|binary_stop_i42_i_n_4 -attr @rip O[2] -attr @name binary_stop_i42_i_n_4 -pin t2b_inst|binary_stop_i41_i I0[2] -pin t2b_inst|binary_stop_i42_i O[2]
load net t2b_inst|binary_stop_i46[4] -attr @rip O[4] -attr @name binary_stop_i46[4] -pin t2b_inst|binary_stop_i45_i I1[4] -pin t2b_inst|binary_stop_i46_i__0 O[4]
load net t2b_inst|binary_stop_i60_i_n_5 -attr @rip O[1] -attr @name binary_stop_i60_i_n_5 -pin t2b_inst|binary_stop_i59_i I0[1] -pin t2b_inst|binary_stop_i60_i O[1]
load net t2b_inst|binary_stop_i8[0] -attr @rip O[0] -attr @name binary_stop_i8[0] -pin t2b_inst|binary_stop_i7_i I1[0] -pin t2b_inst|binary_stop_i8_i__0 O[0]
load net coarse_cnt_w[5] -attr @rip coarse_cnt_o[5] -pin coarse_cnt_inst coarse_cnt_o[5] -pin merge_inst coarse_cnt_i[5]
load net t2b_inst|binary_stop_i12_i_n_1 -attr @rip O[5] -attr @name binary_stop_i12_i_n_1 -pin t2b_inst|binary_stop_i11_i I0[5] -pin t2b_inst|binary_stop_i12_i O[5]
load net tdl_thermometer_stop_val_w[12] -attr @rip thermometer_stop_val_o[12] -pin t2b_inst thermometer_stop_i[12] -pin tdl_inst thermometer_stop_val_o[12]
load net t2b_inst|binary_stop_i42_i_n_5 -attr @rip O[1] -attr @name binary_stop_i42_i_n_5 -pin t2b_inst|binary_stop_i41_i I0[1] -pin t2b_inst|binary_stop_i42_i O[1]
load net t2b_inst|binary_stop_i60_i_n_6 -attr @rip O[0] -attr @name binary_stop_i60_i_n_6 -pin t2b_inst|binary_stop_i59_i I0[0] -pin t2b_inst|binary_stop_i60_i O[0]
load net t2b_inst|thermometer_start_i[22] -attr @rip thermometer_start_i[22] -attr @name thermometer_start_i[22] -hierPin t2b_inst thermometer_start_i[22] -pin t2b_inst|binary_start_i47_i I1
load net t2b_inst|thermometer_start_i[40] -attr @rip thermometer_start_i[40] -attr @name thermometer_start_i[40] -hierPin t2b_inst thermometer_start_i[40] -pin t2b_inst|binary_start_i29_i I1
load net t2b_inst|binary_stop_i12_i_n_2 -attr @rip O[4] -attr @name binary_stop_i12_i_n_2 -pin t2b_inst|binary_stop_i11_i I0[4] -pin t2b_inst|binary_stop_i12_i O[4]
load net t2b_inst|binary_stop_i42_i_n_6 -attr @rip O[0] -attr @name binary_stop_i42_i_n_6 -pin t2b_inst|binary_stop_i41_i I0[0] -pin t2b_inst|binary_stop_i42_i O[0]
load net t2b_inst|binary_stop_i12_i_n_3 -attr @rip O[3] -attr @name binary_stop_i12_i_n_3 -pin t2b_inst|binary_stop_i11_i I0[3] -pin t2b_inst|binary_stop_i12_i O[3]
load net t2b_inst|binary_stop_i12_i_n_4 -attr @rip O[2] -attr @name binary_stop_i12_i_n_4 -pin t2b_inst|binary_stop_i11_i I0[2] -pin t2b_inst|binary_stop_i12_i O[2]
load net t2b_inst|binary_stop_i59[6] -attr @rip O[6] -attr @name binary_stop_i59[6] -pin t2b_inst|binary_stop_i58_i I1[6] -pin t2b_inst|binary_stop_i59_i__0 O[6]
load net t2b_inst|binary_stop_i21_i_n_0 -attr @rip O[6] -attr @name binary_stop_i21_i_n_0 -pin t2b_inst|binary_stop_i20_i I0[6] -pin t2b_inst|binary_stop_i21_i O[6]
load net t2b_inst|binary_stop_i12_i_n_5 -attr @rip O[1] -attr @name binary_stop_i12_i_n_5 -pin t2b_inst|binary_stop_i11_i I0[1] -pin t2b_inst|binary_stop_i12_i O[1]
load net t2b_inst|binary_stop_i11[1] -attr @rip O[1] -attr @name binary_stop_i11[1] -pin t2b_inst|binary_stop_i10_i I1[1] -pin t2b_inst|binary_stop_i11_i__0 O[1]
load net measurement_o[4] -attr @rip tdc_measure_o[4] -port measurement_o[4] -pin merge_inst tdc_measure_o[4]
load net t2b_inst|binary_start_i40[5] -attr @rip O[5] -attr @name binary_start_i40[5] -pin t2b_inst|binary_start_i39_i I0[5] -pin t2b_inst|binary_start_i40_i O[5]
load net t2b_inst|binary_stop_i21_i_n_1 -attr @rip O[5] -attr @name binary_stop_i21_i_n_1 -pin t2b_inst|binary_stop_i20_i I0[5] -pin t2b_inst|binary_stop_i21_i O[5]
load net t2b_inst|binary_stop_i12_i_n_6 -attr @rip O[0] -attr @name binary_stop_i12_i_n_6 -pin t2b_inst|binary_stop_i11_i I0[0] -pin t2b_inst|binary_stop_i12_i O[0]
load net start_en_w -pin synchronizer_inst start_en_o -pin tdl_inst store_start_i
netloc start_en_w 1 5 3 1210 360 NJ 360 2130
load net t2b_inst|binary_stop_i21_i_n_2 -attr @rip O[4] -attr @name binary_stop_i21_i_n_2 -pin t2b_inst|binary_stop_i20_i I0[4] -pin t2b_inst|binary_stop_i21_i O[4]
load net t2b_inst|binary_start_i37[3] -attr @rip O[3] -attr @name binary_start_i37[3] -pin t2b_inst|binary_start_i36_i I0[3] -pin t2b_inst|binary_start_i37_i O[3]
load net t2b_inst|binary_stop_i18[0] -attr @rip O[0] -attr @name binary_stop_i18[0] -pin t2b_inst|binary_stop_i17_i I1[0] -pin t2b_inst|binary_stop_i18_i__0 O[0]
load net t2b_inst|binary_stop_i21_i_n_3 -attr @rip O[3] -attr @name binary_stop_i21_i_n_3 -pin t2b_inst|binary_stop_i20_i I0[3] -pin t2b_inst|binary_stop_i21_i O[3]
load net t2b_inst|thermometer_start_i[63] -attr @rip thermometer_start_i[63] -attr @name thermometer_start_i[63] -hierPin t2b_inst thermometer_start_i[63] -pin t2b_inst|binary_start_i6_i I1
load net t2b_inst|binary_stop_i21_i_n_4 -attr @rip O[2] -attr @name binary_stop_i21_i_n_4 -pin t2b_inst|binary_stop_i20_i I0[2] -pin t2b_inst|binary_stop_i21_i O[2]
load net t2b_inst|binary_start_i32[1] -attr @rip O[1] -attr @name binary_start_i32[1] -pin t2b_inst|binary_start_i31_i I0[1] -pin t2b_inst|binary_start_i32_i O[1]
load net t2b_inst|binary_start_i22[3] -attr @rip O[3] -attr @name binary_start_i22[3] -pin t2b_inst|binary_start_i21_i I0[3] -pin t2b_inst|binary_start_i22_i O[3]
load net t2b_inst|binary_stop_i21_i_n_5 -attr @rip O[1] -attr @name binary_stop_i21_i_n_5 -pin t2b_inst|binary_stop_i20_i I0[1] -pin t2b_inst|binary_stop_i21_i O[1]
load net t2b_inst|binary_start_i63[6] -attr @rip O[6] -attr @name binary_start_i63[6] -pin t2b_inst|binary_start_i62_i I0[6] -pin t2b_inst|binary_start_i63_i O[6]
load net t2b_inst|binary_stop_i33[4] -attr @rip O[4] -attr @name binary_stop_i33[4] -pin t2b_inst|binary_stop_i32_i I1[4] -pin t2b_inst|binary_stop_i33_i__0 O[4]
load net t2b_inst|binary_stop_i55[0] -attr @rip O[0] -attr @name binary_stop_i55[0] -pin t2b_inst|binary_stop_i54_i I1[0] -pin t2b_inst|binary_stop_i55_i__0 O[0]
load net t2b_inst|binary_stop_i21_i_n_6 -attr @rip O[0] -attr @name binary_stop_i21_i_n_6 -pin t2b_inst|binary_stop_i20_i I0[0] -pin t2b_inst|binary_stop_i21_i O[0]
load net t2b_inst|binary_stop_i52[0] -attr @rip O[0] -attr @name binary_stop_i52[0] -pin t2b_inst|binary_stop_i51_i I1[0] -pin t2b_inst|binary_stop_i52_i__0 O[0]
load net t2b_inst|binary_start_i58[2] -attr @rip O[2] -attr @name binary_start_i58[2] -pin t2b_inst|binary_start_i57_i I0[2] -pin t2b_inst|binary_start_i58_i O[2]
load net t2b_inst|binary_start_i11[0] -attr @rip O[0] -attr @name binary_start_i11[0] -pin t2b_inst|binary_start_i10_i I0[0] -pin t2b_inst|binary_start_i11_i O[0]
load net t2b_inst|thermometer_stop_i[13] -attr @rip thermometer_stop_i[13] -attr @name thermometer_stop_i[13] -hierPin t2b_inst thermometer_stop_i[13] -pin t2b_inst|binary_stop_i57_i__0 I0
load net t2b_inst|binary_start_i35[5] -attr @rip O[5] -attr @name binary_start_i35[5] -pin t2b_inst|binary_start_i34_i I0[5] -pin t2b_inst|binary_start_i35_i O[5]
load net t2b_inst|binary_start_i24[5] -attr @rip O[5] -attr @name binary_start_i24[5] -pin t2b_inst|binary_start_i23_i I0[5] -pin t2b_inst|binary_start_i24_i O[5]
load net t2b_inst|binary_stop_i18_i_n_0 -attr @rip O[6] -attr @name binary_stop_i18_i_n_0 -pin t2b_inst|binary_stop_i17_i I0[6] -pin t2b_inst|binary_stop_i18_i O[6]
load net t2b_inst|binary_start_i[2] -attr @rip O[2] -attr @name binary_start_i[2] -hierPin t2b_inst binary_start_i[2] -pin t2b_inst|binary_start_i0_i O[2]
load net t2b_inst|thermometer_stop_i[46] -attr @rip thermometer_stop_i[46] -attr @name thermometer_stop_i[46] -hierPin t2b_inst thermometer_stop_i[46] -pin t2b_inst|binary_stop_i24_i__0 I0
load net t2b_inst|binary_start_i18[5] -attr @rip O[5] -attr @name binary_start_i18[5] -pin t2b_inst|binary_start_i17_i I0[5] -pin t2b_inst|binary_start_i18_i O[5]
load net t2b_inst|binary_stop_i18_i_n_1 -attr @rip O[5] -attr @name binary_stop_i18_i_n_1 -pin t2b_inst|binary_stop_i17_i I0[5] -pin t2b_inst|binary_stop_i18_i O[5]
load net t2b_inst|thermometer_start_i[53] -attr @rip thermometer_start_i[53] -attr @name thermometer_start_i[53] -hierPin t2b_inst thermometer_start_i[53] -pin t2b_inst|binary_start_i16_i I1
load net t2b_inst|binary_stop_i18_i_n_2 -attr @rip O[4] -attr @name binary_stop_i18_i_n_2 -pin t2b_inst|binary_stop_i17_i I0[4] -pin t2b_inst|binary_stop_i18_i O[4]
load net t2b_inst|binary_stop_i34[3] -attr @rip O[3] -attr @name binary_stop_i34[3] -pin t2b_inst|binary_stop_i33_i I1[3] -pin t2b_inst|binary_stop_i34_i__0 O[3]
load net t2b_inst|binary_stop_i63_i_n_0 -attr @rip O[6] -attr @name binary_stop_i63_i_n_0 -pin t2b_inst|binary_stop_i62_i I0[6] -pin t2b_inst|binary_stop_i63_i O[6]
load net tdl_thermometer_start_val_w[57] -attr @rip thermometer_start_val_o[57] -pin t2b_inst thermometer_start_i[57] -pin tdl_inst thermometer_start_val_o[57]
load net t2b_inst|binary_stop_i18_i_n_3 -attr @rip O[3] -attr @name binary_stop_i18_i_n_3 -pin t2b_inst|binary_stop_i17_i I0[3] -pin t2b_inst|binary_stop_i18_i O[3]
load net tdl_thermometer_stop_val_w[11] -attr @rip thermometer_stop_val_o[11] -pin t2b_inst thermometer_stop_i[11] -pin tdl_inst thermometer_stop_val_o[11]
load net t2b_inst|binary_stop_i1[6] -attr @rip O[6] -attr @name binary_stop_i1[6] -pin t2b_inst|binary_stop_i0_i I1[6] -pin t2b_inst|binary_stop_i1_i__0 O[6]
load net t2b_inst|binary_stop_i63_i_n_1 -attr @rip O[5] -attr @name binary_stop_i63_i_n_1 -pin t2b_inst|binary_stop_i62_i I0[5] -pin t2b_inst|binary_stop_i63_i O[5]
load net t2b_inst|thermometer_start_i[21] -attr @rip thermometer_start_i[21] -attr @name thermometer_start_i[21] -hierPin t2b_inst thermometer_start_i[21] -pin t2b_inst|binary_start_i48_i I1
load net t2b_inst|binary_stop_i18_i_n_4 -attr @rip O[2] -attr @name binary_stop_i18_i_n_4 -pin t2b_inst|binary_stop_i17_i I0[2] -pin t2b_inst|binary_stop_i18_i O[2]
load net t2b_inst|binary_start_i29[2] -attr @rip O[2] -attr @name binary_start_i29[2] -pin t2b_inst|binary_start_i28_i I0[2] -pin t2b_inst|binary_start_i29_i O[2]
load net t2b_inst|binary_stop_i62[6] -attr @rip O[6] -attr @name binary_stop_i62[6] -pin t2b_inst|binary_stop_i61_i I1[6] -pin t2b_inst|binary_stop_i62_i__0 O[6]
load net t2b_inst|binary_stop_i63_i_n_2 -attr @rip O[4] -attr @name binary_stop_i63_i_n_2 -pin t2b_inst|binary_stop_i62_i I0[4] -pin t2b_inst|binary_stop_i63_i O[4]
load net t2b_inst|binary_stop_i18_i_n_5 -attr @rip O[1] -attr @name binary_stop_i18_i_n_5 -pin t2b_inst|binary_stop_i17_i I0[1] -pin t2b_inst|binary_stop_i18_i O[1]
load net t2b_inst|binary_start_i40[2] -attr @rip O[2] -attr @name binary_start_i40[2] -pin t2b_inst|binary_start_i39_i I0[2] -pin t2b_inst|binary_start_i40_i O[2]
load net t2b_inst|binary_stop_i63_i_n_3 -attr @rip O[3] -attr @name binary_stop_i63_i_n_3 -pin t2b_inst|binary_stop_i62_i I0[3] -pin t2b_inst|binary_stop_i63_i O[3]
load net t2b_inst|binary_stop_i67[4] -attr @rip O[4] -attr @name binary_stop_i67[4] -pin t2b_inst|binary_stop_i66_i I1[4] -pin t2b_inst|binary_stop_i67_i__0 O[4]
load net t2b_inst|binary_stop_i18_i_n_6 -attr @rip O[0] -attr @name binary_stop_i18_i_n_6 -pin t2b_inst|binary_stop_i17_i I0[0] -pin t2b_inst|binary_stop_i18_i O[0]
load net t2b_inst|binary_stop_i59[5] -attr @rip O[5] -attr @name binary_stop_i59[5] -pin t2b_inst|binary_stop_i58_i I1[5] -pin t2b_inst|binary_stop_i59_i__0 O[5]
load net t2b_inst|binary_stop_i63_i_n_4 -attr @rip O[2] -attr @name binary_stop_i63_i_n_4 -pin t2b_inst|binary_stop_i62_i I0[2] -pin t2b_inst|binary_stop_i63_i O[2]
load net t2b_inst|binary_start_i37[0] -attr @rip O[0] -attr @name binary_start_i37[0] -pin t2b_inst|binary_start_i36_i I0[0] -pin t2b_inst|binary_start_i37_i O[0]
load net measurement_o[3] -attr @rip tdc_measure_o[3] -port measurement_o[3] -pin merge_inst tdc_measure_o[3]
load net t2b_inst|binary_stop_i63_i_n_5 -attr @rip O[1] -attr @name binary_stop_i63_i_n_5 -pin t2b_inst|binary_stop_i62_i I0[1] -pin t2b_inst|binary_stop_i63_i O[1]
load net t2b_inst|binary_stop_i63_i_n_6 -attr @rip O[0] -attr @name binary_stop_i63_i_n_6 -pin t2b_inst|binary_stop_i62_i I0[0] -pin t2b_inst|binary_stop_i63_i O[0]
load net t2b_inst|binary_stop_i11[2] -attr @rip O[2] -attr @name binary_stop_i11[2] -pin t2b_inst|binary_stop_i10_i I1[2] -pin t2b_inst|binary_stop_i11_i__0 O[2]
load net t2b_inst|binary_start_i63[5] -attr @rip O[5] -attr @name binary_start_i63[5] -pin t2b_inst|binary_start_i62_i I0[5] -pin t2b_inst|binary_start_i63_i O[5]
load net t2b_inst|binary_start_i35[2] -attr @rip O[2] -attr @name binary_start_i35[2] -pin t2b_inst|binary_start_i34_i I0[2] -pin t2b_inst|binary_start_i35_i O[2]
load net t2b_inst|binary_start_i22[4] -attr @rip O[4] -attr @name binary_start_i22[4] -pin t2b_inst|binary_start_i21_i I0[4] -pin t2b_inst|binary_start_i22_i O[4]
load net t2b_inst|binary_stop_i39[0] -attr @rip O[0] -attr @name binary_stop_i39[0] -pin t2b_inst|binary_stop_i38_i I1[0] -pin t2b_inst|binary_stop_i39_i__0 O[0]
load net t2b_inst|thermometer_stop_i[43] -attr @rip thermometer_stop_i[43] -attr @name thermometer_stop_i[43] -hierPin t2b_inst thermometer_stop_i[43] -pin t2b_inst|binary_stop_i27_i__0 I0
load net t2b_inst|binary_stop_i33[5] -attr @rip O[5] -attr @name binary_stop_i33[5] -pin t2b_inst|binary_stop_i32_i I1[5] -pin t2b_inst|binary_stop_i33_i__0 O[5]
load net t2b_inst|binary_stop_i48[6] -attr @rip O[6] -attr @name binary_stop_i48[6] -pin t2b_inst|binary_stop_i47_i I1[6] -pin t2b_inst|binary_stop_i48_i__0 O[6]
load net t2b_inst|binary_stop_i55[1] -attr @rip O[1] -attr @name binary_stop_i55[1] -pin t2b_inst|binary_stop_i54_i I1[1] -pin t2b_inst|binary_stop_i55_i__0 O[1]
load net t2b_inst|thermometer_start_i[50] -attr @rip thermometer_start_i[50] -attr @name thermometer_start_i[50] -hierPin t2b_inst thermometer_start_i[50] -pin t2b_inst|binary_start_i19_i I1
load net t2b_inst|thermometer_stop_i[12] -attr @rip thermometer_stop_i[12] -attr @name thermometer_stop_i[12] -hierPin t2b_inst thermometer_stop_i[12] -pin t2b_inst|binary_stop_i58_i__0 I0
load net t2b_inst|binary_start_i24[4] -attr @rip O[4] -attr @name binary_start_i24[4] -pin t2b_inst|binary_start_i23_i I0[4] -pin t2b_inst|binary_start_i24_i O[4]
load net t2b_inst|binary_start_i32[4] -attr @rip O[4] -attr @name binary_start_i32[4] -pin t2b_inst|binary_start_i31_i I0[4] -pin t2b_inst|binary_start_i32_i O[4]
load net tdl_thermometer_start_val_w[54] -attr @rip thermometer_start_val_o[54] -pin t2b_inst thermometer_start_i[54] -pin tdl_inst thermometer_start_val_o[54]
load net t2b_inst|binary_start_i30[2] -attr @rip O[2] -attr @name binary_start_i30[2] -pin t2b_inst|binary_start_i29_i I0[2] -pin t2b_inst|binary_start_i30_i O[2]
load net t2b_inst|binary_stop_i28[6] -attr @rip O[6] -attr @name binary_stop_i28[6] -pin t2b_inst|binary_stop_i27_i I1[6] -pin t2b_inst|binary_stop_i28_i__0 O[6]
load net t2b_inst|binary_start_i[3] -attr @rip O[3] -attr @name binary_start_i[3] -hierPin t2b_inst binary_start_i[3] -pin t2b_inst|binary_start_i0_i O[3]
load net t2b_inst|binary_start_i18[6] -attr @rip O[6] -attr @name binary_start_i18[6] -pin t2b_inst|binary_start_i17_i I0[6] -pin t2b_inst|binary_start_i18_i O[6]
load net t2b_inst|binary_start_i11[3] -attr @rip O[3] -attr @name binary_start_i11[3] -pin t2b_inst|binary_start_i10_i I0[3] -pin t2b_inst|binary_start_i11_i O[3]
load net tdl_thermometer_stop_val_w[10] -attr @rip thermometer_stop_val_o[10] -pin t2b_inst thermometer_stop_i[10] -pin tdl_inst thermometer_stop_val_o[10]
load net t2b_inst|binary_stop_i1[5] -attr @rip O[5] -attr @name binary_stop_i1[5] -pin t2b_inst|binary_stop_i0_i I1[5] -pin t2b_inst|binary_stop_i1_i__0 O[5]
load net t2b_inst|binary_start_i29[1] -attr @rip O[1] -attr @name binary_start_i29[1] -pin t2b_inst|binary_start_i28_i I0[1] -pin t2b_inst|binary_start_i29_i O[1]
load net t2b_inst|binary_stop_i34[4] -attr @rip O[4] -attr @name binary_stop_i34[4] -pin t2b_inst|binary_stop_i33_i I1[4] -pin t2b_inst|binary_stop_i34_i__0 O[4]
load net t2b_inst|binary_stop_i52[5] -attr @rip O[5] -attr @name binary_stop_i52[5] -pin t2b_inst|binary_stop_i51_i I1[5] -pin t2b_inst|binary_stop_i52_i__0 O[5]
load net t2b_inst|binary_stop_i67[3] -attr @rip O[3] -attr @name binary_stop_i67[3] -pin t2b_inst|binary_stop_i66_i I1[3] -pin t2b_inst|binary_stop_i67_i__0 O[3]
load net t2b_inst|binary_stop_i59[4] -attr @rip O[4] -attr @name binary_stop_i59[4] -pin t2b_inst|binary_stop_i58_i I1[4] -pin t2b_inst|binary_stop_i59_i__0 O[4]
load net t2b_inst|binary_start_i40[3] -attr @rip O[3] -attr @name binary_start_i40[3] -pin t2b_inst|binary_start_i39_i I0[3] -pin t2b_inst|binary_start_i40_i O[3]
load net tdl_thermometer_stop_val_w[20] -attr @rip thermometer_stop_val_o[20] -pin t2b_inst thermometer_stop_i[20] -pin tdl_inst thermometer_stop_val_o[20]
load net t2b_inst|binary_start_i37[1] -attr @rip O[1] -attr @name binary_start_i37[1] -pin t2b_inst|binary_start_i36_i I0[1] -pin t2b_inst|binary_start_i37_i O[1]
load net measurement_o[6] -attr @rip tdc_measure_o[6] -port measurement_o[6] -pin merge_inst tdc_measure_o[6]
load net t2b_inst|binary_stop_i11[3] -attr @rip O[3] -attr @name binary_stop_i11[3] -pin t2b_inst|binary_stop_i10_i I1[3] -pin t2b_inst|binary_stop_i11_i__0 O[3]
load net t2b_inst|thermometer_start_i[28] -attr @rip thermometer_start_i[28] -attr @name thermometer_start_i[28] -hierPin t2b_inst thermometer_start_i[28] -pin t2b_inst|binary_start_i41_i I1
load net t2b_inst|thermometer_start_i[46] -attr @rip thermometer_start_i[46] -attr @name thermometer_start_i[46] -hierPin t2b_inst thermometer_start_i[46] -pin t2b_inst|binary_start_i23_i I1
load net t2b_inst|thermometer_stop_i[56] -attr @rip thermometer_stop_i[56] -attr @name thermometer_stop_i[56] -hierPin t2b_inst thermometer_stop_i[56] -pin t2b_inst|binary_stop_i14_i__0 I0
load net t2b_inst|binary_stop_i28[1] -attr @rip O[1] -attr @name binary_stop_i28[1] -pin t2b_inst|binary_stop_i27_i I1[1] -pin t2b_inst|binary_stop_i28_i__0 O[1]
load net t2b_inst|binary_stop_i5[0] -attr @rip O[0] -attr @name binary_stop_i5[0] -pin t2b_inst|binary_stop_i4_i I1[0] -pin t2b_inst|binary_stop_i5_i__0 O[0]
load net t2b_inst|binary_start_i35[3] -attr @rip O[3] -attr @name binary_start_i35[3] -pin t2b_inst|binary_start_i34_i I0[3] -pin t2b_inst|binary_start_i35_i O[3]
load net t2b_inst|binary_start_i32[3] -attr @rip O[3] -attr @name binary_start_i32[3] -pin t2b_inst|binary_start_i31_i I0[3] -pin t2b_inst|binary_start_i32_i O[3]
load net t2b_inst|binary_start_i22[5] -attr @rip O[5] -attr @name binary_start_i22[5] -pin t2b_inst|binary_start_i21_i I0[5] -pin t2b_inst|binary_start_i22_i O[5]
load net t2b_inst|binary_start_i[0] -attr @rip O[0] -attr @name binary_start_i[0] -hierPin t2b_inst binary_start_i[0] -pin t2b_inst|binary_start_i0_i O[0]
load net tdl_thermometer_stop_val_w[58] -attr @rip thermometer_stop_val_o[58] -pin t2b_inst thermometer_stop_i[58] -pin tdl_inst thermometer_stop_val_o[58]
load net t2b_inst|binary_stop_i36_i_n_0 -attr @rip O[6] -attr @name binary_stop_i36_i_n_0 -pin t2b_inst|binary_stop_i35_i I0[6] -pin t2b_inst|binary_stop_i36_i O[6]
load net t2b_inst|binary_stop_i39[1] -attr @rip O[1] -attr @name binary_stop_i39[1] -pin t2b_inst|binary_stop_i38_i I1[1] -pin t2b_inst|binary_stop_i39_i__0 O[1]
load net t2b_inst|thermometer_stop_i[44] -attr @rip thermometer_stop_i[44] -attr @name thermometer_stop_i[44] -hierPin t2b_inst thermometer_stop_i[44] -pin t2b_inst|binary_stop_i26_i__0 I0
load net coarse_cnt_w[0] -attr @rip coarse_cnt_o[0] -pin coarse_cnt_inst coarse_cnt_o[0] -pin merge_inst coarse_cnt_i[0]
load net t2b_inst|binary_start_i30[1] -attr @rip O[1] -attr @name binary_start_i30[1] -pin t2b_inst|binary_start_i29_i I0[1] -pin t2b_inst|binary_start_i30_i O[1]
load net t2b_inst|binary_stop_i36_i_n_1 -attr @rip O[5] -attr @name binary_stop_i36_i_n_1 -pin t2b_inst|binary_stop_i35_i I0[5] -pin t2b_inst|binary_stop_i36_i O[5]
load net t2b_inst|binary_stop_i55[2] -attr @rip O[2] -attr @name binary_stop_i55[2] -pin t2b_inst|binary_stop_i54_i I1[2] -pin t2b_inst|binary_stop_i55_i__0 O[2]
load net t2b_inst|thermometer_start_i[51] -attr @rip thermometer_start_i[51] -attr @name thermometer_start_i[51] -hierPin t2b_inst thermometer_start_i[51] -pin t2b_inst|binary_start_i18_i I1
load net t2b_inst|binary_stop_i36_i_n_2 -attr @rip O[4] -attr @name binary_stop_i36_i_n_2 -pin t2b_inst|binary_stop_i35_i I0[4] -pin t2b_inst|binary_stop_i36_i O[4]
load net t2b_inst|binary_start_i11[2] -attr @rip O[2] -attr @name binary_start_i11[2] -pin t2b_inst|binary_start_i10_i I0[2] -pin t2b_inst|binary_start_i11_i O[2]
load net tdl_thermometer_start_val_w[55] -attr @rip thermometer_start_val_o[55] -pin t2b_inst thermometer_start_i[55] -pin tdl_inst thermometer_start_val_o[55]
load net t2b_inst|binary_stop_i1[4] -attr @rip O[4] -attr @name binary_stop_i1[4] -pin t2b_inst|binary_stop_i0_i I1[4] -pin t2b_inst|binary_stop_i1_i__0 O[4]
load net t2b_inst|binary_stop_i36_i_n_3 -attr @rip O[3] -attr @name binary_stop_i36_i_n_3 -pin t2b_inst|binary_stop_i35_i I0[3] -pin t2b_inst|binary_stop_i36_i O[3]
load net clk_i_IBUF -pin clk_i_IBUF_inst O -pin coarse_cnt_inst clk_i -pin merge_inst clk_i -pin tdl_inst clk_i
netloc clk_i_IBUF 1 1 7 230 180 NJ 180 NJ 180 NJ 180 1190 40 1610J 34 2170J
load net t2b_inst|binary_stop_i36_i_n_4 -attr @rip O[2] -attr @name binary_stop_i36_i_n_4 -pin t2b_inst|binary_stop_i35_i I0[2] -pin t2b_inst|binary_stop_i36_i O[2]
load net t2b_inst|binary_stop_i66_i_n_0 -attr @rip O[6] -attr @name binary_stop_i66_i_n_0 -pin t2b_inst|binary_stop_i65_i I0[6] -pin t2b_inst|binary_stop_i66_i O[6]
load net t2b_inst|binary_stop_i36_i_n_5 -attr @rip O[1] -attr @name binary_stop_i36_i_n_5 -pin t2b_inst|binary_stop_i35_i I0[1] -pin t2b_inst|binary_stop_i36_i O[1]
load net t2b_inst|binary_stop_i66_i_n_1 -attr @rip O[5] -attr @name binary_stop_i66_i_n_1 -pin t2b_inst|binary_stop_i65_i I0[5] -pin t2b_inst|binary_stop_i66_i O[5]
load net t2b_inst|binary_stop_i67[2] -attr @rip O[2] -attr @name binary_stop_i67[2] -pin t2b_inst|binary_stop_i66_i I1[2] -pin t2b_inst|binary_stop_i67_i__0 O[2]
load net t2b_inst|binary_start_i7[6] -attr @rip O[6] -attr @name binary_start_i7[6] -pin t2b_inst|binary_start_i6_i I0[6] -pin t2b_inst|binary_start_i7_i O[6]
load net t2b_inst|binary_stop_i34[5] -attr @rip O[5] -attr @name binary_stop_i34[5] -pin t2b_inst|binary_stop_i33_i I1[5] -pin t2b_inst|binary_stop_i34_i__0 O[5]
load net t2b_inst|binary_stop_i36_i_n_6 -attr @rip O[0] -attr @name binary_stop_i36_i_n_6 -pin t2b_inst|binary_stop_i35_i I0[0] -pin t2b_inst|binary_stop_i36_i O[0]
load net t2b_inst|binary_stop_i52[6] -attr @rip O[6] -attr @name binary_stop_i52[6] -pin t2b_inst|binary_stop_i51_i I1[6] -pin t2b_inst|binary_stop_i52_i__0 O[6]
load net t2b_inst|binary_stop_i66_i_n_2 -attr @rip O[4] -attr @name binary_stop_i66_i_n_2 -pin t2b_inst|binary_stop_i65_i I0[4] -pin t2b_inst|binary_stop_i66_i O[4]
load net tdl_thermometer_stop_val_w[0] -attr @rip thermometer_stop_val_o[0] -pin t2b_inst thermometer_stop_i[0] -pin tdl_inst thermometer_stop_val_o[0]
load net t2b_inst|binary_stop_i66_i_n_3 -attr @rip O[3] -attr @name binary_stop_i66_i_n_3 -pin t2b_inst|binary_stop_i65_i I0[3] -pin t2b_inst|binary_stop_i66_i O[3]
load net t2b_inst|thermometer_stop_i[19] -attr @rip thermometer_stop_i[19] -attr @name thermometer_stop_i[19] -hierPin t2b_inst thermometer_stop_i[19] -pin t2b_inst|binary_stop_i51_i__0 I0
load net t2b_inst|binary_stop_i66_i_n_4 -attr @rip O[2] -attr @name binary_stop_i66_i_n_4 -pin t2b_inst|binary_stop_i65_i I0[2] -pin t2b_inst|binary_stop_i66_i O[2]
load net t2b_inst|binary_stop_i49[0] -attr @rip O[0] -attr @name binary_stop_i49[0] -pin t2b_inst|binary_stop_i48_i I1[0] -pin t2b_inst|binary_stop_i49_i__0 O[0]
load net t2b_inst|binary_stop_i66_i_n_5 -attr @rip O[1] -attr @name binary_stop_i66_i_n_5 -pin t2b_inst|binary_stop_i65_i I0[1] -pin t2b_inst|binary_stop_i66_i O[1]
load net tdl_thermometer_stop_val_w[21] -attr @rip thermometer_stop_val_o[21] -pin t2b_inst thermometer_stop_i[21] -pin tdl_inst thermometer_stop_val_o[21]
load net t2b_inst|binary_stop_i66_i_n_6 -attr @rip O[0] -attr @name binary_stop_i66_i_n_6 -pin t2b_inst|binary_stop_i65_i I0[0] -pin t2b_inst|binary_stop_i66_i O[0]
load net t2b_inst|thermometer_start_i[60] -attr @rip thermometer_start_i[60] -attr @name thermometer_start_i[60] -hierPin t2b_inst thermometer_start_i[60] -pin t2b_inst|binary_start_i9_i I1
load net measurement_o[5] -attr @rip tdc_measure_o[5] -port measurement_o[5] -pin merge_inst tdc_measure_o[5]
load net t2b_inst|binary_stop_i58[6] -attr @rip O[6] -attr @name binary_stop_i58[6] -pin t2b_inst|binary_stop_i57_i I1[6] -pin t2b_inst|binary_stop_i58_i__0 O[6]
load net t2b_inst|thermometer_start_i[27] -attr @rip thermometer_start_i[27] -attr @name thermometer_start_i[27] -hierPin t2b_inst thermometer_start_i[27] -pin t2b_inst|binary_start_i42_i I1
load net t2b_inst|thermometer_start_i[45] -attr @rip thermometer_start_i[45] -attr @name thermometer_start_i[45] -hierPin t2b_inst thermometer_start_i[45] -pin t2b_inst|binary_start_i24_i I1
load net t2b_inst|binary_stop_i28[0] -attr @rip O[0] -attr @name binary_stop_i28[0] -pin t2b_inst|binary_stop_i27_i I1[0] -pin t2b_inst|binary_stop_i28_i__0 O[0]
load net t2b_inst|binary_stop_i11[4] -attr @rip O[4] -attr @name binary_stop_i11[4] -pin t2b_inst|binary_stop_i10_i I1[4] -pin t2b_inst|binary_stop_i11_i__0 O[4]
load net t2b_inst|thermometer_stop_i[57] -attr @rip thermometer_stop_i[57] -attr @name thermometer_stop_i[57] -hierPin t2b_inst thermometer_stop_i[57] -pin t2b_inst|binary_stop_i13_i__0 I0
load net t2b_inst|binary_stop_i4[1] -attr @rip O[1] -attr @name binary_stop_i4[1] -pin t2b_inst|binary_stop_i3_i I1[1] -pin t2b_inst|binary_stop_i4_i__0 O[1]
load net t2b_inst|binary_stop_i13_i_n_0 -attr @rip O[6] -attr @name binary_stop_i13_i_n_0 -pin t2b_inst|binary_stop_i12_i I0[6] -pin t2b_inst|binary_stop_i13_i O[6]
load net t2b_inst|binary_start_i[1] -attr @rip O[1] -attr @name binary_start_i[1] -hierPin t2b_inst binary_start_i[1] -pin t2b_inst|binary_start_i0_i O[1]
load net tdl_thermometer_stop_val_w[59] -attr @rip thermometer_stop_val_o[59] -pin t2b_inst thermometer_stop_i[59] -pin tdl_inst thermometer_stop_val_o[59]
load net t2b_inst|binary_stop_i1[3] -attr @rip O[3] -attr @name binary_stop_i1[3] -pin t2b_inst|binary_stop_i0_i I1[3] -pin t2b_inst|binary_stop_i1_i__0 O[3]
load net coarse_cnt_w[1] -attr @rip coarse_cnt_o[1] -pin coarse_cnt_inst coarse_cnt_o[1] -pin merge_inst coarse_cnt_i[1]
load net t2b_inst|binary_stop_i13_i_n_1 -attr @rip O[5] -attr @name binary_stop_i13_i_n_1 -pin t2b_inst|binary_stop_i12_i I0[5] -pin t2b_inst|binary_stop_i13_i O[5]
load net t2b_inst|binary_stop_i55[3] -attr @rip O[3] -attr @name binary_stop_i55[3] -pin t2b_inst|binary_stop_i54_i I1[3] -pin t2b_inst|binary_stop_i55_i__0 O[3]
load net t2b_inst|binary_stop_i13_i_n_2 -attr @rip O[4] -attr @name binary_stop_i13_i_n_2 -pin t2b_inst|binary_stop_i12_i I0[4] -pin t2b_inst|binary_stop_i13_i O[4]
load net t2b_inst|binary_stop_i52[3] -attr @rip O[3] -attr @name binary_stop_i52[3] -pin t2b_inst|binary_stop_i51_i I1[3] -pin t2b_inst|binary_stop_i52_i__0 O[3]
load net t2b_inst|binary_stop_i62[3] -attr @rip O[3] -attr @name binary_stop_i62[3] -pin t2b_inst|binary_stop_i61_i I1[3] -pin t2b_inst|binary_stop_i62_i__0 O[3]
load net t2b_inst|binary_start_i58[5] -attr @rip O[5] -attr @name binary_start_i58[5] -pin t2b_inst|binary_start_i57_i I0[5] -pin t2b_inst|binary_start_i58_i O[5]
load net t2b_inst|binary_stop_i13_i_n_3 -attr @rip O[3] -attr @name binary_stop_i13_i_n_3 -pin t2b_inst|binary_stop_i12_i I0[3] -pin t2b_inst|binary_stop_i13_i O[3]
load net t2b_inst|binary_start_i30[4] -attr @rip O[4] -attr @name binary_start_i30[4] -pin t2b_inst|binary_start_i29_i I0[4] -pin t2b_inst|binary_start_i30_i O[4]
load net t2b_inst|binary_stop_i67[1] -attr @rip O[1] -attr @name binary_stop_i67[1] -pin t2b_inst|binary_stop_i66_i I1[1] -pin t2b_inst|binary_stop_i67_i__0 O[1]
load net t2b_inst|binary_start_i7[5] -attr @rip O[5] -attr @name binary_start_i7[5] -pin t2b_inst|binary_start_i6_i I0[5] -pin t2b_inst|binary_start_i7_i O[5]
load net t2b_inst|binary_stop_i13_i_n_4 -attr @rip O[2] -attr @name binary_stop_i13_i_n_4 -pin t2b_inst|binary_stop_i12_i I0[2] -pin t2b_inst|binary_stop_i13_i O[2]
load net t2b_inst|thermometer_stop_i[49] -attr @rip thermometer_stop_i[49] -attr @name thermometer_stop_i[49] -hierPin t2b_inst thermometer_stop_i[49] -pin t2b_inst|binary_stop_i21_i__0 I0
load net t2b_inst|binary_start_i49[4] -attr @rip O[4] -attr @name binary_start_i49[4] -pin t2b_inst|binary_start_i48_i I0[4] -pin t2b_inst|binary_start_i49_i O[4]
load net t2b_inst|binary_stop_i13_i_n_5 -attr @rip O[1] -attr @name binary_stop_i13_i_n_5 -pin t2b_inst|binary_stop_i12_i I0[1] -pin t2b_inst|binary_stop_i13_i O[1]
load net t2b_inst|thermometer_stop_i[18] -attr @rip thermometer_stop_i[18] -attr @name thermometer_stop_i[18] -hierPin t2b_inst thermometer_stop_i[18] -pin t2b_inst|binary_stop_i52_i__0 I0
load net t2b_inst|binary_stop_i13_i_n_6 -attr @rip O[0] -attr @name binary_stop_i13_i_n_6 -pin t2b_inst|binary_stop_i12_i I0[0] -pin t2b_inst|binary_stop_i13_i O[0]
load net t2b_inst|binary_stop_i34[6] -attr @rip O[6] -attr @name binary_stop_i34[6] -pin t2b_inst|binary_stop_i33_i I1[6] -pin t2b_inst|binary_stop_i34_i__0 O[6]
load net t2b_inst|binary_stop_i48_i_n_0 -attr @rip O[6] -attr @name binary_stop_i48_i_n_0 -pin t2b_inst|binary_stop_i47_i I0[6] -pin t2b_inst|binary_stop_i48_i O[6]
load net t2b_inst|binary_stop_i48_i_n_1 -attr @rip O[5] -attr @name binary_stop_i48_i_n_1 -pin t2b_inst|binary_stop_i47_i I0[5] -pin t2b_inst|binary_stop_i48_i O[5]
load net t2b_inst|binary_stop_i48_i_n_2 -attr @rip O[4] -attr @name binary_stop_i48_i_n_2 -pin t2b_inst|binary_stop_i47_i I0[4] -pin t2b_inst|binary_stop_i48_i O[4]
load net t2b_inst|binary_stop_i58[5] -attr @rip O[5] -attr @name binary_stop_i58[5] -pin t2b_inst|binary_stop_i57_i I1[5] -pin t2b_inst|binary_stop_i58_i__0 O[5]
load net t2b_inst|thermometer_start_i[26] -attr @rip thermometer_start_i[26] -attr @name thermometer_start_i[26] -hierPin t2b_inst thermometer_start_i[26] -pin t2b_inst|binary_start_i43_i I1
load net t2b_inst|thermometer_start_i[44] -attr @rip thermometer_start_i[44] -attr @name thermometer_start_i[44] -hierPin t2b_inst thermometer_start_i[44] -pin t2b_inst|binary_start_i25_i I1
load net tdl_thermometer_stop_val_w[22] -attr @rip thermometer_stop_val_o[22] -pin t2b_inst thermometer_stop_i[22] -pin tdl_inst thermometer_stop_val_o[22]
load net t2b_inst|binary_start_i63[2] -attr @rip O[2] -attr @name binary_start_i63[2] -pin t2b_inst|binary_start_i62_i I0[2] -pin t2b_inst|binary_start_i63_i O[2]
load net t2b_inst|binary_start_i32[5] -attr @rip O[5] -attr @name binary_start_i32[5] -pin t2b_inst|binary_start_i31_i I0[5] -pin t2b_inst|binary_start_i32_i O[5]
load net t2b_inst|binary_start_i4[6] -attr @rip O[6] -attr @name binary_start_i4[6] -pin t2b_inst|binary_start_i3_i I0[6] -pin t2b_inst|binary_start_i4_i O[6]
load net t2b_inst|binary_stop_i32[5] -attr @rip O[5] -attr @name binary_stop_i32[5] -pin t2b_inst|binary_stop_i31_i I1[5] -pin t2b_inst|binary_stop_i32_i__0 O[5]
load net t2b_inst|binary_stop_i48_i_n_3 -attr @rip O[3] -attr @name binary_stop_i48_i_n_3 -pin t2b_inst|binary_stop_i47_i I0[3] -pin t2b_inst|binary_stop_i48_i O[3]
load net t2b_inst|binary_stop_i48_i_n_4 -attr @rip O[2] -attr @name binary_stop_i48_i_n_4 -pin t2b_inst|binary_stop_i47_i I0[2] -pin t2b_inst|binary_stop_i48_i O[2]
load net t2b_inst|binary_stop_i48_i_n_5 -attr @rip O[1] -attr @name binary_stop_i48_i_n_5 -pin t2b_inst|binary_stop_i47_i I0[1] -pin t2b_inst|binary_stop_i48_i O[1]
load net t2b_inst|binary_stop_i4[0] -attr @rip O[0] -attr @name binary_stop_i4[0] -pin t2b_inst|binary_stop_i3_i I1[0] -pin t2b_inst|binary_stop_i4_i__0 O[0]
load net measurement_o[8] -attr @rip tdc_measure_o[8] -port measurement_o[8] -pin merge_inst tdc_measure_o[8]
load net t2b_inst|binary_start_i67[2] -attr @rip O[2] -attr @name binary_start_i67[2] -pin t2b_inst|binary_start_i66_i I0[2] -pin t2b_inst|binary_start_i67_i O[2]
load net t2b_inst|binary_stop_i11[5] -attr @rip O[5] -attr @name binary_stop_i11[5] -pin t2b_inst|binary_stop_i10_i I1[5] -pin t2b_inst|binary_stop_i11_i__0 O[5]
load net t2b_inst|binary_stop_i48_i_n_6 -attr @rip O[0] -attr @name binary_stop_i48_i_n_6 -pin t2b_inst|binary_stop_i47_i I0[0] -pin t2b_inst|binary_stop_i48_i O[0]
load net t2b_inst|thermometer_stop_i[58] -attr @rip thermometer_stop_i[58] -attr @name thermometer_stop_i[58] -hierPin t2b_inst thermometer_stop_i[58] -pin t2b_inst|binary_stop_i12_i__0 I0
load net t2b_inst|binary_stop_i28[3] -attr @rip O[3] -attr @name binary_stop_i28[3] -pin t2b_inst|binary_stop_i27_i I1[3] -pin t2b_inst|binary_stop_i28_i__0 O[3]
load net t2b_inst|binary_stop_i1[2] -attr @rip O[2] -attr @name binary_stop_i1[2] -pin t2b_inst|binary_stop_i0_i I1[2] -pin t2b_inst|binary_stop_i1_i__0 O[2]
load net t2b_inst|binary_stop_i9[0] -attr @rip O[0] -attr @name binary_stop_i9[0] -pin t2b_inst|binary_stop_i8_i I1[0] -pin t2b_inst|binary_stop_i9_i__0 O[0]
load net t2b_inst|binary_stop_i62[2] -attr @rip O[2] -attr @name binary_stop_i62[2] -pin t2b_inst|binary_stop_i61_i I1[2] -pin t2b_inst|binary_stop_i62_i__0 O[2]
load net t2b_inst|thermometer_stop_i[1] -attr @rip thermometer_stop_i[1] -attr @name thermometer_stop_i[1] -hierPin t2b_inst thermometer_stop_i[1] -pin t2b_inst|binary_stop_i69_i__0 I0
load net t2b_inst|binary_start_i30[3] -attr @rip O[3] -attr @name binary_start_i30[3] -pin t2b_inst|binary_start_i29_i I0[3] -pin t2b_inst|binary_start_i30_i O[3]
load net t2b_inst|binary_start_i7[4] -attr @rip O[4] -attr @name binary_start_i7[4] -pin t2b_inst|binary_start_i6_i I0[4] -pin t2b_inst|binary_start_i7_i O[4]
load net t2b_inst|binary_start_i66[1] -attr @rip O[1] -attr @name binary_start_i66[1] -pin t2b_inst|binary_start_i65_i I0[1] -pin t2b_inst|binary_start_i66_i O[1]
load net t2b_inst|binary_stop_i52[4] -attr @rip O[4] -attr @name binary_stop_i52[4] -pin t2b_inst|binary_stop_i51_i I1[4] -pin t2b_inst|binary_stop_i52_i__0 O[4]
load net t2b_inst|thermometer_stop_i[48] -attr @rip thermometer_stop_i[48] -attr @name thermometer_stop_i[48] -hierPin t2b_inst thermometer_stop_i[48] -pin t2b_inst|binary_stop_i22_i__0 I0
load net t2b_inst|binary_start_i58[6] -attr @rip O[6] -attr @name binary_start_i58[6] -pin t2b_inst|binary_start_i57_i I0[6] -pin t2b_inst|binary_start_i58_i O[6]
load net t2b_inst|binary_start_i49[3] -attr @rip O[3] -attr @name binary_start_i49[3] -pin t2b_inst|binary_start_i48_i I0[3] -pin t2b_inst|binary_start_i49_i O[3]
load net t2b_inst|binary_stop_i31[6] -attr @rip O[6] -attr @name binary_stop_i31[6] -pin t2b_inst|binary_stop_i30_i I1[6] -pin t2b_inst|binary_stop_i31_i__0 O[6]
load net t2b_inst|thermometer_stop_i[17] -attr @rip thermometer_stop_i[17] -attr @name thermometer_stop_i[17] -hierPin t2b_inst thermometer_stop_i[17] -pin t2b_inst|binary_stop_i53_i__0 I0
load net t2b_inst|thermometer_start_i[25] -attr @rip thermometer_start_i[25] -attr @name thermometer_start_i[25] -hierPin t2b_inst thermometer_start_i[25] -pin t2b_inst|binary_start_i44_i I1
load net t2b_inst|thermometer_start_i[43] -attr @rip thermometer_start_i[43] -attr @name thermometer_start_i[43] -hierPin t2b_inst thermometer_start_i[43] -pin t2b_inst|binary_start_i26_i I1
load net t2b_inst|binary_start_i63[1] -attr @rip O[1] -attr @name binary_start_i63[1] -pin t2b_inst|binary_start_i62_i I0[1] -pin t2b_inst|binary_start_i63_i O[1]
load net t2b_inst|binary_start_i22[0] -attr @rip O[0] -attr @name binary_start_i22[0] -pin t2b_inst|binary_start_i21_i I0[0] -pin t2b_inst|binary_start_i22_i O[0]
load net t2b_inst|binary_stop_i49[2] -attr @rip O[2] -attr @name binary_stop_i49[2] -pin t2b_inst|binary_stop_i48_i I1[2] -pin t2b_inst|binary_stop_i49_i__0 O[2]
load net tdl_thermometer_stop_val_w[23] -attr @rip thermometer_stop_val_o[23] -pin t2b_inst thermometer_stop_i[23] -pin tdl_inst thermometer_stop_val_o[23]
load net t2b_inst|binary_start_i32[6] -attr @rip O[6] -attr @name binary_start_i32[6] -pin t2b_inst|binary_start_i31_i I0[6] -pin t2b_inst|binary_start_i32_i O[6]
load net t2b_inst|binary_stop_i32[6] -attr @rip O[6] -attr @name binary_stop_i32[6] -pin t2b_inst|binary_stop_i31_i I1[6] -pin t2b_inst|binary_stop_i32_i__0 O[6]
load net measurement_o[7] -attr @rip tdc_measure_o[7] -port measurement_o[7] -pin merge_inst tdc_measure_o[7]
load net t2b_inst|binary_start_i67[1] -attr @rip O[1] -attr @name binary_start_i67[1] -pin t2b_inst|binary_start_i66_i I0[1] -pin t2b_inst|binary_start_i67_i O[1]
load net t2b_inst|binary_stop_i28[2] -attr @rip O[2] -attr @name binary_stop_i28[2] -pin t2b_inst|binary_stop_i27_i I1[2] -pin t2b_inst|binary_stop_i28_i__0 O[2]
load net t2b_inst|binary_stop_i11[6] -attr @rip O[6] -attr @name binary_stop_i11[6] -pin t2b_inst|binary_stop_i10_i I1[6] -pin t2b_inst|binary_stop_i11_i__0 O[6]
load net t2b_inst|thermometer_stop_i[59] -attr @rip thermometer_stop_i[59] -attr @name thermometer_stop_i[59] -hierPin t2b_inst thermometer_stop_i[59] -pin t2b_inst|binary_stop_i11_i__0 I0
load net t2b_inst|binary_stop_i1[1] -attr @rip O[1] -attr @name binary_stop_i1[1] -pin t2b_inst|binary_stop_i0_i I1[1] -pin t2b_inst|binary_stop_i1_i__0 O[1]
load net stop_i -port stop_i -pin tdc_rst_w0_i I1
netloc stop_i 1 0 3 NJ 380 NJ 380 NJ
load net t2b_inst|binary_start_i41[6] -attr @rip O[6] -attr @name binary_start_i41[6] -pin t2b_inst|binary_start_i40_i I0[6] -pin t2b_inst|binary_start_i41_i O[6]
load net t2b_inst|binary_start_i38[0] -attr @rip O[0] -attr @name binary_start_i38[0] -pin t2b_inst|binary_start_i37_i I0[0] -pin t2b_inst|binary_start_i38_i O[0]
load net t2b_inst|binary_stop_i57[0] -attr @rip O[0] -attr @name binary_stop_i57[0] -pin t2b_inst|binary_stop_i56_i I1[0] -pin t2b_inst|binary_stop_i57_i__0 O[0]
load net t2b_inst|binary_start_i7[3] -attr @rip O[3] -attr @name binary_start_i7[3] -pin t2b_inst|binary_start_i6_i I0[3] -pin t2b_inst|binary_start_i7_i O[3]
load net t2b_inst|binary_start_i35[6] -attr @rip O[6] -attr @name binary_start_i35[6] -pin t2b_inst|binary_start_i34_i I0[6] -pin t2b_inst|binary_start_i35_i O[6]
load net t2b_inst|binary_start_i66[0] -attr @rip O[0] -attr @name binary_start_i66[0] -pin t2b_inst|binary_start_i65_i I0[0] -pin t2b_inst|binary_start_i66_i O[0]
load net t2b_inst|binary_stop_i39[4] -attr @rip O[4] -attr @name binary_stop_i39[4] -pin t2b_inst|binary_stop_i38_i I1[4] -pin t2b_inst|binary_stop_i39_i__0 O[4]
load net t2b_inst|thermometer_stop_i[2] -attr @rip thermometer_stop_i[2] -attr @name thermometer_stop_i[2] -hierPin t2b_inst thermometer_stop_i[2] -pin t2b_inst|binary_stop_i68_i__0 I0
load net t2b_inst|thermometer_stop_i[47] -attr @rip thermometer_stop_i[47] -attr @name thermometer_stop_i[47] -hierPin t2b_inst thermometer_stop_i[47] -pin t2b_inst|binary_stop_i23_i__0 I0
load net t2b_inst|binary_start_i49[2] -attr @rip O[2] -attr @name binary_start_i49[2] -pin t2b_inst|binary_start_i48_i I0[2] -pin t2b_inst|binary_start_i49_i O[2]
load net tdc_rst_w -pin hit_r_reg CLR -pin tdc_rst_w_i O
netloc tdc_rst_w 1 4 1 990
load net t2b_inst|thermometer_stop_i[16] -attr @rip thermometer_stop_i[16] -attr @name thermometer_stop_i[16] -hierPin t2b_inst thermometer_stop_i[16] -pin t2b_inst|binary_stop_i54_i__0 I0
load net t2b_inst|binary_stop_i62[5] -attr @rip O[5] -attr @name binary_stop_i62[5] -pin t2b_inst|binary_stop_i61_i I1[5] -pin t2b_inst|binary_stop_i62_i__0 O[5]
load net tdl_thermometer_start_val_w[58] -attr @rip thermometer_start_val_o[58] -pin t2b_inst thermometer_start_i[58] -pin tdl_inst thermometer_start_val_o[58]
load net t2b_inst|binary_start_i30[6] -attr @rip O[6] -attr @name binary_start_i30[6] -pin t2b_inst|binary_start_i29_i I0[6] -pin t2b_inst|binary_start_i30_i O[6]
load net t2b_inst|binary_start_i20[0] -attr @rip O[0] -attr @name binary_start_i20[0] -pin t2b_inst|binary_start_i19_i I0[0] -pin t2b_inst|binary_start_i20_i O[0]
load net cnt_en_w -pin coarse_cnt_inst cnt_en_i -pin merge_inst en_merge_i -pin synchronizer_inst cnt_en_o
netloc cnt_en_w 1 1 7 230 320 NJ 320 NJ 320 NJ 320 NJ 320 NJ 320 2150
load net t2b_inst|binary_stop_i23[6] -attr @rip O[6] -attr @name binary_stop_i23[6] -pin t2b_inst|binary_stop_i22_i I1[6] -pin t2b_inst|binary_stop_i23_i__0 O[6]
load net t2b_inst|binary_stop_i49[1] -attr @rip O[1] -attr @name binary_stop_i49[1] -pin t2b_inst|binary_stop_i48_i I1[1] -pin t2b_inst|binary_stop_i49_i__0 O[1]
load net t2b_inst|binary_stop_i13[2] -attr @rip O[2] -attr @name binary_stop_i13[2] -pin t2b_inst|binary_stop_i12_i I1[2] -pin t2b_inst|binary_stop_i13_i__0 O[2]
load net tdl_thermometer_stop_val_w[54] -attr @rip thermometer_stop_val_o[54] -pin t2b_inst thermometer_stop_i[54] -pin tdl_inst thermometer_stop_val_o[54]
load net t2b_inst|binary_start_i22[1] -attr @rip O[1] -attr @name binary_start_i22[1] -pin t2b_inst|binary_start_i21_i I0[1] -pin t2b_inst|binary_start_i22_i O[1]
load net tdl_thermometer_stop_val_w[24] -attr @rip thermometer_stop_val_o[24] -pin t2b_inst thermometer_stop_i[24] -pin tdl_inst thermometer_stop_val_o[24]
load net t2b_inst|binary_start_i63[4] -attr @rip O[4] -attr @name binary_start_i63[4] -pin t2b_inst|binary_start_i62_i I0[4] -pin t2b_inst|binary_start_i63_i O[4]
load net t2b_inst|binary_stop_i47_i_n_0 -attr @rip O[6] -attr @name binary_stop_i47_i_n_0 -pin t2b_inst|binary_stop_i46_i I0[6] -pin t2b_inst|binary_stop_i47_i O[6]
load net t2b_inst|binary_start_i53[1] -attr @rip O[1] -attr @name binary_start_i53[1] -pin t2b_inst|binary_start_i52_i I0[1] -pin t2b_inst|binary_start_i53_i O[1]
load net t2b_inst|binary_stop_i37[6] -attr @rip O[6] -attr @name binary_stop_i37[6] -pin t2b_inst|binary_stop_i36_i I1[6] -pin t2b_inst|binary_stop_i37_i__0 O[6]
load net t2b_inst|binary_stop_i47_i_n_1 -attr @rip O[5] -attr @name binary_stop_i47_i_n_1 -pin t2b_inst|binary_stop_i46_i I0[5] -pin t2b_inst|binary_stop_i47_i O[5]
load net t2b_inst|binary_stop_i47_i_n_2 -attr @rip O[4] -attr @name binary_stop_i47_i_n_2 -pin t2b_inst|binary_stop_i46_i I0[4] -pin t2b_inst|binary_stop_i47_i O[4]
load net t2b_inst|binary_stop_i8_i_n_0 -attr @rip O[6] -attr @name binary_stop_i8_i_n_0 -pin t2b_inst|binary_stop_i7_i I0[6] -pin t2b_inst|binary_stop_i8_i O[6]
load net tdl_thermometer_start_val_w[48] -attr @rip thermometer_start_val_o[48] -pin t2b_inst thermometer_start_i[48] -pin tdl_inst thermometer_start_val_o[48]
load net fine_stop_w[0] -attr @rip binary_stop_i[0] -pin merge_inst fine_stop_i[0] -pin t2b_inst binary_stop_i[0]
load net t2b_inst|binary_stop_i47_i_n_3 -attr @rip O[3] -attr @name binary_stop_i47_i_n_3 -pin t2b_inst|binary_stop_i46_i I0[3] -pin t2b_inst|binary_stop_i47_i O[3]
load net t2b_inst|binary_stop_i8_i_n_1 -attr @rip O[5] -attr @name binary_stop_i8_i_n_1 -pin t2b_inst|binary_stop_i7_i I0[5] -pin t2b_inst|binary_stop_i8_i O[5]
load net t2b_inst|binary_start_i41[5] -attr @rip O[5] -attr @name binary_start_i41[5] -pin t2b_inst|binary_start_i40_i I0[5] -pin t2b_inst|binary_start_i41_i O[5]
load net t2b_inst|binary_stop_i43[0] -attr @rip O[0] -attr @name binary_stop_i43[0] -pin t2b_inst|binary_stop_i42_i I1[0] -pin t2b_inst|binary_stop_i43_i__0 O[0]
load net t2b_inst|binary_stop_i47_i_n_4 -attr @rip O[2] -attr @name binary_stop_i47_i_n_4 -pin t2b_inst|binary_stop_i46_i I0[2] -pin t2b_inst|binary_stop_i47_i O[2]
load net t2b_inst|binary_stop_i8_i_n_2 -attr @rip O[4] -attr @name binary_stop_i8_i_n_2 -pin t2b_inst|binary_stop_i7_i I0[4] -pin t2b_inst|binary_stop_i8_i O[4]
load net t2b_inst|binary_stop_i47_i_n_5 -attr @rip O[1] -attr @name binary_stop_i47_i_n_5 -pin t2b_inst|binary_stop_i46_i I0[1] -pin t2b_inst|binary_stop_i47_i O[1]
load net t2b_inst|binary_stop_i8_i_n_3 -attr @rip O[3] -attr @name binary_stop_i8_i_n_3 -pin t2b_inst|binary_stop_i7_i I0[3] -pin t2b_inst|binary_stop_i8_i O[3]
load net t2b_inst|binary_start_i38[1] -attr @rip O[1] -attr @name binary_start_i38[1] -pin t2b_inst|binary_start_i37_i I0[1] -pin t2b_inst|binary_start_i38_i O[1]
load net t2b_inst|binary_start_i49[1] -attr @rip O[1] -attr @name binary_start_i49[1] -pin t2b_inst|binary_start_i48_i I0[1] -pin t2b_inst|binary_start_i49_i O[1]
load net t2b_inst|binary_stop_i47_i_n_6 -attr @rip O[0] -attr @name binary_stop_i47_i_n_6 -pin t2b_inst|binary_stop_i46_i I0[0] -pin t2b_inst|binary_stop_i47_i O[0]
load net t2b_inst|binary_stop_i57[1] -attr @rip O[1] -attr @name binary_stop_i57[1] -pin t2b_inst|binary_stop_i56_i I1[1] -pin t2b_inst|binary_stop_i57_i__0 O[1]
load net t2b_inst|binary_stop_i8_i_n_4 -attr @rip O[2] -attr @name binary_stop_i8_i_n_4 -pin t2b_inst|binary_stop_i7_i I0[2] -pin t2b_inst|binary_stop_i8_i O[2]
load net t2b_inst|thermometer_start_i[69] -attr @rip thermometer_start_i[69] -attr @name thermometer_start_i[69] -hierPin t2b_inst thermometer_start_i[69] -pin t2b_inst|binary_start_i0_i I1
load net t2b_inst|binary_stop_i39[5] -attr @rip O[5] -attr @name binary_stop_i39[5] -pin t2b_inst|binary_stop_i38_i I1[5] -pin t2b_inst|binary_stop_i39_i__0 O[5]
load net t2b_inst|binary_stop_i62[4] -attr @rip O[4] -attr @name binary_stop_i62[4] -pin t2b_inst|binary_stop_i61_i I1[4] -pin t2b_inst|binary_stop_i62_i__0 O[4]
load net t2b_inst|binary_stop_i8_i_n_5 -attr @rip O[1] -attr @name binary_stop_i8_i_n_5 -pin t2b_inst|binary_stop_i7_i I0[1] -pin t2b_inst|binary_stop_i8_i O[1]
load net t2b_inst|binary_stop_i23_i_n_0 -attr @rip O[6] -attr @name binary_stop_i23_i_n_0 -pin t2b_inst|binary_stop_i22_i I0[6] -pin t2b_inst|binary_stop_i23_i O[6]
load net t2b_inst|binary_start_i30[5] -attr @rip O[5] -attr @name binary_start_i30[5] -pin t2b_inst|binary_start_i29_i I0[5] -pin t2b_inst|binary_start_i30_i O[5]
load net t2b_inst|binary_stop_i8_i_n_6 -attr @rip O[0] -attr @name binary_stop_i8_i_n_6 -pin t2b_inst|binary_stop_i7_i I0[0] -pin t2b_inst|binary_stop_i8_i O[0]
load net t2b_inst|binary_stop_i23_i_n_1 -attr @rip O[5] -attr @name binary_stop_i23_i_n_1 -pin t2b_inst|binary_stop_i22_i I0[5] -pin t2b_inst|binary_stop_i23_i O[5]
load net tdl_thermometer_start_val_w[59] -attr @rip thermometer_start_val_o[59] -pin t2b_inst thermometer_start_i[59] -pin tdl_inst thermometer_start_val_o[59]
load net t2b_inst|binary_stop_i23_i_n_2 -attr @rip O[4] -attr @name binary_stop_i23_i_n_2 -pin t2b_inst|binary_stop_i22_i I0[4] -pin t2b_inst|binary_stop_i23_i O[4]
load net t2b_inst|binary_start_i20[1] -attr @rip O[1] -attr @name binary_start_i20[1] -pin t2b_inst|binary_start_i19_i I0[1] -pin t2b_inst|binary_start_i20_i O[1]
load net t2b_inst|binary_stop_i23_i_n_3 -attr @rip O[3] -attr @name binary_stop_i23_i_n_3 -pin t2b_inst|binary_stop_i22_i I0[3] -pin t2b_inst|binary_stop_i23_i O[3]
load net t2b_inst|binary_stop_i23[5] -attr @rip O[5] -attr @name binary_stop_i23[5] -pin t2b_inst|binary_stop_i22_i I1[5] -pin t2b_inst|binary_stop_i23_i__0 O[5]
load net t2b_inst|binary_stop_i23_i_n_4 -attr @rip O[2] -attr @name binary_stop_i23_i_n_4 -pin t2b_inst|binary_stop_i22_i I0[2] -pin t2b_inst|binary_stop_i23_i O[2]
load net t2b_inst|binary_stop_i23_i_n_5 -attr @rip O[1] -attr @name binary_stop_i23_i_n_5 -pin t2b_inst|binary_stop_i22_i I0[1] -pin t2b_inst|binary_stop_i23_i O[1]
load net t2b_inst|binary_start_i57[0] -attr @rip O[0] -attr @name binary_start_i57[0] -pin t2b_inst|binary_start_i56_i I0[0] -pin t2b_inst|binary_start_i57_i O[0]
load net t2b_inst|binary_stop_i23_i_n_6 -attr @rip O[0] -attr @name binary_stop_i23_i_n_6 -pin t2b_inst|binary_stop_i22_i I0[0] -pin t2b_inst|binary_stop_i23_i O[0]
load net t2b_inst|binary_stop_i13[3] -attr @rip O[3] -attr @name binary_stop_i13[3] -pin t2b_inst|binary_stop_i12_i I1[3] -pin t2b_inst|binary_stop_i13_i__0 O[3]
load net t2b_inst|binary_start_i63[3] -attr @rip O[3] -attr @name binary_start_i63[3] -pin t2b_inst|binary_start_i62_i I0[3] -pin t2b_inst|binary_start_i63_i O[3]
load net t2b_inst|binary_stop_i69[2] -attr @rip O[2] -attr @name binary_stop_i69[2] -pin t2b_inst|binary_stop_i68_i I1[2] -pin t2b_inst|binary_stop_i69_i__0 O[2]
load net tdl_thermometer_stop_val_w[55] -attr @rip thermometer_stop_val_o[55] -pin t2b_inst thermometer_stop_i[55] -pin tdl_inst thermometer_stop_val_o[55]
load net t2b_inst|binary_start_i53[0] -attr @rip O[0] -attr @name binary_start_i53[0] -pin t2b_inst|binary_start_i52_i I0[0] -pin t2b_inst|binary_start_i53_i O[0]
load net t2b_inst|binary_stop_i49[4] -attr @rip O[4] -attr @name binary_stop_i49[4] -pin t2b_inst|binary_stop_i48_i I1[4] -pin t2b_inst|binary_stop_i49_i__0 O[4]
load net t2b_inst|binary_start_i60[0] -attr @rip O[0] -attr @name binary_start_i60[0] -pin t2b_inst|binary_start_i59_i I0[0] -pin t2b_inst|binary_start_i60_i O[0]
load net tdl_thermometer_stop_val_w[25] -attr @rip thermometer_stop_val_o[25] -pin t2b_inst thermometer_stop_i[25] -pin tdl_inst thermometer_stop_val_o[25]
load net tdl_thermometer_start_val_w[47] -attr @rip thermometer_start_val_o[47] -pin t2b_inst thermometer_start_i[47] -pin tdl_inst thermometer_start_val_o[47]
load net measurement_o[9] -attr @rip tdc_measure_o[9] -port measurement_o[9] -pin merge_inst tdc_measure_o[9]
load net t2b_inst|thermometer_start_i[49] -attr @rip thermometer_start_i[49] -attr @name thermometer_start_i[49] -hierPin t2b_inst thermometer_start_i[49] -pin t2b_inst|binary_start_i20_i I1
load net fine_stop_w[1] -attr @rip binary_stop_i[1] -pin merge_inst fine_stop_i[1] -pin t2b_inst binary_stop_i[1]
load net t2b_inst|binary_stop_i39[2] -attr @rip O[2] -attr @name binary_stop_i39[2] -pin t2b_inst|binary_stop_i38_i I1[2] -pin t2b_inst|binary_stop_i39_i__0 O[2]
load net t2b_inst|thermometer_stop_i[0] -attr @rip thermometer_stop_i[0] -attr @name thermometer_stop_i[0] -hierPin t2b_inst thermometer_stop_i[0] -pin t2b_inst|binary_stop_i69_i I0
load net t2b_inst|binary_start_i49[0] -attr @rip O[0] -attr @name binary_start_i49[0] -pin t2b_inst|binary_start_i48_i I0[0] -pin t2b_inst|binary_start_i49_i O[0]
load net t2b_inst|binary_stop_i4[5] -attr @rip O[5] -attr @name binary_stop_i4[5] -pin t2b_inst|binary_stop_i3_i I1[5] -pin t2b_inst|binary_stop_i4_i__0 O[5]
load net t2b_inst|binary_start_i38[2] -attr @rip O[2] -attr @name binary_start_i38[2] -pin t2b_inst|binary_start_i37_i I0[2] -pin t2b_inst|binary_start_i38_i O[2]
load net t2b_inst|binary_stop_i57[2] -attr @rip O[2] -attr @name binary_stop_i57[2] -pin t2b_inst|binary_stop_i56_i I1[2] -pin t2b_inst|binary_stop_i57_i__0 O[2]
load net t2b_inst|binary_start_i20[2] -attr @rip O[2] -attr @name binary_start_i20[2] -pin t2b_inst|binary_start_i19_i I0[2] -pin t2b_inst|binary_start_i20_i O[2]
load net t2b_inst|binary_start_i42[5] -attr @rip O[5] -attr @name binary_start_i42[5] -pin t2b_inst|binary_start_i41_i I0[5] -pin t2b_inst|binary_start_i42_i O[5]
load net t2b_inst|binary_stop_i69[1] -attr @rip O[1] -attr @name binary_stop_i69[1] -pin t2b_inst|binary_stop_i68_i I1[1] -pin t2b_inst|binary_stop_i69_i__0 O[1]
load net t2b_inst|thermometer_start_i[0] -attr @rip thermometer_start_i[0] -attr @name thermometer_start_i[0] -hierPin t2b_inst thermometer_start_i[0] -pin t2b_inst|binary_start_i68_i I0
load net t2b_inst|binary_start_i57[1] -attr @rip O[1] -attr @name binary_start_i57[1] -pin t2b_inst|binary_start_i56_i I0[1] -pin t2b_inst|binary_start_i57_i O[1]
load net t2b_inst|binary_stop_i37[4] -attr @rip O[4] -attr @name binary_stop_i37[4] -pin t2b_inst|binary_stop_i36_i I1[4] -pin t2b_inst|binary_stop_i37_i__0 O[4]
load net t2b_inst|binary_stop_i49[3] -attr @rip O[3] -attr @name binary_stop_i49[3] -pin t2b_inst|binary_stop_i48_i I1[3] -pin t2b_inst|binary_stop_i49_i__0 O[3]
load net t2b_inst|binary_stop_i13[4] -attr @rip O[4] -attr @name binary_stop_i13[4] -pin t2b_inst|binary_stop_i12_i I1[4] -pin t2b_inst|binary_stop_i13_i__0 O[4]
load net tdl_thermometer_stop_val_w[56] -attr @rip thermometer_stop_val_o[56] -pin t2b_inst thermometer_stop_i[56] -pin tdl_inst thermometer_stop_val_o[56]
load net tdl_thermometer_start_val_w[46] -attr @rip thermometer_start_val_o[46] -pin t2b_inst thermometer_start_i[46] -pin tdl_inst thermometer_start_val_o[46]
load net t2b_inst|thermometer_start_i[48] -attr @rip thermometer_start_i[48] -attr @name thermometer_start_i[48] -hierPin t2b_inst thermometer_start_i[48] -pin t2b_inst|binary_start_i21_i I1
load net t2b_inst|binary_start_i60[1] -attr @rip O[1] -attr @name binary_start_i60[1] -pin t2b_inst|binary_start_i59_i I0[1] -pin t2b_inst|binary_start_i60_i O[1]
load net tdl_thermometer_stop_val_w[26] -attr @rip thermometer_stop_val_o[26] -pin t2b_inst thermometer_stop_i[26] -pin tdl_inst thermometer_stop_val_o[26]
load net tdl_thermometer_stop_val_w[18] -attr @rip thermometer_stop_val_o[18] -pin t2b_inst thermometer_stop_i[18] -pin tdl_inst thermometer_stop_val_o[18]
load net fine_start_w[6] -attr @rip binary_start_i[6] -pin merge_inst fine_start_i[6] -pin t2b_inst binary_start_i[6]
load net t2b_inst|binary_stop_i4[4] -attr @rip O[4] -attr @name binary_stop_i4[4] -pin t2b_inst|binary_stop_i3_i I1[4] -pin t2b_inst|binary_stop_i4_i__0 O[4]
load net fine_stop_w[2] -attr @rip binary_stop_i[2] -pin merge_inst fine_stop_i[2] -pin t2b_inst binary_stop_i[2]
load net t2b_inst|binary_stop_i39[3] -attr @rip O[3] -attr @name binary_stop_i39[3] -pin t2b_inst|binary_stop_i38_i I1[3] -pin t2b_inst|binary_stop_i39_i__0 O[3]
load net t2b_inst|binary_stop_i9_i_n_0 -attr @rip O[6] -attr @name binary_stop_i9_i_n_0 -pin t2b_inst|binary_stop_i8_i I0[6] -pin t2b_inst|binary_stop_i9_i O[6]
load net t2b_inst|binary_stop_i43[2] -attr @rip O[2] -attr @name binary_stop_i43[2] -pin t2b_inst|binary_stop_i42_i I1[2] -pin t2b_inst|binary_stop_i43_i__0 O[2]
load net t2b_inst|binary_stop_i9_i_n_1 -attr @rip O[5] -attr @name binary_stop_i9_i_n_1 -pin t2b_inst|binary_stop_i8_i I0[5] -pin t2b_inst|binary_stop_i9_i O[5]
load net t2b_inst|binary_stop_i5[6] -attr @rip O[6] -attr @name binary_stop_i5[6] -pin t2b_inst|binary_stop_i4_i I1[6] -pin t2b_inst|binary_stop_i5_i__0 O[6]
load net t2b_inst|binary_stop_i9_i_n_2 -attr @rip O[4] -attr @name binary_stop_i9_i_n_2 -pin t2b_inst|binary_stop_i8_i I0[4] -pin t2b_inst|binary_stop_i9_i O[4]
load net t2b_inst|binary_start_i51[3] -attr @rip O[3] -attr @name binary_start_i51[3] -pin t2b_inst|binary_start_i50_i I0[3] -pin t2b_inst|binary_start_i51_i O[3]
load net t2b_inst|binary_start_i38[3] -attr @rip O[3] -attr @name binary_start_i38[3] -pin t2b_inst|binary_start_i37_i I0[3] -pin t2b_inst|binary_start_i38_i O[3]
load net t2b_inst|binary_stop_i57[3] -attr @rip O[3] -attr @name binary_stop_i57[3] -pin t2b_inst|binary_stop_i56_i I1[3] -pin t2b_inst|binary_stop_i57_i__0 O[3]
load net t2b_inst|binary_stop_i9_i_n_3 -attr @rip O[3] -attr @name binary_stop_i9_i_n_3 -pin t2b_inst|binary_stop_i8_i I0[3] -pin t2b_inst|binary_stop_i9_i O[3]
load net t2b_inst|binary_stop_i9_i_n_4 -attr @rip O[2] -attr @name binary_stop_i9_i_n_4 -pin t2b_inst|binary_stop_i8_i I0[2] -pin t2b_inst|binary_stop_i9_i O[2]
load net t2b_inst|binary_stop_i690_in[6] -attr @rip O[6] -attr @name binary_stop_i690_in[6] -pin t2b_inst|binary_stop_i68_i I0[6] -pin t2b_inst|binary_stop_i69_i O[6]
load net t2b_inst|binary_stop_i9_i_n_5 -attr @rip O[1] -attr @name binary_stop_i9_i_n_5 -pin t2b_inst|binary_stop_i8_i I0[1] -pin t2b_inst|binary_stop_i9_i O[1]
load net t2b_inst|binary_stop_i9_i_n_6 -attr @rip O[0] -attr @name binary_stop_i9_i_n_6 -pin t2b_inst|binary_stop_i8_i I0[0] -pin t2b_inst|binary_stop_i9_i O[0]
load net t2b_inst|binary_start_i14[5] -attr @rip O[5] -attr @name binary_start_i14[5] -pin t2b_inst|binary_start_i13_i I0[5] -pin t2b_inst|binary_start_i14_i O[5]
load net t2b_inst|binary_start_i20[3] -attr @rip O[3] -attr @name binary_start_i20[3] -pin t2b_inst|binary_start_i19_i I0[3] -pin t2b_inst|binary_start_i20_i O[3]
load net t2b_inst|binary_start_i42[4] -attr @rip O[4] -attr @name binary_start_i42[4] -pin t2b_inst|binary_start_i41_i I0[4] -pin t2b_inst|binary_start_i42_i O[4]
load net t2b_inst|binary_stop_i69[0] -attr @rip O[0] -attr @name binary_stop_i69[0] -pin t2b_inst|binary_stop_i68_i I1[0] -pin t2b_inst|binary_stop_i69_i__0 O[0]
load net t2b_inst|binary_start_i55[4] -attr @rip O[4] -attr @name binary_start_i55[4] -pin t2b_inst|binary_start_i54_i I0[4] -pin t2b_inst|binary_start_i55_i O[4]
load net t2b_inst|binary_stop_i16[1] -attr @rip O[1] -attr @name binary_stop_i16[1] -pin t2b_inst|binary_stop_i15_i I1[1] -pin t2b_inst|binary_stop_i16_i__0 O[1]
load net t2b_inst|thermometer_start_i[1] -attr @rip thermometer_start_i[1] -attr @name thermometer_start_i[1] -hierPin t2b_inst thermometer_start_i[1] -pin t2b_inst|binary_start_i68_i I1
load net t2b_inst|binary_start_i57[2] -attr @rip O[2] -attr @name binary_start_i57[2] -pin t2b_inst|binary_start_i56_i I0[2] -pin t2b_inst|binary_start_i57_i O[2]
load net tdl_thermometer_start_val_w[45] -attr @rip thermometer_start_val_o[45] -pin t2b_inst thermometer_start_i[45] -pin tdl_inst thermometer_start_val_o[45]
load net t2b_inst|binary_stop_i37[5] -attr @rip O[5] -attr @name binary_stop_i37[5] -pin t2b_inst|binary_stop_i36_i I1[5] -pin t2b_inst|binary_stop_i37_i__0 O[5]
load net t2b_inst|binary_stop_i53_i_n_0 -attr @rip O[6] -attr @name binary_stop_i53_i_n_0 -pin t2b_inst|binary_stop_i52_i I0[6] -pin t2b_inst|binary_stop_i53_i O[6]
load net t2b_inst|thermometer_start_i[29] -attr @rip thermometer_start_i[29] -attr @name thermometer_start_i[29] -hierPin t2b_inst thermometer_start_i[29] -pin t2b_inst|binary_start_i40_i I1
load net t2b_inst|thermometer_start_i[47] -attr @rip thermometer_start_i[47] -attr @name thermometer_start_i[47] -hierPin t2b_inst thermometer_start_i[47] -pin t2b_inst|binary_start_i22_i I1
load net t2b_inst|binary_stop_i13[5] -attr @rip O[5] -attr @name binary_stop_i13[5] -pin t2b_inst|binary_stop_i12_i I1[5] -pin t2b_inst|binary_stop_i13_i__0 O[5]
load net t2b_inst|binary_start_i10[6] -attr @rip O[6] -attr @name binary_start_i10[6] -pin t2b_inst|binary_start_i10_i O[6] -pin t2b_inst|binary_start_i9_i I0[6]
load net t2b_inst|binary_stop_i53_i_n_1 -attr @rip O[5] -attr @name binary_stop_i53_i_n_1 -pin t2b_inst|binary_stop_i52_i I0[5] -pin t2b_inst|binary_stop_i53_i O[5]
load net tdl_thermometer_stop_val_w[57] -attr @rip thermometer_stop_val_o[57] -pin t2b_inst thermometer_stop_i[57] -pin tdl_inst thermometer_stop_val_o[57]
load net t2b_inst|binary_stop_i53_i_n_2 -attr @rip O[4] -attr @name binary_stop_i53_i_n_2 -pin t2b_inst|binary_stop_i52_i I0[4] -pin t2b_inst|binary_stop_i53_i O[4]
load net t2b_inst|binary_start_i60[2] -attr @rip O[2] -attr @name binary_start_i60[2] -pin t2b_inst|binary_start_i59_i I0[2] -pin t2b_inst|binary_start_i60_i O[2]
load net t2b_inst|binary_stop_i4[3] -attr @rip O[3] -attr @name binary_stop_i4[3] -pin t2b_inst|binary_stop_i3_i I1[3] -pin t2b_inst|binary_stop_i4_i__0 O[3]
load net t2b_inst|binary_stop_i53_i_n_3 -attr @rip O[3] -attr @name binary_stop_i53_i_n_3 -pin t2b_inst|binary_stop_i52_i I0[3] -pin t2b_inst|binary_stop_i53_i O[3]
load net t2b_inst|thermometer_start_i[66] -attr @rip thermometer_start_i[66] -attr @name thermometer_start_i[66] -hierPin t2b_inst thermometer_start_i[66] -pin t2b_inst|binary_start_i3_i I1
load net tdl_thermometer_stop_val_w[19] -attr @rip thermometer_stop_val_o[19] -pin t2b_inst thermometer_stop_i[19] -pin tdl_inst thermometer_stop_val_o[19]
load net t2b_inst|binary_stop_i53_i_n_4 -attr @rip O[2] -attr @name binary_stop_i53_i_n_4 -pin t2b_inst|binary_stop_i52_i I0[2] -pin t2b_inst|binary_stop_i53_i O[2]
load net t2b_inst|binary_stop_i62[1] -attr @rip O[1] -attr @name binary_stop_i62[1] -pin t2b_inst|binary_stop_i61_i I1[1] -pin t2b_inst|binary_stop_i62_i__0 O[1]
load net t2b_inst|binary_stop_i43[1] -attr @rip O[1] -attr @name binary_stop_i43[1] -pin t2b_inst|binary_stop_i42_i I1[1] -pin t2b_inst|binary_stop_i43_i__0 O[1]
load net t2b_inst|binary_stop_i53_i_n_5 -attr @rip O[1] -attr @name binary_stop_i53_i_n_5 -pin t2b_inst|binary_stop_i52_i I0[1] -pin t2b_inst|binary_stop_i53_i O[1]
load net fine_stop_w[3] -attr @rip binary_stop_i[3] -pin merge_inst fine_stop_i[3] -pin t2b_inst binary_stop_i[3]
load net t2b_inst|binary_stop_i27_i_n_0 -attr @rip O[6] -attr @name binary_stop_i27_i_n_0 -pin t2b_inst|binary_stop_i26_i I0[6] -pin t2b_inst|binary_stop_i27_i O[6]
load net t2b_inst|binary_stop_i53_i_n_6 -attr @rip O[0] -attr @name binary_stop_i53_i_n_6 -pin t2b_inst|binary_stop_i52_i I0[0] -pin t2b_inst|binary_stop_i53_i O[0]
load net t2b_inst|binary_stop_i5[5] -attr @rip O[5] -attr @name binary_stop_i5[5] -pin t2b_inst|binary_stop_i4_i I1[5] -pin t2b_inst|binary_stop_i5_i__0 O[5]
load net t2b_inst|binary_start_i51[2] -attr @rip O[2] -attr @name binary_start_i51[2] -pin t2b_inst|binary_start_i50_i I0[2] -pin t2b_inst|binary_start_i51_i O[2]
load net t2b_inst|binary_stop_i27_i_n_1 -attr @rip O[5] -attr @name binary_stop_i27_i_n_1 -pin t2b_inst|binary_stop_i26_i I0[5] -pin t2b_inst|binary_stop_i27_i O[5]
load net t2b_inst|binary_stop_i27_i_n_2 -attr @rip O[4] -attr @name binary_stop_i27_i_n_2 -pin t2b_inst|binary_stop_i26_i I0[4] -pin t2b_inst|binary_stop_i27_i O[4]
load net t2b_inst|binary_start_i38[4] -attr @rip O[4] -attr @name binary_start_i38[4] -pin t2b_inst|binary_start_i37_i I0[4] -pin t2b_inst|binary_start_i38_i O[4]
load net tdl_thermometer_start_val_w[36] -attr @rip thermometer_start_val_o[36] -pin t2b_inst thermometer_start_i[36] -pin tdl_inst thermometer_start_val_o[36]
load net t2b_inst|binary_stop_i27_i_n_3 -attr @rip O[3] -attr @name binary_stop_i27_i_n_3 -pin t2b_inst|binary_stop_i26_i I0[3] -pin t2b_inst|binary_stop_i27_i O[3]
load net t2b_inst|binary_stop_i57[4] -attr @rip O[4] -attr @name binary_stop_i57[4] -pin t2b_inst|binary_stop_i56_i I1[4] -pin t2b_inst|binary_stop_i57_i__0 O[4]
load net t2b_inst|binary_stop_i690_in[5] -attr @rip O[5] -attr @name binary_stop_i690_in[5] -pin t2b_inst|binary_stop_i68_i I0[5] -pin t2b_inst|binary_stop_i69_i O[5]
load net t2b_inst|binary_stop_i27_i_n_4 -attr @rip O[2] -attr @name binary_stop_i27_i_n_4 -pin t2b_inst|binary_stop_i26_i I0[2] -pin t2b_inst|binary_stop_i27_i O[2]
load net t2b_inst|binary_stop_i44[6] -attr @rip O[6] -attr @name binary_stop_i44[6] -pin t2b_inst|binary_stop_i43_i I1[6] -pin t2b_inst|binary_stop_i44_i__0 O[6]
load net t2b_inst|binary_stop_i27_i_n_5 -attr @rip O[1] -attr @name binary_stop_i27_i_n_5 -pin t2b_inst|binary_stop_i26_i I0[1] -pin t2b_inst|binary_stop_i27_i O[1]
load net t2b_inst|binary_stop_i55_i_n_0 -attr @rip O[6] -attr @name binary_stop_i55_i_n_0 -pin t2b_inst|binary_stop_i54_i I0[6] -pin t2b_inst|binary_stop_i55_i O[6]
load net t2b_inst|thermometer_start_i[58] -attr @rip thermometer_start_i[58] -attr @name thermometer_start_i[58] -hierPin t2b_inst thermometer_start_i[58] -pin t2b_inst|binary_start_i11_i I1
load net t2b_inst|binary_stop_i27_i_n_6 -attr @rip O[0] -attr @name binary_stop_i27_i_n_6 -pin t2b_inst|binary_stop_i26_i I0[0] -pin t2b_inst|binary_stop_i27_i O[0]
load net t2b_inst|binary_stop_i55_i_n_1 -attr @rip O[5] -attr @name binary_stop_i55_i_n_1 -pin t2b_inst|binary_stop_i54_i I0[5] -pin t2b_inst|binary_stop_i55_i O[5]
load net t2b_inst|binary_start_i43[0] -attr @rip O[0] -attr @name binary_start_i43[0] -pin t2b_inst|binary_start_i42_i I0[0] -pin t2b_inst|binary_start_i43_i O[0]
load net t2b_inst|binary_start_i14[6] -attr @rip O[6] -attr @name binary_start_i14[6] -pin t2b_inst|binary_start_i13_i I0[6] -pin t2b_inst|binary_start_i14_i O[6]
load net t2b_inst|binary_stop_i37[2] -attr @rip O[2] -attr @name binary_stop_i37[2] -pin t2b_inst|binary_stop_i36_i I1[2] -pin t2b_inst|binary_stop_i37_i__0 O[2]
load net t2b_inst|binary_stop_i55_i_n_2 -attr @rip O[4] -attr @name binary_stop_i55_i_n_2 -pin t2b_inst|binary_stop_i54_i I0[4] -pin t2b_inst|binary_stop_i55_i O[4]
load net t2b_inst|binary_start_i44[0] -attr @rip O[0] -attr @name binary_start_i44[0] -pin t2b_inst|binary_start_i43_i I0[0] -pin t2b_inst|binary_start_i44_i O[0]
load net t2b_inst|binary_start_i20[4] -attr @rip O[4] -attr @name binary_start_i20[4] -pin t2b_inst|binary_start_i19_i I0[4] -pin t2b_inst|binary_start_i20_i O[4]
load net t2b_inst|binary_stop_i55_i_n_3 -attr @rip O[3] -attr @name binary_stop_i55_i_n_3 -pin t2b_inst|binary_stop_i54_i I0[3] -pin t2b_inst|binary_stop_i55_i O[3]
load net t2b_inst|binary_start_i55[5] -attr @rip O[5] -attr @name binary_start_i55[5] -pin t2b_inst|binary_start_i54_i I0[5] -pin t2b_inst|binary_start_i55_i O[5]
load net t2b_inst|binary_stop_i31_i_n_0 -attr @rip O[6] -attr @name binary_stop_i31_i_n_0 -pin t2b_inst|binary_stop_i30_i I0[6] -pin t2b_inst|binary_stop_i31_i O[6]
load net t2b_inst|binary_stop_i55_i_n_4 -attr @rip O[2] -attr @name binary_stop_i55_i_n_4 -pin t2b_inst|binary_stop_i54_i I0[2] -pin t2b_inst|binary_stop_i55_i O[2]
load net t2b_inst|binary_stop_i16[2] -attr @rip O[2] -attr @name binary_stop_i16[2] -pin t2b_inst|binary_stop_i15_i I1[2] -pin t2b_inst|binary_stop_i16_i__0 O[2]
load net t2b_inst|binary_start_i10[5] -attr @rip O[5] -attr @name binary_start_i10[5] -pin t2b_inst|binary_start_i10_i O[5] -pin t2b_inst|binary_start_i9_i I0[5]
load net t2b_inst|binary_stop_i31_i_n_1 -attr @rip O[5] -attr @name binary_stop_i31_i_n_1 -pin t2b_inst|binary_stop_i30_i I0[5] -pin t2b_inst|binary_stop_i31_i O[5]
load net t2b_inst|binary_stop_i55_i_n_5 -attr @rip O[1] -attr @name binary_stop_i55_i_n_5 -pin t2b_inst|binary_stop_i54_i I0[1] -pin t2b_inst|binary_stop_i55_i O[1]
load net t2b_inst|thermometer_start_i[2] -attr @rip thermometer_start_i[2] -attr @name thermometer_start_i[2] -hierPin t2b_inst thermometer_start_i[2] -pin t2b_inst|binary_start_i67_i I1
load net t2b_inst|thermometer_stop_i[20] -attr @rip thermometer_stop_i[20] -attr @name thermometer_stop_i[20] -hierPin t2b_inst thermometer_stop_i[20] -pin t2b_inst|binary_stop_i50_i__0 I0
load net t2b_inst|binary_start_i57[3] -attr @rip O[3] -attr @name binary_start_i57[3] -pin t2b_inst|binary_start_i56_i I0[3] -pin t2b_inst|binary_start_i57_i O[3]
load net t2b_inst|binary_stop_i31_i_n_2 -attr @rip O[4] -attr @name binary_stop_i31_i_n_2 -pin t2b_inst|binary_stop_i30_i I0[4] -pin t2b_inst|binary_stop_i31_i O[4]
load net t2b_inst|binary_stop_i55_i_n_6 -attr @rip O[0] -attr @name binary_stop_i55_i_n_6 -pin t2b_inst|binary_stop_i54_i I0[0] -pin t2b_inst|binary_stop_i55_i O[0]
load net fine_start_w[4] -attr @rip binary_start_i[4] -pin merge_inst fine_start_i[4] -pin t2b_inst binary_start_i[4]
load net t2b_inst|binary_stop_i31[0] -attr @rip O[0] -attr @name binary_stop_i31[0] -pin t2b_inst|binary_stop_i30_i I1[0] -pin t2b_inst|binary_stop_i31_i__0 O[0]
load net t2b_inst|binary_stop_i31_i_n_3 -attr @rip O[3] -attr @name binary_stop_i31_i_n_3 -pin t2b_inst|binary_stop_i30_i I0[3] -pin t2b_inst|binary_stop_i31_i O[3]
load net t2b_inst|binary_stop_i4[2] -attr @rip O[2] -attr @name binary_stop_i4[2] -pin t2b_inst|binary_stop_i3_i I1[2] -pin t2b_inst|binary_stop_i4_i__0 O[2]
load net t2b_inst|thermometer_start_i[4] -attr @rip thermometer_start_i[4] -attr @name thermometer_start_i[4] -hierPin t2b_inst thermometer_start_i[4] -pin t2b_inst|binary_start_i65_i I1
load net t2b_inst|thermometer_start_i[65] -attr @rip thermometer_start_i[65] -attr @name thermometer_start_i[65] -hierPin t2b_inst thermometer_start_i[65] -pin t2b_inst|binary_start_i4_i I1
load net t2b_inst|binary_stop_i31_i_n_4 -attr @rip O[2] -attr @name binary_stop_i31_i_n_4 -pin t2b_inst|binary_stop_i30_i I0[2] -pin t2b_inst|binary_stop_i31_i O[2]
load net t2b_inst|binary_stop_i62[0] -attr @rip O[0] -attr @name binary_stop_i62[0] -pin t2b_inst|binary_stop_i61_i I1[0] -pin t2b_inst|binary_stop_i62_i__0 O[0]
load net t2b_inst|binary_start_i60[3] -attr @rip O[3] -attr @name binary_start_i60[3] -pin t2b_inst|binary_start_i59_i I0[3] -pin t2b_inst|binary_start_i60_i O[3]
load net t2b_inst|binary_stop_i31_i_n_5 -attr @rip O[1] -attr @name binary_stop_i31_i_n_5 -pin t2b_inst|binary_stop_i30_i I0[1] -pin t2b_inst|binary_stop_i31_i O[1]
load net t2b_inst|binary_stop_i31_i_n_6 -attr @rip O[0] -attr @name binary_stop_i31_i_n_6 -pin t2b_inst|binary_stop_i30_i I0[0] -pin t2b_inst|binary_stop_i31_i O[0]
load net t2b_inst|binary_start_i60[5] -attr @rip O[5] -attr @name binary_start_i60[5] -pin t2b_inst|binary_start_i59_i I0[5] -pin t2b_inst|binary_start_i60_i O[5]
load net t2b_inst|binary_start_i3[5] -attr @rip O[5] -attr @name binary_start_i3[5] -pin t2b_inst|binary_start_i2_i I0[5] -pin t2b_inst|binary_start_i3_i O[5]
load net t2b_inst|binary_start_i51[1] -attr @rip O[1] -attr @name binary_start_i51[1] -pin t2b_inst|binary_start_i50_i I0[1] -pin t2b_inst|binary_start_i51_i O[1]
load net t2b_inst|binary_stop_i69[3] -attr @rip O[3] -attr @name binary_stop_i69[3] -pin t2b_inst|binary_stop_i68_i I1[3] -pin t2b_inst|binary_stop_i69_i__0 O[3]
load net fine_stop_w[4] -attr @rip binary_stop_i[4] -pin merge_inst fine_stop_i[4] -pin t2b_inst binary_stop_i[4]
load net t2b_inst|binary_stop_i49[5] -attr @rip O[5] -attr @name binary_stop_i49[5] -pin t2b_inst|binary_stop_i48_i I1[5] -pin t2b_inst|binary_stop_i49_i__0 O[5]
load net t2b_inst|binary_stop_i44[5] -attr @rip O[5] -attr @name binary_stop_i44[5] -pin t2b_inst|binary_stop_i43_i I1[5] -pin t2b_inst|binary_stop_i44_i__0 O[5]
load net t2b_inst|binary_start_i38[5] -attr @rip O[5] -attr @name binary_start_i38[5] -pin t2b_inst|binary_start_i37_i I0[5] -pin t2b_inst|binary_start_i38_i O[5]
load net t2b_inst|binary_stop_i19_i_n_0 -attr @rip O[6] -attr @name binary_stop_i19_i_n_0 -pin t2b_inst|binary_stop_i18_i I0[6] -pin t2b_inst|binary_stop_i19_i O[6]
load net tdl_thermometer_start_val_w[37] -attr @rip thermometer_start_val_o[37] -pin t2b_inst thermometer_start_i[37] -pin tdl_inst thermometer_start_val_o[37]
load net t2b_inst|binary_stop_i57[5] -attr @rip O[5] -attr @name binary_stop_i57[5] -pin t2b_inst|binary_stop_i56_i I1[5] -pin t2b_inst|binary_stop_i57_i__0 O[5]
load net t2b_inst|binary_stop_i9[6] -attr @rip O[6] -attr @name binary_stop_i9[6] -pin t2b_inst|binary_stop_i8_i I1[6] -pin t2b_inst|binary_stop_i9_i__0 O[6]
load net t2b_inst|binary_stop_i19_i_n_1 -attr @rip O[5] -attr @name binary_stop_i19_i_n_1 -pin t2b_inst|binary_stop_i18_i I0[5] -pin t2b_inst|binary_stop_i19_i O[5]
load net t2b_inst|binary_stop_i19_i_n_2 -attr @rip O[4] -attr @name binary_stop_i19_i_n_2 -pin t2b_inst|binary_stop_i18_i I0[4] -pin t2b_inst|binary_stop_i19_i O[4]
load net t2b_inst|thermometer_start_i[59] -attr @rip thermometer_start_i[59] -attr @name thermometer_start_i[59] -hierPin t2b_inst thermometer_start_i[59] -pin t2b_inst|binary_start_i10_i I1
load net t2b_inst|binary_stop_i19_i_n_3 -attr @rip O[3] -attr @name binary_stop_i19_i_n_3 -pin t2b_inst|binary_stop_i18_i I0[3] -pin t2b_inst|binary_stop_i19_i O[3]
load net t2b_inst|binary_stop_i19_i_n_4 -attr @rip O[2] -attr @name binary_stop_i19_i_n_4 -pin t2b_inst|binary_stop_i18_i I0[2] -pin t2b_inst|binary_stop_i19_i O[2]
load net t2b_inst|binary_start_i43[1] -attr @rip O[1] -attr @name binary_start_i43[1] -pin t2b_inst|binary_start_i42_i I0[1] -pin t2b_inst|binary_start_i43_i O[1]
load net t2b_inst|binary_stop_i37[3] -attr @rip O[3] -attr @name binary_stop_i37[3] -pin t2b_inst|binary_stop_i36_i I1[3] -pin t2b_inst|binary_stop_i37_i__0 O[3]
load net t2b_inst|binary_start_i20[5] -attr @rip O[5] -attr @name binary_start_i20[5] -pin t2b_inst|binary_start_i19_i I0[5] -pin t2b_inst|binary_start_i20_i O[5]
load net t2b_inst|binary_start_i42[6] -attr @rip O[6] -attr @name binary_start_i42[6] -pin t2b_inst|binary_start_i41_i I0[6] -pin t2b_inst|binary_start_i42_i O[6]
load net t2b_inst|binary_stop_i19_i_n_5 -attr @rip O[1] -attr @name binary_stop_i19_i_n_5 -pin t2b_inst|binary_stop_i18_i I0[1] -pin t2b_inst|binary_stop_i19_i O[1]
load net t2b_inst|binary_start_i10[4] -attr @rip O[4] -attr @name binary_start_i10[4] -pin t2b_inst|binary_start_i10_i O[4] -pin t2b_inst|binary_start_i9_i I0[4]
load net t2b_inst|binary_start_i44[1] -attr @rip O[1] -attr @name binary_start_i44[1] -pin t2b_inst|binary_start_i43_i I0[1] -pin t2b_inst|binary_start_i44_i O[1]
load net t2b_inst|binary_stop_i19_i_n_6 -attr @rip O[0] -attr @name binary_stop_i19_i_n_6 -pin t2b_inst|binary_stop_i18_i I0[0] -pin t2b_inst|binary_stop_i19_i O[0]
load net t2b_inst|binary_start_i55[6] -attr @rip O[6] -attr @name binary_start_i55[6] -pin t2b_inst|binary_start_i54_i I0[6] -pin t2b_inst|binary_start_i55_i O[6]
load net t2b_inst|thermometer_start_i[3] -attr @rip thermometer_start_i[3] -attr @name thermometer_start_i[3] -hierPin t2b_inst thermometer_start_i[3] -pin t2b_inst|binary_start_i66_i I1
load net tdl_thermometer_start_val_w[60] -attr @rip thermometer_start_val_o[60] -pin t2b_inst thermometer_start_i[60] -pin tdl_inst thermometer_start_val_o[60]
load net t2b_inst|binary_start_i57[4] -attr @rip O[4] -attr @name binary_start_i57[4] -pin t2b_inst|binary_start_i56_i I0[4] -pin t2b_inst|binary_start_i57_i O[4]
load net fine_start_w[5] -attr @rip binary_start_i[5] -pin merge_inst fine_start_i[5] -pin t2b_inst binary_start_i[5]
load net t2b_inst|binary_stop_i31[1] -attr @rip O[1] -attr @name binary_stop_i31[1] -pin t2b_inst|binary_stop_i30_i I1[1] -pin t2b_inst|binary_stop_i31_i__0 O[1]
load net t2b_inst|binary_stop_i43_i_n_0 -attr @rip O[6] -attr @name binary_stop_i43_i_n_0 -pin t2b_inst|binary_stop_i42_i I0[6] -pin t2b_inst|binary_stop_i43_i O[6]
load net t2b_inst|binary_start_i22[6] -attr @rip O[6] -attr @name binary_start_i22[6] -pin t2b_inst|binary_start_i21_i I0[6] -pin t2b_inst|binary_start_i22_i O[6]
load net t2b_inst|binary_stop_i43_i_n_1 -attr @rip O[5] -attr @name binary_stop_i43_i_n_1 -pin t2b_inst|binary_stop_i42_i I0[5] -pin t2b_inst|binary_stop_i43_i O[5]
load net t2b_inst|binary_start_i60[4] -attr @rip O[4] -attr @name binary_start_i60[4] -pin t2b_inst|binary_start_i59_i I0[4] -pin t2b_inst|binary_start_i60_i O[4]
load net t2b_inst|binary_start_i51[0] -attr @rip O[0] -attr @name binary_start_i51[0] -pin t2b_inst|binary_start_i50_i I0[0] -pin t2b_inst|binary_start_i51_i O[0]
load net t2b_inst|binary_stop_i43_i_n_2 -attr @rip O[4] -attr @name binary_stop_i43_i_n_2 -pin t2b_inst|binary_stop_i42_i I0[4] -pin t2b_inst|binary_stop_i43_i O[4]
load net t2b_inst|thermometer_start_i[68] -attr @rip thermometer_start_i[68] -attr @name thermometer_start_i[68] -hierPin t2b_inst thermometer_start_i[68] -pin t2b_inst|binary_start_i1_i I1
load net t2b_inst|binary_stop_i43_i_n_3 -attr @rip O[3] -attr @name binary_stop_i43_i_n_3 -pin t2b_inst|binary_stop_i42_i I0[3] -pin t2b_inst|binary_stop_i43_i O[3]
load net t2b_inst|binary_start_i3[6] -attr @rip O[6] -attr @name binary_start_i3[6] -pin t2b_inst|binary_start_i2_i I0[6] -pin t2b_inst|binary_start_i3_i O[6]
load net t2b_inst|binary_stop_i43_i_n_4 -attr @rip O[2] -attr @name binary_stop_i43_i_n_4 -pin t2b_inst|binary_stop_i42_i I0[2] -pin t2b_inst|binary_stop_i43_i O[2]
load net t2b_inst|binary_stop_i69[4] -attr @rip O[4] -attr @name binary_stop_i69[4] -pin t2b_inst|binary_stop_i68_i I1[4] -pin t2b_inst|binary_stop_i69_i__0 O[4]
load net fine_stop_w[5] -attr @rip binary_stop_i[5] -pin merge_inst fine_stop_i[5] -pin t2b_inst binary_stop_i[5]
load net wr_en_o -pin cnt_nrst_w_i I1 -pin merge_inst eom_o -pin synchronizer_inst eom_i -port wr_en_o
netloc wr_en_o 1 0 9 20 420 NJ 420 NJ 420 NJ 420 NJ 420 NJ 420 1670 340 NJ 340 2550
load net t2b_inst|binary_stop_i43_i_n_5 -attr @rip O[1] -attr @name binary_stop_i43_i_n_5 -pin t2b_inst|binary_stop_i42_i I0[1] -pin t2b_inst|binary_stop_i43_i O[1]
load net t2b_inst|binary_stop_i44[4] -attr @rip O[4] -attr @name binary_stop_i44[4] -pin t2b_inst|binary_stop_i43_i I1[4] -pin t2b_inst|binary_stop_i44_i__0 O[4]
load net t2b_inst|binary_stop_i43_i_n_6 -attr @rip O[0] -attr @name binary_stop_i43_i_n_6 -pin t2b_inst|binary_stop_i42_i I0[0] -pin t2b_inst|binary_stop_i43_i O[0]
load net t2b_inst|binary_stop_i49[6] -attr @rip O[6] -attr @name binary_stop_i49[6] -pin t2b_inst|binary_stop_i48_i I1[6] -pin t2b_inst|binary_stop_i49_i__0 O[6]
load net t2b_inst|binary_stop_i9[5] -attr @rip O[5] -attr @name binary_stop_i9[5] -pin t2b_inst|binary_stop_i8_i I1[5] -pin t2b_inst|binary_stop_i9_i__0 O[5]
load net t2b_inst|thermometer_start_i[56] -attr @rip thermometer_start_i[56] -attr @name thermometer_start_i[56] -hierPin t2b_inst thermometer_start_i[56] -pin t2b_inst|binary_start_i13_i I1
load net t2b_inst|binary_start_i38[6] -attr @rip O[6] -attr @name binary_start_i38[6] -pin t2b_inst|binary_start_i37_i I0[6] -pin t2b_inst|binary_start_i38_i O[6]
load net tdl_thermometer_start_val_w[38] -attr @rip thermometer_start_val_o[38] -pin t2b_inst thermometer_start_i[38] -pin tdl_inst thermometer_start_val_o[38]
load net t2b_inst|binary_stop_i37[0] -attr @rip O[0] -attr @name binary_stop_i37[0] -pin t2b_inst|binary_stop_i36_i I1[0] -pin t2b_inst|binary_stop_i37_i__0 O[0]
load net t2b_inst|binary_stop_i57[6] -attr @rip O[6] -attr @name binary_stop_i57[6] -pin t2b_inst|binary_stop_i56_i I1[6] -pin t2b_inst|binary_stop_i57_i__0 O[6]
load net tdl_thermometer_stop_val_w[60] -attr @rip thermometer_stop_val_o[60] -pin t2b_inst thermometer_stop_i[60] -pin tdl_inst thermometer_stop_val_o[60]
load net t2b_inst|binary_stop_i13[0] -attr @rip O[0] -attr @name binary_stop_i13[0] -pin t2b_inst|binary_stop_i12_i I1[0] -pin t2b_inst|binary_stop_i13_i__0 O[0]
load net t2b_inst|binary_stop_i16[0] -attr @rip O[0] -attr @name binary_stop_i16[0] -pin t2b_inst|binary_stop_i15_i I1[0] -pin t2b_inst|binary_stop_i16_i__0 O[0]
load net t2b_inst|binary_start_i10[3] -attr @rip O[3] -attr @name binary_start_i10[3] -pin t2b_inst|binary_start_i10_i O[3] -pin t2b_inst|binary_start_i9_i I0[3]
load net t2b_inst|binary_stop_i68[4] -attr @rip O[4] -attr @name binary_stop_i68[4] -pin t2b_inst|binary_stop_i67_i I1[4] -pin t2b_inst|binary_stop_i68_i__0 O[4]
load net t2b_inst|binary_start_i43[2] -attr @rip O[2] -attr @name binary_start_i43[2] -pin t2b_inst|binary_start_i42_i I0[2] -pin t2b_inst|binary_start_i43_i O[2]
load net t2b_inst|binary_start_i20[6] -attr @rip O[6] -attr @name binary_start_i20[6] -pin t2b_inst|binary_start_i19_i I0[6] -pin t2b_inst|binary_start_i20_i O[6]
load net t2b_inst|binary_stop_i1_i_n_0 -attr @rip O[6] -attr @name binary_stop_i1_i_n_0 -pin t2b_inst|binary_stop_i0_i I0[6] -pin t2b_inst|binary_stop_i1_i O[6]
load net fine_start_w[2] -attr @rip binary_start_i[2] -pin merge_inst fine_start_i[2] -pin t2b_inst binary_start_i[2]
load net t2b_inst|binary_stop_i1_i_n_1 -attr @rip O[5] -attr @name binary_stop_i1_i_n_1 -pin t2b_inst|binary_stop_i0_i I0[5] -pin t2b_inst|binary_stop_i1_i O[5]
load net t2b_inst|binary_start_i43[4] -attr @rip O[4] -attr @name binary_start_i43[4] -pin t2b_inst|binary_start_i42_i I0[4] -pin t2b_inst|binary_start_i43_i O[4]
load netBundle @t2b_inst|binary_stop_i55_i_n_0 7 t2b_inst|binary_stop_i55_i_n_0 t2b_inst|binary_stop_i55_i_n_1 t2b_inst|binary_stop_i55_i_n_2 t2b_inst|binary_stop_i55_i_n_3 t2b_inst|binary_stop_i55_i_n_4 t2b_inst|binary_stop_i55_i_n_5 t2b_inst|binary_stop_i55_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i55_i_n_0 1 15 1 N
load netBundle @t2b_inst|binary_stop_i22 7 t2b_inst|binary_stop_i22[6] t2b_inst|binary_stop_i22[5] t2b_inst|binary_stop_i22[4] t2b_inst|binary_stop_i22[3] t2b_inst|binary_stop_i22[2] t2b_inst|binary_stop_i22[1] t2b_inst|binary_stop_i22[0] -autobundled
netbloc @t2b_inst|binary_stop_i22 1 48 1 15290J
load netBundle @t2b_inst|binary_stop_i7 7 t2b_inst|binary_stop_i7[6] t2b_inst|binary_stop_i7[5] t2b_inst|binary_stop_i7[4] t2b_inst|binary_stop_i7[3] t2b_inst|binary_stop_i7[2] t2b_inst|binary_stop_i7[1] t2b_inst|binary_stop_i7[0] -autobundled
netbloc @t2b_inst|binary_stop_i7 1 63 1 19610J
load netBundle @t2b_inst|binary_stop_i23 7 t2b_inst|binary_stop_i23[6] t2b_inst|binary_stop_i23[5] t2b_inst|binary_stop_i23[4] t2b_inst|binary_stop_i23[3] t2b_inst|binary_stop_i23[2] t2b_inst|binary_stop_i23[1] t2b_inst|binary_stop_i23[0] -autobundled
netbloc @t2b_inst|binary_stop_i23 1 47 1 15000J
load netBundle @t2b_inst|binary_stop_i8 7 t2b_inst|binary_stop_i8[6] t2b_inst|binary_stop_i8[5] t2b_inst|binary_stop_i8[4] t2b_inst|binary_stop_i8[3] t2b_inst|binary_stop_i8[2] t2b_inst|binary_stop_i8[1] t2b_inst|binary_stop_i8[0] -autobundled
netbloc @t2b_inst|binary_stop_i8 1 62 1 19330J
load netBundle @t2b_inst|binary_stop_i24 7 t2b_inst|binary_stop_i24[6] t2b_inst|binary_stop_i24[5] t2b_inst|binary_stop_i24[4] t2b_inst|binary_stop_i24[3] t2b_inst|binary_stop_i24[2] t2b_inst|binary_stop_i24[1] t2b_inst|binary_stop_i24[0] -autobundled
netbloc @t2b_inst|binary_stop_i24 1 46 1 14710J
load netBundle @t2b_inst|binary_stop_i9 7 t2b_inst|binary_stop_i9[6] t2b_inst|binary_stop_i9[5] t2b_inst|binary_stop_i9[4] t2b_inst|binary_stop_i9[3] t2b_inst|binary_stop_i9[2] t2b_inst|binary_stop_i9[1] t2b_inst|binary_stop_i9[0] -autobundled
netbloc @t2b_inst|binary_stop_i9 1 61 1 19050J
load netBundle @tdl_thermometer_stop_val_w 70 tdl_thermometer_stop_val_w[69] tdl_thermometer_stop_val_w[68] tdl_thermometer_stop_val_w[67] tdl_thermometer_stop_val_w[66] tdl_thermometer_stop_val_w[65] tdl_thermometer_stop_val_w[64] tdl_thermometer_stop_val_w[63] tdl_thermometer_stop_val_w[62] tdl_thermometer_stop_val_w[61] tdl_thermometer_stop_val_w[60] tdl_thermometer_stop_val_w[59] tdl_thermometer_stop_val_w[58] tdl_thermometer_stop_val_w[57] tdl_thermometer_stop_val_w[56] tdl_thermometer_stop_val_w[55] tdl_thermometer_stop_val_w[54] tdl_thermometer_stop_val_w[53] tdl_thermometer_stop_val_w[52] tdl_thermometer_stop_val_w[51] tdl_thermometer_stop_val_w[50] tdl_thermometer_stop_val_w[49] tdl_thermometer_stop_val_w[48] tdl_thermometer_stop_val_w[47] tdl_thermometer_stop_val_w[46] tdl_thermometer_stop_val_w[45] tdl_thermometer_stop_val_w[44] tdl_thermometer_stop_val_w[43] tdl_thermometer_stop_val_w[42] tdl_thermometer_stop_val_w[41] tdl_thermometer_stop_val_w[40] tdl_thermometer_stop_val_w[39] tdl_thermometer_stop_val_w[38] tdl_thermometer_stop_val_w[37] tdl_thermometer_stop_val_w[36] tdl_thermometer_stop_val_w[35] tdl_thermometer_stop_val_w[34] tdl_thermometer_stop_val_w[33] tdl_thermometer_stop_val_w[32] tdl_thermometer_stop_val_w[31] tdl_thermometer_stop_val_w[30] tdl_thermometer_stop_val_w[29] tdl_thermometer_stop_val_w[28] tdl_thermometer_stop_val_w[27] tdl_thermometer_stop_val_w[26] tdl_thermometer_stop_val_w[25] tdl_thermometer_stop_val_w[24] tdl_thermometer_stop_val_w[23] tdl_thermometer_stop_val_w[22] tdl_thermometer_stop_val_w[21] tdl_thermometer_stop_val_w[20] tdl_thermometer_stop_val_w[19] tdl_thermometer_stop_val_w[18] tdl_thermometer_stop_val_w[17] tdl_thermometer_stop_val_w[16] tdl_thermometer_stop_val_w[15] tdl_thermometer_stop_val_w[14] tdl_thermometer_stop_val_w[13] tdl_thermometer_stop_val_w[12] tdl_thermometer_stop_val_w[11] tdl_thermometer_stop_val_w[10] tdl_thermometer_stop_val_w[9] tdl_thermometer_stop_val_w[8] tdl_thermometer_stop_val_w[7] tdl_thermometer_stop_val_w[6] tdl_thermometer_stop_val_w[5] tdl_thermometer_stop_val_w[4] tdl_thermometer_stop_val_w[3] tdl_thermometer_stop_val_w[2] tdl_thermometer_stop_val_w[1] tdl_thermometer_stop_val_w[0] -autobundled
netbloc @tdl_thermometer_stop_val_w 1 6 1 N
load netBundle @t2b_inst|binary_stop_i25 7 t2b_inst|binary_stop_i25[6] t2b_inst|binary_stop_i25[5] t2b_inst|binary_stop_i25[4] t2b_inst|binary_stop_i25[3] t2b_inst|binary_stop_i25[2] t2b_inst|binary_stop_i25[1] t2b_inst|binary_stop_i25[0] -autobundled
netbloc @t2b_inst|binary_stop_i25 1 45 1 14440J
load netBundle @t2b_inst|binary_stop_i16_i_n_0 7 t2b_inst|binary_stop_i16_i_n_0 t2b_inst|binary_stop_i16_i_n_1 t2b_inst|binary_stop_i16_i_n_2 t2b_inst|binary_stop_i16_i_n_3 t2b_inst|binary_stop_i16_i_n_4 t2b_inst|binary_stop_i16_i_n_5 t2b_inst|binary_stop_i16_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i16_i_n_0 1 54 1 17010
load netBundle @t2b_inst|binary_stop_i26 7 t2b_inst|binary_stop_i26[6] t2b_inst|binary_stop_i26[5] t2b_inst|binary_stop_i26[4] t2b_inst|binary_stop_i26[3] t2b_inst|binary_stop_i26[2] t2b_inst|binary_stop_i26[1] t2b_inst|binary_stop_i26[0] -autobundled
netbloc @t2b_inst|binary_stop_i26 1 44 1 14150J
load netBundle @t2b_inst|binary_start_i40 7 t2b_inst|binary_start_i40[6] t2b_inst|binary_start_i40[5] t2b_inst|binary_start_i40[4] t2b_inst|binary_start_i40[3] t2b_inst|binary_start_i40[2] t2b_inst|binary_start_i40[1] t2b_inst|binary_start_i40[0] -autobundled
netbloc @t2b_inst|binary_start_i40 1 30 1 10230
load netBundle @t2b_inst|binary_start_i41 7 t2b_inst|binary_start_i41[6] t2b_inst|binary_start_i41[5] t2b_inst|binary_start_i41[4] t2b_inst|binary_start_i41[3] t2b_inst|binary_start_i41[2] t2b_inst|binary_start_i41[1] t2b_inst|binary_start_i41[0] -autobundled
netbloc @t2b_inst|binary_start_i41 1 29 1 9960
load netBundle @t2b_inst|binary_stop_i27 7 t2b_inst|binary_stop_i27[6] t2b_inst|binary_stop_i27[5] t2b_inst|binary_stop_i27[4] t2b_inst|binary_stop_i27[3] t2b_inst|binary_stop_i27[2] t2b_inst|binary_stop_i27[1] t2b_inst|binary_stop_i27[0] -autobundled
netbloc @t2b_inst|binary_stop_i27 1 43 1 13880J
load netBundle @t2b_inst|binary_start_i42 7 t2b_inst|binary_start_i42[6] t2b_inst|binary_start_i42[5] t2b_inst|binary_start_i42[4] t2b_inst|binary_start_i42[3] t2b_inst|binary_start_i42[2] t2b_inst|binary_start_i42[1] t2b_inst|binary_start_i42[0] -autobundled
netbloc @t2b_inst|binary_start_i42 1 28 1 9690
load netBundle @t2b_inst|binary_stop_i28 7 t2b_inst|binary_stop_i28[6] t2b_inst|binary_stop_i28[5] t2b_inst|binary_stop_i28[4] t2b_inst|binary_stop_i28[3] t2b_inst|binary_stop_i28[2] t2b_inst|binary_stop_i28[1] t2b_inst|binary_stop_i28[0] -autobundled
netbloc @t2b_inst|binary_stop_i28 1 42 1 13590J
load netBundle @t2b_inst|binary_stop_i29 7 t2b_inst|binary_stop_i29[6] t2b_inst|binary_stop_i29[5] t2b_inst|binary_stop_i29[4] t2b_inst|binary_stop_i29[3] t2b_inst|binary_stop_i29[2] t2b_inst|binary_stop_i29[1] t2b_inst|binary_stop_i29[0] -autobundled
netbloc @t2b_inst|binary_stop_i29 1 41 1 13320J
load netBundle @t2b_inst|binary_start_i43 7 t2b_inst|binary_start_i43[6] t2b_inst|binary_start_i43[5] t2b_inst|binary_start_i43[4] t2b_inst|binary_start_i43[3] t2b_inst|binary_start_i43[2] t2b_inst|binary_start_i43[1] t2b_inst|binary_start_i43[0] -autobundled
netbloc @t2b_inst|binary_start_i43 1 27 1 9400
load netBundle @t2b_inst|binary_stop_i45_i_n_0 7 t2b_inst|binary_stop_i45_i_n_0 t2b_inst|binary_stop_i45_i_n_1 t2b_inst|binary_stop_i45_i_n_2 t2b_inst|binary_stop_i45_i_n_3 t2b_inst|binary_stop_i45_i_n_4 t2b_inst|binary_stop_i45_i_n_5 t2b_inst|binary_stop_i45_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i45_i_n_0 1 25 1 N
load netBundle @t2b_inst|binary_start_i44 7 t2b_inst|binary_start_i44[6] t2b_inst|binary_start_i44[5] t2b_inst|binary_start_i44[4] t2b_inst|binary_start_i44[3] t2b_inst|binary_start_i44[2] t2b_inst|binary_start_i44[1] t2b_inst|binary_start_i44[0] -autobundled
netbloc @t2b_inst|binary_start_i44 1 26 1 9130
load netBundle @t2b_inst|binary_start_i45 7 t2b_inst|binary_start_i45[6] t2b_inst|binary_start_i45[5] t2b_inst|binary_start_i45[4] t2b_inst|binary_start_i45[3] t2b_inst|binary_start_i45[2] t2b_inst|binary_start_i45[1] t2b_inst|binary_start_i45[0] -autobundled
netbloc @t2b_inst|binary_start_i45 1 25 1 8860
load netBundle @t2b_inst|binary_start_i46 7 t2b_inst|binary_start_i46[6] t2b_inst|binary_start_i46[5] t2b_inst|binary_start_i46[4] t2b_inst|binary_start_i46[3] t2b_inst|binary_start_i46[2] t2b_inst|binary_start_i46[1] t2b_inst|binary_start_i46[0] -autobundled
netbloc @t2b_inst|binary_start_i46 1 24 1 8590
load netBundle @t2b_inst|binary_start_i47 7 t2b_inst|binary_start_i47[6] t2b_inst|binary_start_i47[5] t2b_inst|binary_start_i47[4] t2b_inst|binary_start_i47[3] t2b_inst|binary_start_i47[2] t2b_inst|binary_start_i47[1] t2b_inst|binary_start_i47[0] -autobundled
netbloc @t2b_inst|binary_start_i47 1 23 1 8300
load netBundle @t2b_inst|binary_start_i48 7 t2b_inst|binary_start_i48[6] t2b_inst|binary_start_i48[5] t2b_inst|binary_start_i48[4] t2b_inst|binary_start_i48[3] t2b_inst|binary_start_i48[2] t2b_inst|binary_start_i48[1] t2b_inst|binary_start_i48[0] -autobundled
netbloc @t2b_inst|binary_start_i48 1 22 1 8030
load netBundle @t2b_inst|binary_stop_i7_i_n_0 7 t2b_inst|binary_stop_i7_i_n_0 t2b_inst|binary_stop_i7_i_n_1 t2b_inst|binary_stop_i7_i_n_2 t2b_inst|binary_stop_i7_i_n_3 t2b_inst|binary_stop_i7_i_n_4 t2b_inst|binary_stop_i7_i_n_5 t2b_inst|binary_stop_i7_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i7_i_n_0 1 63 1 19590
load netBundle @t2b_inst|binary_start_i49 7 t2b_inst|binary_start_i49[6] t2b_inst|binary_start_i49[5] t2b_inst|binary_start_i49[4] t2b_inst|binary_start_i49[3] t2b_inst|binary_start_i49[2] t2b_inst|binary_start_i49[1] t2b_inst|binary_start_i49[0] -autobundled
netbloc @t2b_inst|binary_start_i49 1 21 1 7760
load netBundle @t2b_inst|binary_stop_i60 7 t2b_inst|binary_stop_i60[6] t2b_inst|binary_stop_i60[5] t2b_inst|binary_stop_i60[4] t2b_inst|binary_stop_i60[3] t2b_inst|binary_stop_i60[2] t2b_inst|binary_stop_i60[1] t2b_inst|binary_stop_i60[0] -autobundled
netbloc @t2b_inst|binary_stop_i60 1 10 1 4710J
load netBundle @t2b_inst|binary_stop_i10 7 t2b_inst|binary_stop_i10[6] t2b_inst|binary_stop_i10[5] t2b_inst|binary_stop_i10[4] t2b_inst|binary_stop_i10[3] t2b_inst|binary_stop_i10[2] t2b_inst|binary_stop_i10[1] t2b_inst|binary_stop_i10[0] -autobundled
netbloc @t2b_inst|binary_stop_i10 1 60 1 18770J
load netBundle @t2b_inst|binary_stop_i61 7 t2b_inst|binary_stop_i61[6] t2b_inst|binary_stop_i61[5] t2b_inst|binary_stop_i61[4] t2b_inst|binary_stop_i61[3] t2b_inst|binary_stop_i61[2] t2b_inst|binary_stop_i61[1] t2b_inst|binary_stop_i61[0] -autobundled
netbloc @t2b_inst|binary_stop_i61 1 9 1 4440J
load netBundle @t2b_inst|binary_stop_i11 7 t2b_inst|binary_stop_i11[6] t2b_inst|binary_stop_i11[5] t2b_inst|binary_stop_i11[4] t2b_inst|binary_stop_i11[3] t2b_inst|binary_stop_i11[2] t2b_inst|binary_stop_i11[1] t2b_inst|binary_stop_i11[0] -autobundled
netbloc @t2b_inst|binary_stop_i11 1 59 1 18480J
load netBundle @t2b_inst|binary_stop_i62 7 t2b_inst|binary_stop_i62[6] t2b_inst|binary_stop_i62[5] t2b_inst|binary_stop_i62[4] t2b_inst|binary_stop_i62[3] t2b_inst|binary_stop_i62[2] t2b_inst|binary_stop_i62[1] t2b_inst|binary_stop_i62[0] -autobundled
netbloc @t2b_inst|binary_stop_i62 1 8 1 4150J
load netBundle @t2b_inst|binary_stop_i12 7 t2b_inst|binary_stop_i12[6] t2b_inst|binary_stop_i12[5] t2b_inst|binary_stop_i12[4] t2b_inst|binary_stop_i12[3] t2b_inst|binary_stop_i12[2] t2b_inst|binary_stop_i12[1] t2b_inst|binary_stop_i12[0] -autobundled
netbloc @t2b_inst|binary_stop_i12 1 58 1 18190J
load netBundle @t2b_inst|binary_stop_i63 7 t2b_inst|binary_stop_i63[6] t2b_inst|binary_stop_i63[5] t2b_inst|binary_stop_i63[4] t2b_inst|binary_stop_i63[3] t2b_inst|binary_stop_i63[2] t2b_inst|binary_stop_i63[1] t2b_inst|binary_stop_i63[0] -autobundled
netbloc @t2b_inst|binary_stop_i63 1 7 1 3880J
load netBundle @t2b_inst|binary_stop_i13 7 t2b_inst|binary_stop_i13[6] t2b_inst|binary_stop_i13[5] t2b_inst|binary_stop_i13[4] t2b_inst|binary_stop_i13[3] t2b_inst|binary_stop_i13[2] t2b_inst|binary_stop_i13[1] t2b_inst|binary_stop_i13[0] -autobundled
netbloc @t2b_inst|binary_stop_i13 1 57 1 17900J
load netBundle @t2b_inst|binary_stop_i58_i_n_0 7 t2b_inst|binary_stop_i58_i_n_0 t2b_inst|binary_stop_i58_i_n_1 t2b_inst|binary_stop_i58_i_n_2 t2b_inst|binary_stop_i58_i_n_3 t2b_inst|binary_stop_i58_i_n_4 t2b_inst|binary_stop_i58_i_n_5 t2b_inst|binary_stop_i58_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i58_i_n_0 1 12 1 N
load netBundle @t2b_inst|binary_stop_i14 7 t2b_inst|binary_stop_i14[6] t2b_inst|binary_stop_i14[5] t2b_inst|binary_stop_i14[4] t2b_inst|binary_stop_i14[3] t2b_inst|binary_stop_i14[2] t2b_inst|binary_stop_i14[1] t2b_inst|binary_stop_i14[0] -autobundled
netbloc @t2b_inst|binary_stop_i14 1 56 1 17610J
load netBundle @t2b_inst|binary_start_i10 7 t2b_inst|binary_start_i10[6] t2b_inst|binary_start_i10[5] t2b_inst|binary_start_i10[4] t2b_inst|binary_start_i10[3] t2b_inst|binary_start_i10[2] t2b_inst|binary_start_i10[1] t2b_inst|binary_start_i10[0] -autobundled
netbloc @t2b_inst|binary_start_i10 1 60 1 18750
load netBundle @t2b_inst|binary_stop_i64 7 t2b_inst|binary_stop_i64[6] t2b_inst|binary_stop_i64[5] t2b_inst|binary_stop_i64[4] t2b_inst|binary_stop_i64[3] t2b_inst|binary_stop_i64[2] t2b_inst|binary_stop_i64[1] t2b_inst|binary_stop_i64[0] -autobundled
netbloc @t2b_inst|binary_stop_i64 1 6 1 3590J
load netBundle @t2b_inst|binary_stop_i65 7 t2b_inst|binary_stop_i65[6] t2b_inst|binary_stop_i65[5] t2b_inst|binary_stop_i65[4] t2b_inst|binary_stop_i65[3] t2b_inst|binary_stop_i65[2] t2b_inst|binary_stop_i65[1] t2b_inst|binary_stop_i65[0] -autobundled
netbloc @t2b_inst|binary_stop_i65 1 5 1 3320J
load netBundle @t2b_inst|binary_stop_i 7 t2b_inst|binary_stop_i[6] t2b_inst|binary_stop_i[5] t2b_inst|binary_stop_i[4] t2b_inst|binary_stop_i[3] t2b_inst|binary_stop_i[2] t2b_inst|binary_stop_i[1] t2b_inst|binary_stop_i[0] -autobundled
netbloc @t2b_inst|binary_stop_i 1 70 1 N
load netBundle @t2b_inst|binary_start_i11 7 t2b_inst|binary_start_i11[6] t2b_inst|binary_start_i11[5] t2b_inst|binary_start_i11[4] t2b_inst|binary_start_i11[3] t2b_inst|binary_start_i11[2] t2b_inst|binary_start_i11[1] t2b_inst|binary_start_i11[0] -autobundled
netbloc @t2b_inst|binary_start_i11 1 59 1 18460
load netBundle @t2b_inst|binary_stop_i15 7 t2b_inst|binary_stop_i15[6] t2b_inst|binary_stop_i15[5] t2b_inst|binary_stop_i15[4] t2b_inst|binary_stop_i15[3] t2b_inst|binary_stop_i15[2] t2b_inst|binary_stop_i15[1] t2b_inst|binary_stop_i15[0] -autobundled
netbloc @t2b_inst|binary_stop_i15 1 55 1 17320J
load netBundle @t2b_inst|binary_start_i12 7 t2b_inst|binary_start_i12[6] t2b_inst|binary_start_i12[5] t2b_inst|binary_start_i12[4] t2b_inst|binary_start_i12[3] t2b_inst|binary_start_i12[2] t2b_inst|binary_start_i12[1] t2b_inst|binary_start_i12[0] -autobundled
netbloc @t2b_inst|binary_start_i12 1 58 1 18170
load netBundle @t2b_inst|binary_stop_i66 7 t2b_inst|binary_stop_i66[6] t2b_inst|binary_stop_i66[5] t2b_inst|binary_stop_i66[4] t2b_inst|binary_stop_i66[3] t2b_inst|binary_stop_i66[2] t2b_inst|binary_stop_i66[1] t2b_inst|binary_stop_i66[0] -autobundled
netbloc @t2b_inst|binary_stop_i66 1 4 1 3030J
load netBundle @t2b_inst|binary_stop_i16 7 t2b_inst|binary_stop_i16[6] t2b_inst|binary_stop_i16[5] t2b_inst|binary_stop_i16[4] t2b_inst|binary_stop_i16[3] t2b_inst|binary_stop_i16[2] t2b_inst|binary_stop_i16[1] t2b_inst|binary_stop_i16[0] -autobundled
netbloc @t2b_inst|binary_stop_i16 1 54 1 17030J
load netBundle @t2b_inst|binary_start_i13 7 t2b_inst|binary_start_i13[6] t2b_inst|binary_start_i13[5] t2b_inst|binary_start_i13[4] t2b_inst|binary_start_i13[3] t2b_inst|binary_start_i13[2] t2b_inst|binary_start_i13[1] t2b_inst|binary_start_i13[0] -autobundled
netbloc @t2b_inst|binary_start_i13 1 57 1 17880
load netBundle @t2b_inst|binary_stop_i67 7 t2b_inst|binary_stop_i67[6] t2b_inst|binary_stop_i67[5] t2b_inst|binary_stop_i67[4] t2b_inst|binary_stop_i67[3] t2b_inst|binary_stop_i67[2] t2b_inst|binary_stop_i67[1] t2b_inst|binary_stop_i67[0] -autobundled
netbloc @t2b_inst|binary_stop_i67 1 3 1 2740J
load netBundle @t2b_inst|binary_stop_i17 7 t2b_inst|binary_stop_i17[6] t2b_inst|binary_stop_i17[5] t2b_inst|binary_stop_i17[4] t2b_inst|binary_stop_i17[3] t2b_inst|binary_stop_i17[2] t2b_inst|binary_stop_i17[1] t2b_inst|binary_stop_i17[0] -autobundled
netbloc @t2b_inst|binary_stop_i17 1 53 1 16740J
load netBundle @t2b_inst|binary_stop_i18 7 t2b_inst|binary_stop_i18[6] t2b_inst|binary_stop_i18[5] t2b_inst|binary_stop_i18[4] t2b_inst|binary_stop_i18[3] t2b_inst|binary_stop_i18[2] t2b_inst|binary_stop_i18[1] t2b_inst|binary_stop_i18[0] -autobundled
netbloc @t2b_inst|binary_stop_i18 1 52 1 16450J
load netBundle @t2b_inst|binary_stop_i3_i_n_0 7 t2b_inst|binary_stop_i3_i_n_0 t2b_inst|binary_stop_i3_i_n_1 t2b_inst|binary_stop_i3_i_n_2 t2b_inst|binary_stop_i3_i_n_3 t2b_inst|binary_stop_i3_i_n_4 t2b_inst|binary_stop_i3_i_n_5 t2b_inst|binary_stop_i3_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i3_i_n_0 1 67 1 20710
load netBundle @t2b_inst|binary_stop_i68 7 t2b_inst|binary_stop_i68[6] t2b_inst|binary_stop_i68[5] t2b_inst|binary_stop_i68[4] t2b_inst|binary_stop_i68[3] t2b_inst|binary_stop_i68[2] t2b_inst|binary_stop_i68[1] t2b_inst|binary_stop_i68[0] -autobundled
netbloc @t2b_inst|binary_stop_i68 1 2 1 2450J
load netBundle @t2b_inst|binary_stop_i20_i_n_0 7 t2b_inst|binary_stop_i20_i_n_0 t2b_inst|binary_stop_i20_i_n_1 t2b_inst|binary_stop_i20_i_n_2 t2b_inst|binary_stop_i20_i_n_3 t2b_inst|binary_stop_i20_i_n_4 t2b_inst|binary_stop_i20_i_n_5 t2b_inst|binary_stop_i20_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i20_i_n_0 1 50 1 15850
load netBundle @t2b_inst|binary_start_i14 7 t2b_inst|binary_start_i14[6] t2b_inst|binary_start_i14[5] t2b_inst|binary_start_i14[4] t2b_inst|binary_start_i14[3] t2b_inst|binary_start_i14[2] t2b_inst|binary_start_i14[1] t2b_inst|binary_start_i14[0] -autobundled
netbloc @t2b_inst|binary_start_i14 1 56 1 17590
load netBundle @t2b_inst|binary_start_i15 7 t2b_inst|binary_start_i15[6] t2b_inst|binary_start_i15[5] t2b_inst|binary_start_i15[4] t2b_inst|binary_start_i15[3] t2b_inst|binary_start_i15[2] t2b_inst|binary_start_i15[1] t2b_inst|binary_start_i15[0] -autobundled
netbloc @t2b_inst|binary_start_i15 1 55 1 17300
load netBundle @t2b_inst|binary_stop_i69 7 t2b_inst|binary_stop_i69[6] t2b_inst|binary_stop_i69[5] t2b_inst|binary_stop_i69[4] t2b_inst|binary_stop_i69[3] t2b_inst|binary_stop_i69[2] t2b_inst|binary_stop_i69[1] t2b_inst|binary_stop_i69[0] -autobundled
netbloc @t2b_inst|binary_stop_i69 1 1 1 2180
load netBundle @t2b_inst|binary_stop_i19 7 t2b_inst|binary_stop_i19[6] t2b_inst|binary_stop_i19[5] t2b_inst|binary_stop_i19[4] t2b_inst|binary_stop_i19[3] t2b_inst|binary_stop_i19[2] t2b_inst|binary_stop_i19[1] t2b_inst|binary_stop_i19[0] -autobundled
netbloc @t2b_inst|binary_stop_i19 1 51 1 16160J
load netBundle @t2b_inst|binary_stop_i40_i_n_0 7 t2b_inst|binary_stop_i40_i_n_0 t2b_inst|binary_stop_i40_i_n_1 t2b_inst|binary_stop_i40_i_n_2 t2b_inst|binary_stop_i40_i_n_3 t2b_inst|binary_stop_i40_i_n_4 t2b_inst|binary_stop_i40_i_n_5 t2b_inst|binary_stop_i40_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i40_i_n_0 1 30 1 N
load netBundle @t2b_inst|binary_stop_i47_i_n_0 7 t2b_inst|binary_stop_i47_i_n_0 t2b_inst|binary_stop_i47_i_n_1 t2b_inst|binary_stop_i47_i_n_2 t2b_inst|binary_stop_i47_i_n_3 t2b_inst|binary_stop_i47_i_n_4 t2b_inst|binary_stop_i47_i_n_5 t2b_inst|binary_stop_i47_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i47_i_n_0 1 23 1 8300
load netBundle @t2b_inst|binary_stop_i68_i_n_0 7 t2b_inst|binary_stop_i68_i_n_0 t2b_inst|binary_stop_i68_i_n_1 t2b_inst|binary_stop_i68_i_n_2 t2b_inst|binary_stop_i68_i_n_3 t2b_inst|binary_stop_i68_i_n_4 t2b_inst|binary_stop_i68_i_n_5 t2b_inst|binary_stop_i68_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i68_i_n_0 1 2 1 2430
load netBundle @t2b_inst|binary_start_i16 7 t2b_inst|binary_start_i16[6] t2b_inst|binary_start_i16[5] t2b_inst|binary_start_i16[4] t2b_inst|binary_start_i16[3] t2b_inst|binary_start_i16[2] t2b_inst|binary_start_i16[1] t2b_inst|binary_start_i16[0] -autobundled
netbloc @t2b_inst|binary_start_i16 1 54 1 17010
load netBundle @t2b_inst|binary_stop_i30_i_n_0 7 t2b_inst|binary_stop_i30_i_n_0 t2b_inst|binary_stop_i30_i_n_1 t2b_inst|binary_stop_i30_i_n_2 t2b_inst|binary_stop_i30_i_n_3 t2b_inst|binary_stop_i30_i_n_4 t2b_inst|binary_stop_i30_i_n_5 t2b_inst|binary_stop_i30_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i30_i_n_0 1 40 1 N
load netBundle @t2b_inst|binary_stop_i49_i_n_0 7 t2b_inst|binary_stop_i49_i_n_0 t2b_inst|binary_stop_i49_i_n_1 t2b_inst|binary_stop_i49_i_n_2 t2b_inst|binary_stop_i49_i_n_3 t2b_inst|binary_stop_i49_i_n_4 t2b_inst|binary_stop_i49_i_n_5 t2b_inst|binary_stop_i49_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i49_i_n_0 1 21 1 N
load netBundle @t2b_inst|binary_start_i17 7 t2b_inst|binary_start_i17[6] t2b_inst|binary_start_i17[5] t2b_inst|binary_start_i17[4] t2b_inst|binary_start_i17[3] t2b_inst|binary_start_i17[2] t2b_inst|binary_start_i17[1] t2b_inst|binary_start_i17[0] -autobundled
netbloc @t2b_inst|binary_start_i17 1 53 1 16720
load netBundle @t2b_inst|binary_start_i18 7 t2b_inst|binary_start_i18[6] t2b_inst|binary_start_i18[5] t2b_inst|binary_start_i18[4] t2b_inst|binary_start_i18[3] t2b_inst|binary_start_i18[2] t2b_inst|binary_start_i18[1] t2b_inst|binary_start_i18[0] -autobundled
netbloc @t2b_inst|binary_start_i18 1 52 1 16430
load netBundle @fine_stop_w 7 fine_stop_w[6] fine_stop_w[5] fine_stop_w[4] fine_stop_w[3] fine_stop_w[2] fine_stop_w[1] fine_stop_w[0] -autobundled
netbloc @fine_stop_w 1 7 1 N
load netBundle @t2b_inst|binary_start_i19 7 t2b_inst|binary_start_i19[6] t2b_inst|binary_start_i19[5] t2b_inst|binary_start_i19[4] t2b_inst|binary_start_i19[3] t2b_inst|binary_start_i19[2] t2b_inst|binary_start_i19[1] t2b_inst|binary_start_i19[0] -autobundled
netbloc @t2b_inst|binary_start_i19 1 51 1 16140
load netBundle @t2b_inst|binary_stop_i38_i_n_0 7 t2b_inst|binary_stop_i38_i_n_0 t2b_inst|binary_stop_i38_i_n_1 t2b_inst|binary_stop_i38_i_n_2 t2b_inst|binary_stop_i38_i_n_3 t2b_inst|binary_stop_i38_i_n_4 t2b_inst|binary_stop_i38_i_n_5 t2b_inst|binary_stop_i38_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i38_i_n_0 1 32 1 N
load netBundle @t2b_inst|binary_stop_i50 7 t2b_inst|binary_stop_i50[6] t2b_inst|binary_stop_i50[5] t2b_inst|binary_stop_i50[4] t2b_inst|binary_stop_i50[3] t2b_inst|binary_stop_i50[2] t2b_inst|binary_stop_i50[1] t2b_inst|binary_stop_i50[0] -autobundled
netbloc @t2b_inst|binary_stop_i50 1 20 1 7490J
load netBundle @t2b_inst|binary_stop_i51 7 t2b_inst|binary_stop_i51[6] t2b_inst|binary_stop_i51[5] t2b_inst|binary_stop_i51[4] t2b_inst|binary_stop_i51[3] t2b_inst|binary_stop_i51[2] t2b_inst|binary_stop_i51[1] t2b_inst|binary_stop_i51[0] -autobundled
netbloc @t2b_inst|binary_stop_i51 1 19 1 7220J
load netBundle @t2b_inst|binary_stop_i52 7 t2b_inst|binary_stop_i52[6] t2b_inst|binary_stop_i52[5] t2b_inst|binary_stop_i52[4] t2b_inst|binary_stop_i52[3] t2b_inst|binary_stop_i52[2] t2b_inst|binary_stop_i52[1] t2b_inst|binary_stop_i52[0] -autobundled
netbloc @t2b_inst|binary_stop_i52 1 18 1 6930J
load netBundle @t2b_inst|binary_stop_i1_i_n_0 7 t2b_inst|binary_stop_i1_i_n_0 t2b_inst|binary_stop_i1_i_n_1 t2b_inst|binary_stop_i1_i_n_2 t2b_inst|binary_stop_i1_i_n_3 t2b_inst|binary_stop_i1_i_n_4 t2b_inst|binary_stop_i1_i_n_5 t2b_inst|binary_stop_i1_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i1_i_n_0 1 69 1 21250
load netBundle @t2b_inst|binary_stop_i53 7 t2b_inst|binary_stop_i53[6] t2b_inst|binary_stop_i53[5] t2b_inst|binary_stop_i53[4] t2b_inst|binary_stop_i53[3] t2b_inst|binary_stop_i53[2] t2b_inst|binary_stop_i53[1] t2b_inst|binary_stop_i53[0] -autobundled
netbloc @t2b_inst|binary_stop_i53 1 17 1 6660J
load netBundle @t2b_inst|binary_stop_i54 7 t2b_inst|binary_stop_i54[6] t2b_inst|binary_stop_i54[5] t2b_inst|binary_stop_i54[4] t2b_inst|binary_stop_i54[3] t2b_inst|binary_stop_i54[2] t2b_inst|binary_stop_i54[1] t2b_inst|binary_stop_i54[0] -autobundled
netbloc @t2b_inst|binary_stop_i54 1 16 1 6390J
load netBundle @t2b_inst|binary_stop_i55 7 t2b_inst|binary_stop_i55[6] t2b_inst|binary_stop_i55[5] t2b_inst|binary_stop_i55[4] t2b_inst|binary_stop_i55[3] t2b_inst|binary_stop_i55[2] t2b_inst|binary_stop_i55[1] t2b_inst|binary_stop_i55[0] -autobundled
netbloc @t2b_inst|binary_stop_i55 1 15 1 6100J
load netBundle @t2b_inst|binary_start_i20 7 t2b_inst|binary_start_i20[6] t2b_inst|binary_start_i20[5] t2b_inst|binary_start_i20[4] t2b_inst|binary_start_i20[3] t2b_inst|binary_start_i20[2] t2b_inst|binary_start_i20[1] t2b_inst|binary_start_i20[0] -autobundled
netbloc @t2b_inst|binary_start_i20 1 50 1 15850
load netBundle @t2b_inst|binary_stop_i56 7 t2b_inst|binary_stop_i56[6] t2b_inst|binary_stop_i56[5] t2b_inst|binary_stop_i56[4] t2b_inst|binary_stop_i56[3] t2b_inst|binary_stop_i56[2] t2b_inst|binary_stop_i56[1] t2b_inst|binary_stop_i56[0] -autobundled
netbloc @t2b_inst|binary_stop_i56 1 14 1 5830J
load netBundle @t2b_inst|binary_stop_i57 7 t2b_inst|binary_stop_i57[6] t2b_inst|binary_stop_i57[5] t2b_inst|binary_stop_i57[4] t2b_inst|binary_stop_i57[3] t2b_inst|binary_stop_i57[2] t2b_inst|binary_stop_i57[1] t2b_inst|binary_stop_i57[0] -autobundled
netbloc @t2b_inst|binary_stop_i57 1 13 1 5560J
load netBundle @t2b_inst|binary_start_i21 7 t2b_inst|binary_start_i21[6] t2b_inst|binary_start_i21[5] t2b_inst|binary_start_i21[4] t2b_inst|binary_start_i21[3] t2b_inst|binary_start_i21[2] t2b_inst|binary_start_i21[1] t2b_inst|binary_start_i21[0] -autobundled
netbloc @t2b_inst|binary_start_i21 1 49 1 15560
load netBundle @t2b_inst|binary_stop_i58 7 t2b_inst|binary_stop_i58[6] t2b_inst|binary_stop_i58[5] t2b_inst|binary_stop_i58[4] t2b_inst|binary_stop_i58[3] t2b_inst|binary_stop_i58[2] t2b_inst|binary_stop_i58[1] t2b_inst|binary_stop_i58[0] -autobundled
netbloc @t2b_inst|binary_stop_i58 1 12 1 5270J
load netBundle @t2b_inst|binary_start_i22 7 t2b_inst|binary_start_i22[6] t2b_inst|binary_start_i22[5] t2b_inst|binary_start_i22[4] t2b_inst|binary_start_i22[3] t2b_inst|binary_start_i22[2] t2b_inst|binary_start_i22[1] t2b_inst|binary_start_i22[0] -autobundled
netbloc @t2b_inst|binary_start_i22 1 48 1 15270
load netBundle @t2b_inst|binary_stop_i59 7 t2b_inst|binary_stop_i59[6] t2b_inst|binary_stop_i59[5] t2b_inst|binary_stop_i59[4] t2b_inst|binary_stop_i59[3] t2b_inst|binary_stop_i59[2] t2b_inst|binary_stop_i59[1] t2b_inst|binary_stop_i59[0] -autobundled
netbloc @t2b_inst|binary_stop_i59 1 11 1 5000J
load netBundle @t2b_inst|binary_start_i23 7 t2b_inst|binary_start_i23[6] t2b_inst|binary_start_i23[5] t2b_inst|binary_start_i23[4] t2b_inst|binary_start_i23[3] t2b_inst|binary_start_i23[2] t2b_inst|binary_start_i23[1] t2b_inst|binary_start_i23[0] -autobundled
netbloc @t2b_inst|binary_start_i23 1 47 1 14980
load netBundle @t2b_inst|binary_start_i24 7 t2b_inst|binary_start_i24[6] t2b_inst|binary_start_i24[5] t2b_inst|binary_start_i24[4] t2b_inst|binary_start_i24[3] t2b_inst|binary_start_i24[2] t2b_inst|binary_start_i24[1] t2b_inst|binary_start_i24[0] -autobundled
netbloc @t2b_inst|binary_start_i24 1 46 1 14710
load netBundle @t2b_inst|binary_start_i25 7 t2b_inst|binary_start_i25[6] t2b_inst|binary_start_i25[5] t2b_inst|binary_start_i25[4] t2b_inst|binary_start_i25[3] t2b_inst|binary_start_i25[2] t2b_inst|binary_start_i25[1] t2b_inst|binary_start_i25[0] -autobundled
netbloc @t2b_inst|binary_start_i25 1 45 1 14420
load netBundle @t2b_inst|binary_stop_i13_i_n_0 7 t2b_inst|binary_stop_i13_i_n_0 t2b_inst|binary_stop_i13_i_n_1 t2b_inst|binary_stop_i13_i_n_2 t2b_inst|binary_stop_i13_i_n_3 t2b_inst|binary_stop_i13_i_n_4 t2b_inst|binary_stop_i13_i_n_5 t2b_inst|binary_stop_i13_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i13_i_n_0 1 57 1 17880
load netBundle @t2b_inst|binary_start_i26 7 t2b_inst|binary_start_i26[6] t2b_inst|binary_start_i26[5] t2b_inst|binary_start_i26[4] t2b_inst|binary_start_i26[3] t2b_inst|binary_start_i26[2] t2b_inst|binary_start_i26[1] t2b_inst|binary_start_i26[0] -autobundled
netbloc @t2b_inst|binary_start_i26 1 44 1 14150
load netBundle @t2b_inst|binary_start_i27 7 t2b_inst|binary_start_i27[6] t2b_inst|binary_start_i27[5] t2b_inst|binary_start_i27[4] t2b_inst|binary_start_i27[3] t2b_inst|binary_start_i27[2] t2b_inst|binary_start_i27[1] t2b_inst|binary_start_i27[0] -autobundled
netbloc @t2b_inst|binary_start_i27 1 43 1 13860
load netBundle @t2b_inst|binary_start_i28 7 t2b_inst|binary_start_i28[6] t2b_inst|binary_start_i28[5] t2b_inst|binary_start_i28[4] t2b_inst|binary_start_i28[3] t2b_inst|binary_start_i28[2] t2b_inst|binary_start_i28[1] t2b_inst|binary_start_i28[0] -autobundled
netbloc @t2b_inst|binary_start_i28 1 42 1 13590
load netBundle @sync_signals_w 2 sync_signals_w[1] sync_signals_w[0] -autobundled
netbloc @sync_signals_w 1 6 1 1650
load netBundle @t2b_inst|binary_start_i29 7 t2b_inst|binary_start_i29[6] t2b_inst|binary_start_i29[5] t2b_inst|binary_start_i29[4] t2b_inst|binary_start_i29[3] t2b_inst|binary_start_i29[2] t2b_inst|binary_start_i29[1] t2b_inst|binary_start_i29[0] -autobundled
netbloc @t2b_inst|binary_start_i29 1 41 1 13300
load netBundle @t2b_inst|binary_stop_i37_i_n_0 7 t2b_inst|binary_stop_i37_i_n_0 t2b_inst|binary_stop_i37_i_n_1 t2b_inst|binary_stop_i37_i_n_2 t2b_inst|binary_stop_i37_i_n_3 t2b_inst|binary_stop_i37_i_n_4 t2b_inst|binary_stop_i37_i_n_5 t2b_inst|binary_stop_i37_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i37_i_n_0 1 33 1 N
load netBundle @t2b_inst|binary_stop_i66_i_n_0 7 t2b_inst|binary_stop_i66_i_n_0 t2b_inst|binary_stop_i66_i_n_1 t2b_inst|binary_stop_i66_i_n_2 t2b_inst|binary_stop_i66_i_n_3 t2b_inst|binary_stop_i66_i_n_4 t2b_inst|binary_stop_i66_i_n_5 t2b_inst|binary_stop_i66_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i66_i_n_0 1 4 1 3010
load netBundle @t2b_inst|binary_stop_i67_i_n_0 7 t2b_inst|binary_stop_i67_i_n_0 t2b_inst|binary_stop_i67_i_n_1 t2b_inst|binary_stop_i67_i_n_2 t2b_inst|binary_stop_i67_i_n_3 t2b_inst|binary_stop_i67_i_n_4 t2b_inst|binary_stop_i67_i_n_5 t2b_inst|binary_stop_i67_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i67_i_n_0 1 3 1 2720
load netBundle @t2b_inst|binary_stop_i46_i_n_0 7 t2b_inst|binary_stop_i46_i_n_0 t2b_inst|binary_stop_i46_i_n_1 t2b_inst|binary_stop_i46_i_n_2 t2b_inst|binary_stop_i46_i_n_3 t2b_inst|binary_stop_i46_i_n_4 t2b_inst|binary_stop_i46_i_n_5 t2b_inst|binary_stop_i46_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i46_i_n_0 1 24 1 N
load netBundle @t2b_inst|binary_stop_i25_i_n_0 7 t2b_inst|binary_stop_i25_i_n_0 t2b_inst|binary_stop_i25_i_n_1 t2b_inst|binary_stop_i25_i_n_2 t2b_inst|binary_stop_i25_i_n_3 t2b_inst|binary_stop_i25_i_n_4 t2b_inst|binary_stop_i25_i_n_5 t2b_inst|binary_stop_i25_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i25_i_n_0 1 45 1 14420
load netBundle @t2b_inst|binary_start_i 7 t2b_inst|binary_start_i[6] t2b_inst|binary_start_i[5] t2b_inst|binary_start_i[4] t2b_inst|binary_start_i[3] t2b_inst|binary_start_i[2] t2b_inst|binary_start_i[1] t2b_inst|binary_start_i[0] -autobundled
netbloc @t2b_inst|binary_start_i 1 70 1 N
load netBundle @t2b_inst|binary_stop_i21_i_n_0 7 t2b_inst|binary_stop_i21_i_n_0 t2b_inst|binary_stop_i21_i_n_1 t2b_inst|binary_stop_i21_i_n_2 t2b_inst|binary_stop_i21_i_n_3 t2b_inst|binary_stop_i21_i_n_4 t2b_inst|binary_stop_i21_i_n_5 t2b_inst|binary_stop_i21_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i21_i_n_0 1 49 1 15560
load netBundle @t2b_inst|binary_stop_i57_i_n_0 7 t2b_inst|binary_stop_i57_i_n_0 t2b_inst|binary_stop_i57_i_n_1 t2b_inst|binary_stop_i57_i_n_2 t2b_inst|binary_stop_i57_i_n_3 t2b_inst|binary_stop_i57_i_n_4 t2b_inst|binary_stop_i57_i_n_5 t2b_inst|binary_stop_i57_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i57_i_n_0 1 13 1 5540
load netBundle @t2b_inst|binary_stop_i60_i_n_0 7 t2b_inst|binary_stop_i60_i_n_0 t2b_inst|binary_stop_i60_i_n_1 t2b_inst|binary_stop_i60_i_n_2 t2b_inst|binary_stop_i60_i_n_3 t2b_inst|binary_stop_i60_i_n_4 t2b_inst|binary_stop_i60_i_n_5 t2b_inst|binary_stop_i60_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i60_i_n_0 1 10 1 N
load netBundle @t2b_inst|binary_stop_i29_i_n_0 7 t2b_inst|binary_stop_i29_i_n_0 t2b_inst|binary_stop_i29_i_n_1 t2b_inst|binary_stop_i29_i_n_2 t2b_inst|binary_stop_i29_i_n_3 t2b_inst|binary_stop_i29_i_n_4 t2b_inst|binary_stop_i29_i_n_5 t2b_inst|binary_stop_i29_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i29_i_n_0 1 41 1 13300
load netBundle @t2b_inst|binary_stop_i59_i_n_0 7 t2b_inst|binary_stop_i59_i_n_0 t2b_inst|binary_stop_i59_i_n_1 t2b_inst|binary_stop_i59_i_n_2 t2b_inst|binary_stop_i59_i_n_3 t2b_inst|binary_stop_i59_i_n_4 t2b_inst|binary_stop_i59_i_n_5 t2b_inst|binary_stop_i59_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i59_i_n_0 1 11 1 4980
load netBundle @t2b_inst|binary_stop_i19_i_n_0 7 t2b_inst|binary_stop_i19_i_n_0 t2b_inst|binary_stop_i19_i_n_1 t2b_inst|binary_stop_i19_i_n_2 t2b_inst|binary_stop_i19_i_n_3 t2b_inst|binary_stop_i19_i_n_4 t2b_inst|binary_stop_i19_i_n_5 t2b_inst|binary_stop_i19_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i19_i_n_0 1 51 1 16140
load netBundle @t2b_inst|binary_stop_i28_i_n_0 7 t2b_inst|binary_stop_i28_i_n_0 t2b_inst|binary_stop_i28_i_n_1 t2b_inst|binary_stop_i28_i_n_2 t2b_inst|binary_stop_i28_i_n_3 t2b_inst|binary_stop_i28_i_n_4 t2b_inst|binary_stop_i28_i_n_5 t2b_inst|binary_stop_i28_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i28_i_n_0 1 42 1 N
load netBundle @t2b_inst|binary_stop_i39_i_n_0 7 t2b_inst|binary_stop_i39_i_n_0 t2b_inst|binary_stop_i39_i_n_1 t2b_inst|binary_stop_i39_i_n_2 t2b_inst|binary_stop_i39_i_n_3 t2b_inst|binary_stop_i39_i_n_4 t2b_inst|binary_stop_i39_i_n_5 t2b_inst|binary_stop_i39_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i39_i_n_0 1 31 1 10500
load netBundle @t2b_inst|binary_stop_i50_i_n_0 7 t2b_inst|binary_stop_i50_i_n_0 t2b_inst|binary_stop_i50_i_n_1 t2b_inst|binary_stop_i50_i_n_2 t2b_inst|binary_stop_i50_i_n_3 t2b_inst|binary_stop_i50_i_n_4 t2b_inst|binary_stop_i50_i_n_5 t2b_inst|binary_stop_i50_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i50_i_n_0 1 20 1 N
load netBundle @t2b_inst|binary_stop_i64_i_n_0 7 t2b_inst|binary_stop_i64_i_n_0 t2b_inst|binary_stop_i64_i_n_1 t2b_inst|binary_stop_i64_i_n_2 t2b_inst|binary_stop_i64_i_n_3 t2b_inst|binary_stop_i64_i_n_4 t2b_inst|binary_stop_i64_i_n_5 t2b_inst|binary_stop_i64_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i64_i_n_0 1 6 1 N
load netBundle @measurement_o 21 measurement_o[20] measurement_o[19] measurement_o[18] measurement_o[17] measurement_o[16] measurement_o[15] measurement_o[14] measurement_o[13] measurement_o[12] measurement_o[11] measurement_o[10] measurement_o[9] measurement_o[8] measurement_o[7] measurement_o[6] measurement_o[5] measurement_o[4] measurement_o[3] measurement_o[2] measurement_o[1] measurement_o[0] -autobundled
netbloc @measurement_o 1 8 1 NJ
load netBundle @t2b_inst|binary_stop_i9_i_n_0 7 t2b_inst|binary_stop_i9_i_n_0 t2b_inst|binary_stop_i9_i_n_1 t2b_inst|binary_stop_i9_i_n_2 t2b_inst|binary_stop_i9_i_n_3 t2b_inst|binary_stop_i9_i_n_4 t2b_inst|binary_stop_i9_i_n_5 t2b_inst|binary_stop_i9_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i9_i_n_0 1 61 1 19030
load netBundle @t2b_inst|binary_stop_i48_i_n_0 7 t2b_inst|binary_stop_i48_i_n_0 t2b_inst|binary_stop_i48_i_n_1 t2b_inst|binary_stop_i48_i_n_2 t2b_inst|binary_stop_i48_i_n_3 t2b_inst|binary_stop_i48_i_n_4 t2b_inst|binary_stop_i48_i_n_5 t2b_inst|binary_stop_i48_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i48_i_n_0 1 22 1 N
load netBundle @t2b_inst|binary_stop_i54_i_n_0 7 t2b_inst|binary_stop_i54_i_n_0 t2b_inst|binary_stop_i54_i_n_1 t2b_inst|binary_stop_i54_i_n_2 t2b_inst|binary_stop_i54_i_n_3 t2b_inst|binary_stop_i54_i_n_4 t2b_inst|binary_stop_i54_i_n_5 t2b_inst|binary_stop_i54_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i54_i_n_0 1 16 1 6370
load netBundle @t2b_inst|binary_stop_i17_i_n_0 7 t2b_inst|binary_stop_i17_i_n_0 t2b_inst|binary_stop_i17_i_n_1 t2b_inst|binary_stop_i17_i_n_2 t2b_inst|binary_stop_i17_i_n_3 t2b_inst|binary_stop_i17_i_n_4 t2b_inst|binary_stop_i17_i_n_5 t2b_inst|binary_stop_i17_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i17_i_n_0 1 53 1 16720
load netBundle @t2b_inst|binary_stop_i22_i_n_0 7 t2b_inst|binary_stop_i22_i_n_0 t2b_inst|binary_stop_i22_i_n_1 t2b_inst|binary_stop_i22_i_n_2 t2b_inst|binary_stop_i22_i_n_3 t2b_inst|binary_stop_i22_i_n_4 t2b_inst|binary_stop_i22_i_n_5 t2b_inst|binary_stop_i22_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i22_i_n_0 1 48 1 15270
load netBundle @t2b_inst|binary_stop_i62_i_n_0 7 t2b_inst|binary_stop_i62_i_n_0 t2b_inst|binary_stop_i62_i_n_1 t2b_inst|binary_stop_i62_i_n_2 t2b_inst|binary_stop_i62_i_n_3 t2b_inst|binary_stop_i62_i_n_4 t2b_inst|binary_stop_i62_i_n_5 t2b_inst|binary_stop_i62_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i62_i_n_0 1 8 1 N
load netBundle @t2b_inst|binary_stop_i31_i_n_0 7 t2b_inst|binary_stop_i31_i_n_0 t2b_inst|binary_stop_i31_i_n_1 t2b_inst|binary_stop_i31_i_n_2 t2b_inst|binary_stop_i31_i_n_3 t2b_inst|binary_stop_i31_i_n_4 t2b_inst|binary_stop_i31_i_n_5 t2b_inst|binary_stop_i31_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i31_i_n_0 1 39 1 12740
load netBundle @t2b_inst|binary_stop_i24_i_n_0 7 t2b_inst|binary_stop_i24_i_n_0 t2b_inst|binary_stop_i24_i_n_1 t2b_inst|binary_stop_i24_i_n_2 t2b_inst|binary_stop_i24_i_n_3 t2b_inst|binary_stop_i24_i_n_4 t2b_inst|binary_stop_i24_i_n_5 t2b_inst|binary_stop_i24_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i24_i_n_0 1 46 1 N
load netBundle @t2b_inst|binary_stop_i6_i_n_0 7 t2b_inst|binary_stop_i6_i_n_0 t2b_inst|binary_stop_i6_i_n_1 t2b_inst|binary_stop_i6_i_n_2 t2b_inst|binary_stop_i6_i_n_3 t2b_inst|binary_stop_i6_i_n_4 t2b_inst|binary_stop_i6_i_n_5 t2b_inst|binary_stop_i6_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i6_i_n_0 1 64 1 19870
load netBundle @t2b_inst|binary_stop_i11_i_n_0 7 t2b_inst|binary_stop_i11_i_n_0 t2b_inst|binary_stop_i11_i_n_1 t2b_inst|binary_stop_i11_i_n_2 t2b_inst|binary_stop_i11_i_n_3 t2b_inst|binary_stop_i11_i_n_4 t2b_inst|binary_stop_i11_i_n_5 t2b_inst|binary_stop_i11_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i11_i_n_0 1 59 1 18460
load netBundle @t2b_inst|binary_stop_i690_in 7 t2b_inst|binary_stop_i690_in[6] t2b_inst|binary_stop_i690_in[5] t2b_inst|binary_stop_i690_in[4] t2b_inst|binary_stop_i690_in[3] t2b_inst|binary_stop_i690_in[2] t2b_inst|binary_stop_i690_in[1] t2b_inst|binary_stop_i690_in[0] -autobundled
netbloc @t2b_inst|binary_stop_i690_in 1 1 1 2180
load netBundle @t2b_inst|binary_start_i1 7 t2b_inst|binary_start_i1[6] t2b_inst|binary_start_i1[5] t2b_inst|binary_start_i1[4] t2b_inst|binary_start_i1[3] t2b_inst|binary_start_i1[2] t2b_inst|binary_start_i1[1] t2b_inst|binary_start_i1[0] -autobundled
netbloc @t2b_inst|binary_start_i1 1 69 1 N
load netBundle @t2b_inst|binary_start_i2 7 t2b_inst|binary_start_i2[6] t2b_inst|binary_start_i2[5] t2b_inst|binary_start_i2[4] t2b_inst|binary_start_i2[3] t2b_inst|binary_start_i2[2] t2b_inst|binary_start_i2[1] t2b_inst|binary_start_i2[0] -autobundled
netbloc @t2b_inst|binary_start_i2 1 68 1 20990
load netBundle @t2b_inst|binary_start_i3 7 t2b_inst|binary_start_i3[6] t2b_inst|binary_start_i3[5] t2b_inst|binary_start_i3[4] t2b_inst|binary_start_i3[3] t2b_inst|binary_start_i3[2] t2b_inst|binary_start_i3[1] t2b_inst|binary_start_i3[0] -autobundled
netbloc @t2b_inst|binary_start_i3 1 67 1 20710
load netBundle @t2b_inst|binary_stop_i18_i_n_0 7 t2b_inst|binary_stop_i18_i_n_0 t2b_inst|binary_stop_i18_i_n_1 t2b_inst|binary_stop_i18_i_n_2 t2b_inst|binary_stop_i18_i_n_3 t2b_inst|binary_stop_i18_i_n_4 t2b_inst|binary_stop_i18_i_n_5 t2b_inst|binary_stop_i18_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i18_i_n_0 1 52 1 16430
load netBundle @t2b_inst|binary_start_i4 7 t2b_inst|binary_start_i4[6] t2b_inst|binary_start_i4[5] t2b_inst|binary_start_i4[4] t2b_inst|binary_start_i4[3] t2b_inst|binary_start_i4[2] t2b_inst|binary_start_i4[1] t2b_inst|binary_start_i4[0] -autobundled
netbloc @t2b_inst|binary_start_i4 1 66 1 20430
load netBundle @t2b_inst|binary_stop_i23_i_n_0 7 t2b_inst|binary_stop_i23_i_n_0 t2b_inst|binary_stop_i23_i_n_1 t2b_inst|binary_stop_i23_i_n_2 t2b_inst|binary_stop_i23_i_n_3 t2b_inst|binary_stop_i23_i_n_4 t2b_inst|binary_stop_i23_i_n_5 t2b_inst|binary_stop_i23_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i23_i_n_0 1 47 1 14980
load netBundle @t2b_inst|binary_start_i5 7 t2b_inst|binary_start_i5[6] t2b_inst|binary_start_i5[5] t2b_inst|binary_start_i5[4] t2b_inst|binary_start_i5[3] t2b_inst|binary_start_i5[2] t2b_inst|binary_start_i5[1] t2b_inst|binary_start_i5[0] -autobundled
netbloc @t2b_inst|binary_start_i5 1 65 1 20150
load netBundle @t2b_inst|binary_start_i6 7 t2b_inst|binary_start_i6[6] t2b_inst|binary_start_i6[5] t2b_inst|binary_start_i6[4] t2b_inst|binary_start_i6[3] t2b_inst|binary_start_i6[2] t2b_inst|binary_start_i6[1] t2b_inst|binary_start_i6[0] -autobundled
netbloc @t2b_inst|binary_start_i6 1 64 1 19870
load netBundle @t2b_inst|binary_start_i7 7 t2b_inst|binary_start_i7[6] t2b_inst|binary_start_i7[5] t2b_inst|binary_start_i7[4] t2b_inst|binary_start_i7[3] t2b_inst|binary_start_i7[2] t2b_inst|binary_start_i7[1] t2b_inst|binary_start_i7[0] -autobundled
netbloc @t2b_inst|binary_start_i7 1 63 1 19590
load netBundle @t2b_inst|binary_start_i8 7 t2b_inst|binary_start_i8[6] t2b_inst|binary_start_i8[5] t2b_inst|binary_start_i8[4] t2b_inst|binary_start_i8[3] t2b_inst|binary_start_i8[2] t2b_inst|binary_start_i8[1] t2b_inst|binary_start_i8[0] -autobundled
netbloc @t2b_inst|binary_start_i8 1 62 1 19310
load netBundle @t2b_inst|binary_start_i9 7 t2b_inst|binary_start_i9[6] t2b_inst|binary_start_i9[5] t2b_inst|binary_start_i9[4] t2b_inst|binary_start_i9[3] t2b_inst|binary_start_i9[2] t2b_inst|binary_start_i9[1] t2b_inst|binary_start_i9[0] -autobundled
netbloc @t2b_inst|binary_start_i9 1 61 1 19030
load netBundle @coarse_cnt_w 10 coarse_cnt_w[9] coarse_cnt_w[8] coarse_cnt_w[7] coarse_cnt_w[6] coarse_cnt_w[5] coarse_cnt_w[4] coarse_cnt_w[3] coarse_cnt_w[2] coarse_cnt_w[1] coarse_cnt_w[0] -autobundled
netbloc @coarse_cnt_w 1 2 6 500 200 NJ 200 NJ 200 NJ 200 1630J 54 2150
load netBundle @t2b_inst|binary_stop_i52_i_n_0 7 t2b_inst|binary_stop_i52_i_n_0 t2b_inst|binary_stop_i52_i_n_1 t2b_inst|binary_stop_i52_i_n_2 t2b_inst|binary_stop_i52_i_n_3 t2b_inst|binary_stop_i52_i_n_4 t2b_inst|binary_stop_i52_i_n_5 t2b_inst|binary_stop_i52_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i52_i_n_0 1 18 1 N
load netBundle @t2b_inst|binary_stop_i61_i_n_0 7 t2b_inst|binary_stop_i61_i_n_0 t2b_inst|binary_stop_i61_i_n_1 t2b_inst|binary_stop_i61_i_n_2 t2b_inst|binary_stop_i61_i_n_3 t2b_inst|binary_stop_i61_i_n_4 t2b_inst|binary_stop_i61_i_n_5 t2b_inst|binary_stop_i61_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i61_i_n_0 1 9 1 4420
load netBundle @fine_start_w 7 fine_start_w[6] fine_start_w[5] fine_start_w[4] fine_start_w[3] fine_start_w[2] fine_start_w[1] fine_start_w[0] -autobundled
netbloc @fine_start_w 1 7 1 N
load netBundle @t2b_inst|binary_stop_i32_i_n_0 7 t2b_inst|binary_stop_i32_i_n_0 t2b_inst|binary_stop_i32_i_n_1 t2b_inst|binary_stop_i32_i_n_2 t2b_inst|binary_stop_i32_i_n_3 t2b_inst|binary_stop_i32_i_n_4 t2b_inst|binary_stop_i32_i_n_5 t2b_inst|binary_stop_i32_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i32_i_n_0 1 38 1 N
load netBundle @t2b_inst|binary_stop_i65_i_n_0 7 t2b_inst|binary_stop_i65_i_n_0 t2b_inst|binary_stop_i65_i_n_1 t2b_inst|binary_stop_i65_i_n_2 t2b_inst|binary_stop_i65_i_n_3 t2b_inst|binary_stop_i65_i_n_4 t2b_inst|binary_stop_i65_i_n_5 t2b_inst|binary_stop_i65_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i65_i_n_0 1 5 1 3300
load netBundle @t2b_inst|binary_stop_i2_i_n_0 7 t2b_inst|binary_stop_i2_i_n_0 t2b_inst|binary_stop_i2_i_n_1 t2b_inst|binary_stop_i2_i_n_2 t2b_inst|binary_stop_i2_i_n_3 t2b_inst|binary_stop_i2_i_n_4 t2b_inst|binary_stop_i2_i_n_5 t2b_inst|binary_stop_i2_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i2_i_n_0 1 68 1 21010
load netBundle @t2b_inst|binary_start_i60 7 t2b_inst|binary_start_i60[6] t2b_inst|binary_start_i60[5] t2b_inst|binary_start_i60[4] t2b_inst|binary_start_i60[3] t2b_inst|binary_start_i60[2] t2b_inst|binary_start_i60[1] t2b_inst|binary_start_i60[0] -autobundled
netbloc @t2b_inst|binary_start_i60 1 10 1 4710
load netBundle @t2b_inst|binary_start_i61 7 t2b_inst|binary_start_i61[6] t2b_inst|binary_start_i61[5] t2b_inst|binary_start_i61[4] t2b_inst|binary_start_i61[3] t2b_inst|binary_start_i61[2] t2b_inst|binary_start_i61[1] t2b_inst|binary_start_i61[0] -autobundled
netbloc @t2b_inst|binary_start_i61 1 9 1 4420
load netBundle @t2b_inst|binary_start_i62 7 t2b_inst|binary_start_i62[6] t2b_inst|binary_start_i62[5] t2b_inst|binary_start_i62[4] t2b_inst|binary_start_i62[3] t2b_inst|binary_start_i62[2] t2b_inst|binary_start_i62[1] t2b_inst|binary_start_i62[0] -autobundled
netbloc @t2b_inst|binary_start_i62 1 8 1 4150
load netBundle @t2b_inst|binary_start_i63 7 t2b_inst|binary_start_i63[6] t2b_inst|binary_start_i63[5] t2b_inst|binary_start_i63[4] t2b_inst|binary_start_i63[3] t2b_inst|binary_start_i63[2] t2b_inst|binary_start_i63[1] t2b_inst|binary_start_i63[0] -autobundled
netbloc @t2b_inst|binary_start_i63 1 7 1 3860
load netBundle @t2b_inst|binary_start_i64 6 t2b_inst|binary_start_i64[5] t2b_inst|binary_start_i64[4] t2b_inst|binary_start_i64[3] t2b_inst|binary_start_i64[2] t2b_inst|binary_start_i64[1] t2b_inst|binary_start_i64[0] -autobundled
netbloc @t2b_inst|binary_start_i64 1 6 1 3590
load netBundle @t2b_inst|binary_start_i65 5 t2b_inst|binary_start_i65[4] t2b_inst|binary_start_i65[3] t2b_inst|binary_start_i65[2] t2b_inst|binary_start_i65[1] t2b_inst|binary_start_i65[0] -autobundled
netbloc @t2b_inst|binary_start_i65 1 5 1 3300
load netBundle @t2b_inst|binary_stop_i5_i_n_0 7 t2b_inst|binary_stop_i5_i_n_0 t2b_inst|binary_stop_i5_i_n_1 t2b_inst|binary_stop_i5_i_n_2 t2b_inst|binary_stop_i5_i_n_3 t2b_inst|binary_stop_i5_i_n_4 t2b_inst|binary_stop_i5_i_n_5 t2b_inst|binary_stop_i5_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i5_i_n_0 1 65 1 20150
load netBundle @t2b_inst|binary_start_i66 4 t2b_inst|binary_start_i66[3] t2b_inst|binary_start_i66[2] t2b_inst|binary_start_i66[1] t2b_inst|binary_start_i66[0] -autobundled
netbloc @t2b_inst|binary_start_i66 1 4 1 3010
load netBundle @t2b_inst|binary_stop_i4_i_n_0 7 t2b_inst|binary_stop_i4_i_n_0 t2b_inst|binary_stop_i4_i_n_1 t2b_inst|binary_stop_i4_i_n_2 t2b_inst|binary_stop_i4_i_n_3 t2b_inst|binary_stop_i4_i_n_4 t2b_inst|binary_stop_i4_i_n_5 t2b_inst|binary_stop_i4_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i4_i_n_0 1 66 1 20430
load netBundle @t2b_inst|binary_stop_i34_i_n_0 7 t2b_inst|binary_stop_i34_i_n_0 t2b_inst|binary_stop_i34_i_n_1 t2b_inst|binary_stop_i34_i_n_2 t2b_inst|binary_stop_i34_i_n_3 t2b_inst|binary_stop_i34_i_n_4 t2b_inst|binary_stop_i34_i_n_5 t2b_inst|binary_stop_i34_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i34_i_n_0 1 36 1 11890
load netBundle @t2b_inst|binary_start_i67 3 t2b_inst|binary_start_i67[2] t2b_inst|binary_start_i67[1] t2b_inst|binary_start_i67[0] -autobundled
netbloc @t2b_inst|binary_start_i67 1 3 1 2720
load netBundle @t2b_inst|binary_start_i68 2 t2b_inst|binary_start_i68[1] t2b_inst|binary_start_i68[0] -autobundled
netbloc @t2b_inst|binary_start_i68 1 2 1 2430J
load netBundle @t2b_inst|binary_stop_i14_i_n_0 7 t2b_inst|binary_stop_i14_i_n_0 t2b_inst|binary_stop_i14_i_n_1 t2b_inst|binary_stop_i14_i_n_2 t2b_inst|binary_stop_i14_i_n_3 t2b_inst|binary_stop_i14_i_n_4 t2b_inst|binary_stop_i14_i_n_5 t2b_inst|binary_stop_i14_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i14_i_n_0 1 56 1 17590
load netBundle @t2b_inst|binary_stop_i27_i_n_0 7 t2b_inst|binary_stop_i27_i_n_0 t2b_inst|binary_stop_i27_i_n_1 t2b_inst|binary_stop_i27_i_n_2 t2b_inst|binary_stop_i27_i_n_3 t2b_inst|binary_stop_i27_i_n_4 t2b_inst|binary_stop_i27_i_n_5 t2b_inst|binary_stop_i27_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i27_i_n_0 1 43 1 13860
load netBundle @t2b_inst|binary_stop_i36_i_n_0 7 t2b_inst|binary_stop_i36_i_n_0 t2b_inst|binary_stop_i36_i_n_1 t2b_inst|binary_stop_i36_i_n_2 t2b_inst|binary_stop_i36_i_n_3 t2b_inst|binary_stop_i36_i_n_4 t2b_inst|binary_stop_i36_i_n_5 t2b_inst|binary_stop_i36_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i36_i_n_0 1 34 1 N
load netBundle @t2b_inst|binary_stop_i56_i_n_0 7 t2b_inst|binary_stop_i56_i_n_0 t2b_inst|binary_stop_i56_i_n_1 t2b_inst|binary_stop_i56_i_n_2 t2b_inst|binary_stop_i56_i_n_3 t2b_inst|binary_stop_i56_i_n_4 t2b_inst|binary_stop_i56_i_n_5 t2b_inst|binary_stop_i56_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i56_i_n_0 1 14 1 N
load netBundle @t2b_inst|binary_stop_i51_i_n_0 7 t2b_inst|binary_stop_i51_i_n_0 t2b_inst|binary_stop_i51_i_n_1 t2b_inst|binary_stop_i51_i_n_2 t2b_inst|binary_stop_i51_i_n_3 t2b_inst|binary_stop_i51_i_n_4 t2b_inst|binary_stop_i51_i_n_5 t2b_inst|binary_stop_i51_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i51_i_n_0 1 19 1 7200
load netBundle @t2b_inst|binary_start_i50 7 t2b_inst|binary_start_i50[6] t2b_inst|binary_start_i50[5] t2b_inst|binary_start_i50[4] t2b_inst|binary_start_i50[3] t2b_inst|binary_start_i50[2] t2b_inst|binary_start_i50[1] t2b_inst|binary_start_i50[0] -autobundled
netbloc @t2b_inst|binary_start_i50 1 20 1 7490
load netBundle @t2b_inst|binary_stop_i63_i_n_0 7 t2b_inst|binary_stop_i63_i_n_0 t2b_inst|binary_stop_i63_i_n_1 t2b_inst|binary_stop_i63_i_n_2 t2b_inst|binary_stop_i63_i_n_3 t2b_inst|binary_stop_i63_i_n_4 t2b_inst|binary_stop_i63_i_n_5 t2b_inst|binary_stop_i63_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i63_i_n_0 1 7 1 3860
load netBundle @t2b_inst|binary_stop_i12_i_n_0 7 t2b_inst|binary_stop_i12_i_n_0 t2b_inst|binary_stop_i12_i_n_1 t2b_inst|binary_stop_i12_i_n_2 t2b_inst|binary_stop_i12_i_n_3 t2b_inst|binary_stop_i12_i_n_4 t2b_inst|binary_stop_i12_i_n_5 t2b_inst|binary_stop_i12_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i12_i_n_0 1 58 1 18170
load netBundle @t2b_inst|binary_start_i51 7 t2b_inst|binary_start_i51[6] t2b_inst|binary_start_i51[5] t2b_inst|binary_start_i51[4] t2b_inst|binary_start_i51[3] t2b_inst|binary_start_i51[2] t2b_inst|binary_start_i51[1] t2b_inst|binary_start_i51[0] -autobundled
netbloc @t2b_inst|binary_start_i51 1 19 1 7200
load netBundle @t2b_inst|binary_stop_i8_i_n_0 7 t2b_inst|binary_stop_i8_i_n_0 t2b_inst|binary_stop_i8_i_n_1 t2b_inst|binary_stop_i8_i_n_2 t2b_inst|binary_stop_i8_i_n_3 t2b_inst|binary_stop_i8_i_n_4 t2b_inst|binary_stop_i8_i_n_5 t2b_inst|binary_stop_i8_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i8_i_n_0 1 62 1 19310
load netBundle @t2b_inst|binary_start_i52 7 t2b_inst|binary_start_i52[6] t2b_inst|binary_start_i52[5] t2b_inst|binary_start_i52[4] t2b_inst|binary_start_i52[3] t2b_inst|binary_start_i52[2] t2b_inst|binary_start_i52[1] t2b_inst|binary_start_i52[0] -autobundled
netbloc @t2b_inst|binary_start_i52 1 18 1 6930
load netBundle @t2b_inst|binary_start_i53 7 t2b_inst|binary_start_i53[6] t2b_inst|binary_start_i53[5] t2b_inst|binary_start_i53[4] t2b_inst|binary_start_i53[3] t2b_inst|binary_start_i53[2] t2b_inst|binary_start_i53[1] t2b_inst|binary_start_i53[0] -autobundled
netbloc @t2b_inst|binary_start_i53 1 17 1 6660
load netBundle @t2b_inst|binary_stop_i53_i_n_0 7 t2b_inst|binary_stop_i53_i_n_0 t2b_inst|binary_stop_i53_i_n_1 t2b_inst|binary_stop_i53_i_n_2 t2b_inst|binary_stop_i53_i_n_3 t2b_inst|binary_stop_i53_i_n_4 t2b_inst|binary_stop_i53_i_n_5 t2b_inst|binary_stop_i53_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i53_i_n_0 1 17 1 N
load netBundle @t2b_inst|binary_start_i54 7 t2b_inst|binary_start_i54[6] t2b_inst|binary_start_i54[5] t2b_inst|binary_start_i54[4] t2b_inst|binary_start_i54[3] t2b_inst|binary_start_i54[2] t2b_inst|binary_start_i54[1] t2b_inst|binary_start_i54[0] -autobundled
netbloc @t2b_inst|binary_start_i54 1 16 1 6370
load netBundle @t2b_inst|binary_start_i55 7 t2b_inst|binary_start_i55[6] t2b_inst|binary_start_i55[5] t2b_inst|binary_start_i55[4] t2b_inst|binary_start_i55[3] t2b_inst|binary_start_i55[2] t2b_inst|binary_start_i55[1] t2b_inst|binary_start_i55[0] -autobundled
netbloc @t2b_inst|binary_start_i55 1 15 1 6100
load netBundle @t2b_inst|binary_stop_i15_i_n_0 7 t2b_inst|binary_stop_i15_i_n_0 t2b_inst|binary_stop_i15_i_n_1 t2b_inst|binary_stop_i15_i_n_2 t2b_inst|binary_stop_i15_i_n_3 t2b_inst|binary_stop_i15_i_n_4 t2b_inst|binary_stop_i15_i_n_5 t2b_inst|binary_stop_i15_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i15_i_n_0 1 55 1 17300
load netBundle @t2b_inst|binary_start_i56 7 t2b_inst|binary_start_i56[6] t2b_inst|binary_start_i56[5] t2b_inst|binary_start_i56[4] t2b_inst|binary_start_i56[3] t2b_inst|binary_start_i56[2] t2b_inst|binary_start_i56[1] t2b_inst|binary_start_i56[0] -autobundled
netbloc @t2b_inst|binary_start_i56 1 14 1 5830
load netBundle @t2b_inst|thermometer_start_i 70 t2b_inst|thermometer_start_i[69] t2b_inst|thermometer_start_i[68] t2b_inst|thermometer_start_i[67] t2b_inst|thermometer_start_i[66] t2b_inst|thermometer_start_i[65] t2b_inst|thermometer_start_i[64] t2b_inst|thermometer_start_i[63] t2b_inst|thermometer_start_i[62] t2b_inst|thermometer_start_i[61] t2b_inst|thermometer_start_i[60] t2b_inst|thermometer_start_i[59] t2b_inst|thermometer_start_i[58] t2b_inst|thermometer_start_i[57] t2b_inst|thermometer_start_i[56] t2b_inst|thermometer_start_i[55] t2b_inst|thermometer_start_i[54] t2b_inst|thermometer_start_i[53] t2b_inst|thermometer_start_i[52] t2b_inst|thermometer_start_i[51] t2b_inst|thermometer_start_i[50] t2b_inst|thermometer_start_i[49] t2b_inst|thermometer_start_i[48] t2b_inst|thermometer_start_i[47] t2b_inst|thermometer_start_i[46] t2b_inst|thermometer_start_i[45] t2b_inst|thermometer_start_i[44] t2b_inst|thermometer_start_i[43] t2b_inst|thermometer_start_i[42] t2b_inst|thermometer_start_i[41] t2b_inst|thermometer_start_i[40] t2b_inst|thermometer_start_i[39] t2b_inst|thermometer_start_i[38] t2b_inst|thermometer_start_i[37] t2b_inst|thermometer_start_i[36] t2b_inst|thermometer_start_i[35] t2b_inst|thermometer_start_i[34] t2b_inst|thermometer_start_i[33] t2b_inst|thermometer_start_i[32] t2b_inst|thermometer_start_i[31] t2b_inst|thermometer_start_i[30] t2b_inst|thermometer_start_i[29] t2b_inst|thermometer_start_i[28] t2b_inst|thermometer_start_i[27] t2b_inst|thermometer_start_i[26] t2b_inst|thermometer_start_i[25] t2b_inst|thermometer_start_i[24] t2b_inst|thermometer_start_i[23] t2b_inst|thermometer_start_i[22] t2b_inst|thermometer_start_i[21] t2b_inst|thermometer_start_i[20] t2b_inst|thermometer_start_i[19] t2b_inst|thermometer_start_i[18] t2b_inst|thermometer_start_i[17] t2b_inst|thermometer_start_i[16] t2b_inst|thermometer_start_i[15] t2b_inst|thermometer_start_i[14] t2b_inst|thermometer_start_i[13] t2b_inst|thermometer_start_i[12] t2b_inst|thermometer_start_i[11] t2b_inst|thermometer_start_i[10] t2b_inst|thermometer_start_i[9] t2b_inst|thermometer_start_i[8] t2b_inst|thermometer_start_i[7] t2b_inst|thermometer_start_i[6] t2b_inst|thermometer_start_i[5] t2b_inst|thermometer_start_i[4] t2b_inst|thermometer_start_i[3] t2b_inst|thermometer_start_i[2] t2b_inst|thermometer_start_i[1] t2b_inst|thermometer_start_i[0] -autobundled
netbloc @t2b_inst|thermometer_start_i 1 0 70 NJ 124 2180 114 2450 114 2740 114 3030 114 3320 114 3610 114 3880 114 4170 114 4440 114 4730 114 5000 114 5290 114 5560 114 5850 114 6120 114 6390 114 6680 114 6950 114 7220 114 7510 114 7780 114 8050 114 8320 114 8610 114 8880 114 9150 114 9420 114 9710 114 9980 114 10250 114 10520 114 10810 114 11080 114 11350 114 11620 114 11910 114 12200 114 12490 114 12760 114 13050 114 13320 114 13610 114 13880 114 14170 114 14440 114 14730 114 15000 114 15290 114 15580 114 15870 114 16160 114 16450 114 16740 114 17030 114 17320 114 17610 114 17900 114 18190 114 18480 114 18770 114 19050 114 19330 114 19610 114 19890 114 20170 114 20450 114 20730 114 21010 114 21250
load netBundle @t2b_inst|binary_start_i57 7 t2b_inst|binary_start_i57[6] t2b_inst|binary_start_i57[5] t2b_inst|binary_start_i57[4] t2b_inst|binary_start_i57[3] t2b_inst|binary_start_i57[2] t2b_inst|binary_start_i57[1] t2b_inst|binary_start_i57[0] -autobundled
netbloc @t2b_inst|binary_start_i57 1 13 1 5540
load netBundle @t2b_inst|binary_start_i58 7 t2b_inst|binary_start_i58[6] t2b_inst|binary_start_i58[5] t2b_inst|binary_start_i58[4] t2b_inst|binary_start_i58[3] t2b_inst|binary_start_i58[2] t2b_inst|binary_start_i58[1] t2b_inst|binary_start_i58[0] -autobundled
netbloc @t2b_inst|binary_start_i58 1 12 1 5270
load netBundle @t2b_inst|binary_start_i59 7 t2b_inst|binary_start_i59[6] t2b_inst|binary_start_i59[5] t2b_inst|binary_start_i59[4] t2b_inst|binary_start_i59[3] t2b_inst|binary_start_i59[2] t2b_inst|binary_start_i59[1] t2b_inst|binary_start_i59[0] -autobundled
netbloc @t2b_inst|binary_start_i59 1 11 1 4980
load netBundle @t2b_inst|binary_stop_i35_i_n_0 7 t2b_inst|binary_stop_i35_i_n_0 t2b_inst|binary_stop_i35_i_n_1 t2b_inst|binary_stop_i35_i_n_2 t2b_inst|binary_stop_i35_i_n_3 t2b_inst|binary_stop_i35_i_n_4 t2b_inst|binary_stop_i35_i_n_5 t2b_inst|binary_stop_i35_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i35_i_n_0 1 35 1 11600
load netBundle @t2b_inst|binary_stop_i26_i_n_0 7 t2b_inst|binary_stop_i26_i_n_0 t2b_inst|binary_stop_i26_i_n_1 t2b_inst|binary_stop_i26_i_n_2 t2b_inst|binary_stop_i26_i_n_3 t2b_inst|binary_stop_i26_i_n_4 t2b_inst|binary_stop_i26_i_n_5 t2b_inst|binary_stop_i26_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i26_i_n_0 1 44 1 N
load netBundle @t2b_inst|binary_stop_i40 7 t2b_inst|binary_stop_i40[6] t2b_inst|binary_stop_i40[5] t2b_inst|binary_stop_i40[4] t2b_inst|binary_stop_i40[3] t2b_inst|binary_stop_i40[2] t2b_inst|binary_stop_i40[1] t2b_inst|binary_stop_i40[0] -autobundled
netbloc @t2b_inst|binary_stop_i40 1 30 1 10230J
load netBundle @t2b_inst|binary_stop_i41 7 t2b_inst|binary_stop_i41[6] t2b_inst|binary_stop_i41[5] t2b_inst|binary_stop_i41[4] t2b_inst|binary_stop_i41[3] t2b_inst|binary_stop_i41[2] t2b_inst|binary_stop_i41[1] t2b_inst|binary_stop_i41[0] -autobundled
netbloc @t2b_inst|binary_stop_i41 1 29 1 9960J
load netBundle @t2b_inst|binary_stop_i42 7 t2b_inst|binary_stop_i42[6] t2b_inst|binary_stop_i42[5] t2b_inst|binary_stop_i42[4] t2b_inst|binary_stop_i42[3] t2b_inst|binary_stop_i42[2] t2b_inst|binary_stop_i42[1] t2b_inst|binary_stop_i42[0] -autobundled
netbloc @t2b_inst|binary_stop_i42 1 28 1 9690J
load netBundle @t2b_inst|binary_stop_i43 7 t2b_inst|binary_stop_i43[6] t2b_inst|binary_stop_i43[5] t2b_inst|binary_stop_i43[4] t2b_inst|binary_stop_i43[3] t2b_inst|binary_stop_i43[2] t2b_inst|binary_stop_i43[1] t2b_inst|binary_stop_i43[0] -autobundled
netbloc @t2b_inst|binary_stop_i43 1 27 1 9420J
load netBundle @t2b_inst|binary_stop_i44 7 t2b_inst|binary_stop_i44[6] t2b_inst|binary_stop_i44[5] t2b_inst|binary_stop_i44[4] t2b_inst|binary_stop_i44[3] t2b_inst|binary_stop_i44[2] t2b_inst|binary_stop_i44[1] t2b_inst|binary_stop_i44[0] -autobundled
netbloc @t2b_inst|binary_stop_i44 1 26 1 9130J
load netBundle @t2b_inst|binary_stop_i45 7 t2b_inst|binary_stop_i45[6] t2b_inst|binary_stop_i45[5] t2b_inst|binary_stop_i45[4] t2b_inst|binary_stop_i45[3] t2b_inst|binary_stop_i45[2] t2b_inst|binary_stop_i45[1] t2b_inst|binary_stop_i45[0] -autobundled
netbloc @t2b_inst|binary_stop_i45 1 25 1 8860J
load netBundle @t2b_inst|binary_stop_i46 7 t2b_inst|binary_stop_i46[6] t2b_inst|binary_stop_i46[5] t2b_inst|binary_stop_i46[4] t2b_inst|binary_stop_i46[3] t2b_inst|binary_stop_i46[2] t2b_inst|binary_stop_i46[1] t2b_inst|binary_stop_i46[0] -autobundled
netbloc @t2b_inst|binary_stop_i46 1 24 1 8590J
load netBundle @t2b_inst|binary_stop_i47 7 t2b_inst|binary_stop_i47[6] t2b_inst|binary_stop_i47[5] t2b_inst|binary_stop_i47[4] t2b_inst|binary_stop_i47[3] t2b_inst|binary_stop_i47[2] t2b_inst|binary_stop_i47[1] t2b_inst|binary_stop_i47[0] -autobundled
netbloc @t2b_inst|binary_stop_i47 1 23 1 8320J
load netBundle @t2b_inst|binary_stop_i44_i_n_0 7 t2b_inst|binary_stop_i44_i_n_0 t2b_inst|binary_stop_i44_i_n_1 t2b_inst|binary_stop_i44_i_n_2 t2b_inst|binary_stop_i44_i_n_3 t2b_inst|binary_stop_i44_i_n_4 t2b_inst|binary_stop_i44_i_n_5 t2b_inst|binary_stop_i44_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i44_i_n_0 1 26 1 N
load netBundle @t2b_inst|binary_stop_i41_i_n_0 7 t2b_inst|binary_stop_i41_i_n_0 t2b_inst|binary_stop_i41_i_n_1 t2b_inst|binary_stop_i41_i_n_2 t2b_inst|binary_stop_i41_i_n_3 t2b_inst|binary_stop_i41_i_n_4 t2b_inst|binary_stop_i41_i_n_5 t2b_inst|binary_stop_i41_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i41_i_n_0 1 29 1 N
load netBundle @t2b_inst|binary_stop_i48 7 t2b_inst|binary_stop_i48[6] t2b_inst|binary_stop_i48[5] t2b_inst|binary_stop_i48[4] t2b_inst|binary_stop_i48[3] t2b_inst|binary_stop_i48[2] t2b_inst|binary_stop_i48[1] t2b_inst|binary_stop_i48[0] -autobundled
netbloc @t2b_inst|binary_stop_i48 1 22 1 8030J
load netBundle @t2b_inst|binary_stop_i49 7 t2b_inst|binary_stop_i49[6] t2b_inst|binary_stop_i49[5] t2b_inst|binary_stop_i49[4] t2b_inst|binary_stop_i49[3] t2b_inst|binary_stop_i49[2] t2b_inst|binary_stop_i49[1] t2b_inst|binary_stop_i49[0] -autobundled
netbloc @t2b_inst|binary_stop_i49 1 21 1 7760J
load netBundle @t2b_inst|thermometer_stop_i 70 t2b_inst|thermometer_stop_i[69] t2b_inst|thermometer_stop_i[68] t2b_inst|thermometer_stop_i[67] t2b_inst|thermometer_stop_i[66] t2b_inst|thermometer_stop_i[65] t2b_inst|thermometer_stop_i[64] t2b_inst|thermometer_stop_i[63] t2b_inst|thermometer_stop_i[62] t2b_inst|thermometer_stop_i[61] t2b_inst|thermometer_stop_i[60] t2b_inst|thermometer_stop_i[59] t2b_inst|thermometer_stop_i[58] t2b_inst|thermometer_stop_i[57] t2b_inst|thermometer_stop_i[56] t2b_inst|thermometer_stop_i[55] t2b_inst|thermometer_stop_i[54] t2b_inst|thermometer_stop_i[53] t2b_inst|thermometer_stop_i[52] t2b_inst|thermometer_stop_i[51] t2b_inst|thermometer_stop_i[50] t2b_inst|thermometer_stop_i[49] t2b_inst|thermometer_stop_i[48] t2b_inst|thermometer_stop_i[47] t2b_inst|thermometer_stop_i[46] t2b_inst|thermometer_stop_i[45] t2b_inst|thermometer_stop_i[44] t2b_inst|thermometer_stop_i[43] t2b_inst|thermometer_stop_i[42] t2b_inst|thermometer_stop_i[41] t2b_inst|thermometer_stop_i[40] t2b_inst|thermometer_stop_i[39] t2b_inst|thermometer_stop_i[38] t2b_inst|thermometer_stop_i[37] t2b_inst|thermometer_stop_i[36] t2b_inst|thermometer_stop_i[35] t2b_inst|thermometer_stop_i[34] t2b_inst|thermometer_stop_i[33] t2b_inst|thermometer_stop_i[32] t2b_inst|thermometer_stop_i[31] t2b_inst|thermometer_stop_i[30] t2b_inst|thermometer_stop_i[29] t2b_inst|thermometer_stop_i[28] t2b_inst|thermometer_stop_i[27] t2b_inst|thermometer_stop_i[26] t2b_inst|thermometer_stop_i[25] t2b_inst|thermometer_stop_i[24] t2b_inst|thermometer_stop_i[23] t2b_inst|thermometer_stop_i[22] t2b_inst|thermometer_stop_i[21] t2b_inst|thermometer_stop_i[20] t2b_inst|thermometer_stop_i[19] t2b_inst|thermometer_stop_i[18] t2b_inst|thermometer_stop_i[17] t2b_inst|thermometer_stop_i[16] t2b_inst|thermometer_stop_i[15] t2b_inst|thermometer_stop_i[14] t2b_inst|thermometer_stop_i[13] t2b_inst|thermometer_stop_i[12] t2b_inst|thermometer_stop_i[11] t2b_inst|thermometer_stop_i[10] t2b_inst|thermometer_stop_i[9] t2b_inst|thermometer_stop_i[8] t2b_inst|thermometer_stop_i[7] t2b_inst|thermometer_stop_i[6] t2b_inst|thermometer_stop_i[5] t2b_inst|thermometer_stop_i[4] t2b_inst|thermometer_stop_i[3] t2b_inst|thermometer_stop_i[2] t2b_inst|thermometer_stop_i[1] t2b_inst|thermometer_stop_i[0] -autobundled
netbloc @t2b_inst|thermometer_stop_i 1 0 69 1950 334 2180 374 2470 374 2760 374 3050 374 3340 374 3610 384 3900 384 4170 394 4460 394 4730 404 5020 404 5290 414 5580 414 5850 424 6120 434 6410 434 6680 444 6950 454 7240 454 7510 464 7780 474 8050 484 8340 484 8610 494 8880 504 9150 514 9440 514 9710 524 9980 534 10250 544 10540 544 10810 554 11080 564 11350 574 11640 574 11930 574 12220 574 12490 584 12780 584 13050 594 13340 594 13610 604 13900 604 14170 614 14460 614 14730 624 15020 624 15310 624 15600 624 15890 624 16180 624 16470 624 16760 624 17050 624 17340 624 17630 624 17920 624 18210 624 18500 624 18790 624 19070 624 19350 624 19630 624 19910 624 20190 624 20470 624 20750 624 21010J
load netBundle @t2b_inst|binary_stop_i30 7 t2b_inst|binary_stop_i30[6] t2b_inst|binary_stop_i30[5] t2b_inst|binary_stop_i30[4] t2b_inst|binary_stop_i30[3] t2b_inst|binary_stop_i30[2] t2b_inst|binary_stop_i30[1] t2b_inst|binary_stop_i30[0] -autobundled
netbloc @t2b_inst|binary_stop_i30 1 40 1 13030J
load netBundle @t2b_inst|binary_stop_i10_i_n_0 7 t2b_inst|binary_stop_i10_i_n_0 t2b_inst|binary_stop_i10_i_n_1 t2b_inst|binary_stop_i10_i_n_2 t2b_inst|binary_stop_i10_i_n_3 t2b_inst|binary_stop_i10_i_n_4 t2b_inst|binary_stop_i10_i_n_5 t2b_inst|binary_stop_i10_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i10_i_n_0 1 60 1 18750
load netBundle @t2b_inst|binary_stop_i43_i_n_0 7 t2b_inst|binary_stop_i43_i_n_0 t2b_inst|binary_stop_i43_i_n_1 t2b_inst|binary_stop_i43_i_n_2 t2b_inst|binary_stop_i43_i_n_3 t2b_inst|binary_stop_i43_i_n_4 t2b_inst|binary_stop_i43_i_n_5 t2b_inst|binary_stop_i43_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i43_i_n_0 1 27 1 9400
load netBundle @t2b_inst|binary_stop_i31 7 t2b_inst|binary_stop_i31[6] t2b_inst|binary_stop_i31[5] t2b_inst|binary_stop_i31[4] t2b_inst|binary_stop_i31[3] t2b_inst|binary_stop_i31[2] t2b_inst|binary_stop_i31[1] t2b_inst|binary_stop_i31[0] -autobundled
netbloc @t2b_inst|binary_stop_i31 1 39 1 12760J
load netBundle @t2b_inst|binary_stop_i32 7 t2b_inst|binary_stop_i32[6] t2b_inst|binary_stop_i32[5] t2b_inst|binary_stop_i32[4] t2b_inst|binary_stop_i32[3] t2b_inst|binary_stop_i32[2] t2b_inst|binary_stop_i32[1] t2b_inst|binary_stop_i32[0] -autobundled
netbloc @t2b_inst|binary_stop_i32 1 38 1 12470J
load netBundle @t2b_inst|binary_stop_i33 7 t2b_inst|binary_stop_i33[6] t2b_inst|binary_stop_i33[5] t2b_inst|binary_stop_i33[4] t2b_inst|binary_stop_i33[3] t2b_inst|binary_stop_i33[2] t2b_inst|binary_stop_i33[1] t2b_inst|binary_stop_i33[0] -autobundled
netbloc @t2b_inst|binary_stop_i33 1 37 1 12200J
load netBundle @t2b_inst|binary_stop_i42_i_n_0 7 t2b_inst|binary_stop_i42_i_n_0 t2b_inst|binary_stop_i42_i_n_1 t2b_inst|binary_stop_i42_i_n_2 t2b_inst|binary_stop_i42_i_n_3 t2b_inst|binary_stop_i42_i_n_4 t2b_inst|binary_stop_i42_i_n_5 t2b_inst|binary_stop_i42_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i42_i_n_0 1 28 1 N
load netBundle @t2b_inst|binary_start_i30 7 t2b_inst|binary_start_i30[6] t2b_inst|binary_start_i30[5] t2b_inst|binary_start_i30[4] t2b_inst|binary_start_i30[3] t2b_inst|binary_start_i30[2] t2b_inst|binary_start_i30[1] t2b_inst|binary_start_i30[0] -autobundled
netbloc @t2b_inst|binary_start_i30 1 40 1 13030
load netBundle @t2b_inst|binary_stop_i34 7 t2b_inst|binary_stop_i34[6] t2b_inst|binary_stop_i34[5] t2b_inst|binary_stop_i34[4] t2b_inst|binary_stop_i34[3] t2b_inst|binary_stop_i34[2] t2b_inst|binary_stop_i34[1] t2b_inst|binary_stop_i34[0] -autobundled
netbloc @t2b_inst|binary_stop_i34 1 36 1 11910J
load netBundle @t2b_inst|binary_start_i31 7 t2b_inst|binary_start_i31[6] t2b_inst|binary_start_i31[5] t2b_inst|binary_start_i31[4] t2b_inst|binary_start_i31[3] t2b_inst|binary_start_i31[2] t2b_inst|binary_start_i31[1] t2b_inst|binary_start_i31[0] -autobundled
netbloc @t2b_inst|binary_start_i31 1 39 1 12740
load netBundle @t2b_inst|binary_stop_i35 7 t2b_inst|binary_stop_i35[6] t2b_inst|binary_stop_i35[5] t2b_inst|binary_stop_i35[4] t2b_inst|binary_stop_i35[3] t2b_inst|binary_stop_i35[2] t2b_inst|binary_stop_i35[1] t2b_inst|binary_stop_i35[0] -autobundled
netbloc @t2b_inst|binary_stop_i35 1 35 1 11620J
load netBundle @t2b_inst|binary_stop_i36 7 t2b_inst|binary_stop_i36[6] t2b_inst|binary_stop_i36[5] t2b_inst|binary_stop_i36[4] t2b_inst|binary_stop_i36[3] t2b_inst|binary_stop_i36[2] t2b_inst|binary_stop_i36[1] t2b_inst|binary_stop_i36[0] -autobundled
netbloc @t2b_inst|binary_stop_i36 1 34 1 11330J
load netBundle @t2b_inst|binary_start_i32 7 t2b_inst|binary_start_i32[6] t2b_inst|binary_start_i32[5] t2b_inst|binary_start_i32[4] t2b_inst|binary_start_i32[3] t2b_inst|binary_start_i32[2] t2b_inst|binary_start_i32[1] t2b_inst|binary_start_i32[0] -autobundled
netbloc @t2b_inst|binary_start_i32 1 38 1 12470
load netBundle @t2b_inst|binary_stop_i37 7 t2b_inst|binary_stop_i37[6] t2b_inst|binary_stop_i37[5] t2b_inst|binary_stop_i37[4] t2b_inst|binary_stop_i37[3] t2b_inst|binary_stop_i37[2] t2b_inst|binary_stop_i37[1] t2b_inst|binary_stop_i37[0] -autobundled
netbloc @t2b_inst|binary_stop_i37 1 33 1 11060J
load netBundle @t2b_inst|binary_start_i33 7 t2b_inst|binary_start_i33[6] t2b_inst|binary_start_i33[5] t2b_inst|binary_start_i33[4] t2b_inst|binary_start_i33[3] t2b_inst|binary_start_i33[2] t2b_inst|binary_start_i33[1] t2b_inst|binary_start_i33[0] -autobundled
netbloc @t2b_inst|binary_start_i33 1 37 1 12180
load netBundle @t2b_inst|binary_stop_i38 7 t2b_inst|binary_stop_i38[6] t2b_inst|binary_stop_i38[5] t2b_inst|binary_stop_i38[4] t2b_inst|binary_stop_i38[3] t2b_inst|binary_stop_i38[2] t2b_inst|binary_stop_i38[1] t2b_inst|binary_stop_i38[0] -autobundled
netbloc @t2b_inst|binary_stop_i38 1 32 1 10790J
load netBundle @t2b_inst|binary_start_i34 7 t2b_inst|binary_start_i34[6] t2b_inst|binary_start_i34[5] t2b_inst|binary_start_i34[4] t2b_inst|binary_start_i34[3] t2b_inst|binary_start_i34[2] t2b_inst|binary_start_i34[1] t2b_inst|binary_start_i34[0] -autobundled
netbloc @t2b_inst|binary_start_i34 1 36 1 11890
load netBundle @t2b_inst|binary_start_i35 7 t2b_inst|binary_start_i35[6] t2b_inst|binary_start_i35[5] t2b_inst|binary_start_i35[4] t2b_inst|binary_start_i35[3] t2b_inst|binary_start_i35[2] t2b_inst|binary_start_i35[1] t2b_inst|binary_start_i35[0] -autobundled
netbloc @t2b_inst|binary_start_i35 1 35 1 11600
load netBundle @t2b_inst|binary_stop_i39 7 t2b_inst|binary_stop_i39[6] t2b_inst|binary_stop_i39[5] t2b_inst|binary_stop_i39[4] t2b_inst|binary_stop_i39[3] t2b_inst|binary_stop_i39[2] t2b_inst|binary_stop_i39[1] t2b_inst|binary_stop_i39[0] -autobundled
netbloc @t2b_inst|binary_stop_i39 1 31 1 10520J
load netBundle @t2b_inst|binary_start_i36 7 t2b_inst|binary_start_i36[6] t2b_inst|binary_start_i36[5] t2b_inst|binary_start_i36[4] t2b_inst|binary_start_i36[3] t2b_inst|binary_start_i36[2] t2b_inst|binary_start_i36[1] t2b_inst|binary_start_i36[0] -autobundled
netbloc @t2b_inst|binary_start_i36 1 34 1 11330
load netBundle @t2b_inst|binary_stop_i1 7 t2b_inst|binary_stop_i1[6] t2b_inst|binary_stop_i1[5] t2b_inst|binary_stop_i1[4] t2b_inst|binary_stop_i1[3] t2b_inst|binary_stop_i1[2] t2b_inst|binary_stop_i1[1] t2b_inst|binary_stop_i1[0] -autobundled
netbloc @t2b_inst|binary_stop_i1 1 69 1 NJ
load netBundle @t2b_inst|binary_start_i37 7 t2b_inst|binary_start_i37[6] t2b_inst|binary_start_i37[5] t2b_inst|binary_start_i37[4] t2b_inst|binary_start_i37[3] t2b_inst|binary_start_i37[2] t2b_inst|binary_start_i37[1] t2b_inst|binary_start_i37[0] -autobundled
netbloc @t2b_inst|binary_start_i37 1 33 1 11060
load netBundle @t2b_inst|binary_start_i38 7 t2b_inst|binary_start_i38[6] t2b_inst|binary_start_i38[5] t2b_inst|binary_start_i38[4] t2b_inst|binary_start_i38[3] t2b_inst|binary_start_i38[2] t2b_inst|binary_start_i38[1] t2b_inst|binary_start_i38[0] -autobundled
netbloc @t2b_inst|binary_start_i38 1 32 1 10790
load netBundle @t2b_inst|binary_stop_i2 7 t2b_inst|binary_stop_i2[6] t2b_inst|binary_stop_i2[5] t2b_inst|binary_stop_i2[4] t2b_inst|binary_stop_i2[3] t2b_inst|binary_stop_i2[2] t2b_inst|binary_stop_i2[1] t2b_inst|binary_stop_i2[0] -autobundled
netbloc @t2b_inst|binary_stop_i2 1 68 1 20990J
load netBundle @t2b_inst|binary_stop_i3 7 t2b_inst|binary_stop_i3[6] t2b_inst|binary_stop_i3[5] t2b_inst|binary_stop_i3[4] t2b_inst|binary_stop_i3[3] t2b_inst|binary_stop_i3[2] t2b_inst|binary_stop_i3[1] t2b_inst|binary_stop_i3[0] -autobundled
netbloc @t2b_inst|binary_stop_i3 1 67 1 20730J
load netBundle @t2b_inst|binary_stop_i33_i_n_0 7 t2b_inst|binary_stop_i33_i_n_0 t2b_inst|binary_stop_i33_i_n_1 t2b_inst|binary_stop_i33_i_n_2 t2b_inst|binary_stop_i33_i_n_3 t2b_inst|binary_stop_i33_i_n_4 t2b_inst|binary_stop_i33_i_n_5 t2b_inst|binary_stop_i33_i_n_6 -autobundled
netbloc @t2b_inst|binary_stop_i33_i_n_0 1 37 1 12180
load netBundle @t2b_inst|binary_start_i39 7 t2b_inst|binary_start_i39[6] t2b_inst|binary_start_i39[5] t2b_inst|binary_start_i39[4] t2b_inst|binary_start_i39[3] t2b_inst|binary_start_i39[2] t2b_inst|binary_start_i39[1] t2b_inst|binary_start_i39[0] -autobundled
netbloc @t2b_inst|binary_start_i39 1 31 1 10500
load netBundle @tdl_thermometer_start_val_w 70 tdl_thermometer_start_val_w[69] tdl_thermometer_start_val_w[68] tdl_thermometer_start_val_w[67] tdl_thermometer_start_val_w[66] tdl_thermometer_start_val_w[65] tdl_thermometer_start_val_w[64] tdl_thermometer_start_val_w[63] tdl_thermometer_start_val_w[62] tdl_thermometer_start_val_w[61] tdl_thermometer_start_val_w[60] tdl_thermometer_start_val_w[59] tdl_thermometer_start_val_w[58] tdl_thermometer_start_val_w[57] tdl_thermometer_start_val_w[56] tdl_thermometer_start_val_w[55] tdl_thermometer_start_val_w[54] tdl_thermometer_start_val_w[53] tdl_thermometer_start_val_w[52] tdl_thermometer_start_val_w[51] tdl_thermometer_start_val_w[50] tdl_thermometer_start_val_w[49] tdl_thermometer_start_val_w[48] tdl_thermometer_start_val_w[47] tdl_thermometer_start_val_w[46] tdl_thermometer_start_val_w[45] tdl_thermometer_start_val_w[44] tdl_thermometer_start_val_w[43] tdl_thermometer_start_val_w[42] tdl_thermometer_start_val_w[41] tdl_thermometer_start_val_w[40] tdl_thermometer_start_val_w[39] tdl_thermometer_start_val_w[38] tdl_thermometer_start_val_w[37] tdl_thermometer_start_val_w[36] tdl_thermometer_start_val_w[35] tdl_thermometer_start_val_w[34] tdl_thermometer_start_val_w[33] tdl_thermometer_start_val_w[32] tdl_thermometer_start_val_w[31] tdl_thermometer_start_val_w[30] tdl_thermometer_start_val_w[29] tdl_thermometer_start_val_w[28] tdl_thermometer_start_val_w[27] tdl_thermometer_start_val_w[26] tdl_thermometer_start_val_w[25] tdl_thermometer_start_val_w[24] tdl_thermometer_start_val_w[23] tdl_thermometer_start_val_w[22] tdl_thermometer_start_val_w[21] tdl_thermometer_start_val_w[20] tdl_thermometer_start_val_w[19] tdl_thermometer_start_val_w[18] tdl_thermometer_start_val_w[17] tdl_thermometer_start_val_w[16] tdl_thermometer_start_val_w[15] tdl_thermometer_start_val_w[14] tdl_thermometer_start_val_w[13] tdl_thermometer_start_val_w[12] tdl_thermometer_start_val_w[11] tdl_thermometer_start_val_w[10] tdl_thermometer_start_val_w[9] tdl_thermometer_start_val_w[8] tdl_thermometer_start_val_w[7] tdl_thermometer_start_val_w[6] tdl_thermometer_start_val_w[5] tdl_thermometer_start_val_w[4] tdl_thermometer_start_val_w[3] tdl_thermometer_start_val_w[2] tdl_thermometer_start_val_w[1] tdl_thermometer_start_val_w[0] -autobundled
netbloc @tdl_thermometer_start_val_w 1 6 1 N
load netBundle @t2b_inst|binary_stop_i4 7 t2b_inst|binary_stop_i4[6] t2b_inst|binary_stop_i4[5] t2b_inst|binary_stop_i4[4] t2b_inst|binary_stop_i4[3] t2b_inst|binary_stop_i4[2] t2b_inst|binary_stop_i4[1] t2b_inst|binary_stop_i4[0] -autobundled
netbloc @t2b_inst|binary_stop_i4 1 66 1 20450J
load netBundle @t2b_inst|binary_stop_i20 7 t2b_inst|binary_stop_i20[6] t2b_inst|binary_stop_i20[5] t2b_inst|binary_stop_i20[4] t2b_inst|binary_stop_i20[3] t2b_inst|binary_stop_i20[2] t2b_inst|binary_stop_i20[1] t2b_inst|binary_stop_i20[0] -autobundled
netbloc @t2b_inst|binary_stop_i20 1 50 1 15870J
load netBundle @t2b_inst|binary_stop_i5 7 t2b_inst|binary_stop_i5[6] t2b_inst|binary_stop_i5[5] t2b_inst|binary_stop_i5[4] t2b_inst|binary_stop_i5[3] t2b_inst|binary_stop_i5[2] t2b_inst|binary_stop_i5[1] t2b_inst|binary_stop_i5[0] -autobundled
netbloc @t2b_inst|binary_stop_i5 1 65 1 20170J
load netBundle @t2b_inst|binary_stop_i21 7 t2b_inst|binary_stop_i21[6] t2b_inst|binary_stop_i21[5] t2b_inst|binary_stop_i21[4] t2b_inst|binary_stop_i21[3] t2b_inst|binary_stop_i21[2] t2b_inst|binary_stop_i21[1] t2b_inst|binary_stop_i21[0] -autobundled
netbloc @t2b_inst|binary_stop_i21 1 49 1 15580J
load netBundle @t2b_inst|binary_stop_i6 7 t2b_inst|binary_stop_i6[6] t2b_inst|binary_stop_i6[5] t2b_inst|binary_stop_i6[4] t2b_inst|binary_stop_i6[3] t2b_inst|binary_stop_i6[2] t2b_inst|binary_stop_i6[1] t2b_inst|binary_stop_i6[0] -autobundled
netbloc @t2b_inst|binary_stop_i6 1 64 1 19890J
levelinfo -pg 1 0 70 310 650 860 1050 1330 1920 2340 2570 -top 0 -bot 910
levelinfo -hier t2b_inst * 2000 2250 2540 2830 3120 3410 3680 3970 4240 4530 4800 5090 5360 5650 5920 6190 6480 6750 7020 7310 7580 7850 8120 8410 8680 8950 9220 9510 9780 10050 10320 10610 10880 11150 11420 11710 12000 12290 12560 12850 13120 13410 13680 13970 14240 14530 14800 15090 15380 15670 15960 16250 16540 16830 17120 17410 17700 17990 18280 18570 18860 19140 19420 19700 19980 20260 20540 20820 21080 21320 *
show
zoom 1.82857
scrollpos 1792 238
#
# initialize ictrl to current module tdc work:tdc:NOFILE
ictrl init topinfo |
