module register4_tb;
    reg clk, rst, load;
    reg [3:0] d;
    wire [3:0] q;

    register4 uut (clk, rst, load, d, q);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, register4_tb);
        clk = 0; rst = 1; load = 0; d = 4'b1010; #10 rst = 0;
        #10 load = 1; #20 load = 0; #50 $finish;
    end
    always #5 clk = ~clk;
endmodule
