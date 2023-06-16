//---------------------------------------------------------------------------------------
//-- Entity and architecture declarations for an address decoder using a CASE statement.
//---------------------------------------------------------------------------------------

module decoder(
   input [2:0] address, 
   output reg [7:0] decode
);

always @(address) begin
   case(address)
      3'b001: decode = 8'b00001011;
      3'b111: decode = 8'b00101010;
      3'b010: decode = 8'b00101100;
      3'b101: decode = 8'b1011000;
      3'b110: decode = 8'b1011000;
      default: decode = 8'b00000000;
   endcase
end

endmodule