`timescale 1ns/1ps

module tb_up_down_counter;

    reg clk;
    reg reset;
    reg enable;
    reg up_down;
    wire [3:0] count;

    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .up_down(up_down),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        enable = 0;
        up_down = 1;

        #10 reset = 0;

        // Count up
        enable = 1;
        up_down = 1;
        #50;

        // Count down
        up_down = 0;
        #30;

        // Hold the count when enable is 0
        enable = 0;
        #20;

        // Reset the counter
        reset = 1;
        #10 reset = 0;

        #20;
        $finish;
    end

    initial begin
        $monitor("Time=%0t reset=%b enable=%b up_down=%b count=%d",
                 $time, reset, enable, up_down, count);
    end

endmodule
