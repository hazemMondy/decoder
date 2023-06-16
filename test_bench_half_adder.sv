module decoder_tb ();
reg[2:0] in1;
reg  flag_wrong;

wire[7:0] out_wire;


decoder decoder_inst (
    in1,
    out_wire
    );


initial begin
$dumpfile("wave_test.vcd");
$dumpvars(0, in1);
$dumpvars(0, out_wire); 
$dumpvars(0, flag_wrong); 

flag_wrong = 0;
end

    integer i;
initial begin
    for (i = 0  ; i<=8;i=i+1 ) begin
        #1
        in1=i;
    end
// $finish;
end

endmodule 
