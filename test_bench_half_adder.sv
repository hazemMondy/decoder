module decoder_tb ();
reg in1;
reg flag_wrong;

wire out_wire;


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

initial begin

// begin test case
in1 = 0;
in2 = 0;
flag_wrong = 0;
#2
if (out_wire != 0)
begin
    flag_wrong = 1;
end
else
begin
    flag_wrong = 0;
end
// end test case
#2


// begin test case
in1 = 0;
in2 = 1;
flag_wrong = 0;
#2
if (out_wire != 0)
begin
    flag_wrong = 1;
end
else
begin
    flag_wrong = 0;
end
// end test case
#2


// begin test case
in1 = 1;
in2 = 0;
flag_wrong = 0;
#2
if (out_wire != 0)
begin
    flag_wrong = 1;
end
else
begin
    flag_wrong = 0;
end
// end test case
#2


// begin test case
in1 = 1;
in2 = 1;
flag_wrong = 0;
#2
if (out_wire != 1)
begin
    flag_wrong = 1;
end
else
begin
    flag_wrong = 0;
end
// end test case
#2

$finish;
end

endmodule 
