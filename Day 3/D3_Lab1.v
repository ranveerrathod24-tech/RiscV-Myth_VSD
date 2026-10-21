\m5_TLV_version 1d: tl-x.org
\m5
   
   // ============================================
   // Welcome, new visitors! Try the "Learn" menu.
   // ============================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   // Connect SV inputs to TLV pipesignals.
   $reset = *reset;
   
   $out1 = ! $in1;   //INVERTER
   $out2 = $in1 & $in2;   //AND GATE
   $out3 = $in1 | $in2;   //OR GATE
   $out4[4:0] = $in3[3:0] + $in4[3:0];   //VECTOR ADD
   $out_mux[7:0] = $sel[1] ? $in5[7:0]:$in6[7:0];   //2:1 VECTOR MUX
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
