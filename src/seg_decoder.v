
module seg_decoder( bcd, seg_data );

input [3:0] bcd;
output [7:0] seg_data;

reg [7:0] seg_data;

always @(bcd)
begin
	case(bcd)
		4'b0000 : seg_data = 8'b1111_1100;
		4'b0001 : seg_data = 8'b0110_0000;
		4'b0010 : seg_data = 8'b1101_1010;
		4'b0011 : seg_data = 8'b1111_0010;
		4'b0100 : seg_data = 8'b0110_0110;
		4'b0101 : seg_data = 8'b1011_0110;
		4'b0110 : seg_data = 8'b1011_1110;
		4'b0111 : seg_data = 8'b1110_0000;
		4'b1000 : seg_data = 8'b1111_1110;
		4'b1001 : seg_data = 8'b1111_0110;
		4'b1010 : seg_data = 8'b1110_1110;
		4'b1011 : seg_data = 8'b0011_1110;
		4'b1100 : seg_data = 8'b1001_1100;
		4'b1101 : seg_data = 8'b0111_1010;
		4'b1110 : seg_data = 8'b1001_1110;
		4'b1111 : seg_data = 8'b1000_1110;
	endcase

end

endmodule
