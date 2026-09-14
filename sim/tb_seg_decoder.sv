`timescale 1ns/1ps
module tb_seg_decoder;
  reg [3:0] bcd; wire [7:0] seg_data; reg [7:0] digits[0:15]; seg_decoder dut(bcd,seg_data);
  integer n,checked=0;
  reg [7:0] expected;
  initial begin
    $dumpfile("wave.vcd"); $dumpvars(0,tb_seg_decoder);
    digits[0]=8'hfc;
    digits[1]=8'h60;
    digits[2]=8'hda;
    digits[3]=8'hf2;
    digits[4]=8'h66;
    digits[5]=8'hb6;
    digits[6]=8'hbe;
    digits[7]=8'he0;
    digits[8]=8'hfe;
    digits[9]=8'hf6;
    digits[10]=8'hee;
    digits[11]=8'h3e;
    digits[12]=8'h9c;
    digits[13]=8'h7a;
    digits[14]=8'h9e;
    digits[15]=8'h8e;
    for(n=0;n<16;n=n+1) begin
      bcd=n;
      expected=digits[n];
      #10;
      if (seg_data !== expected)
        $fatal(1,"FAIL seg_decoder vector=%0d expected=%h actual=%h",n,expected,seg_data);
      checked=checked+1;
    end
    if(checked!=16) $fatal(1,"Incomplete test");
    $display("LAB1_PASS seg_decoder cases=%0d",checked);
    $finish;
  end
  initial begin #100000; $fatal(1,"Watchdog"); end
endmodule