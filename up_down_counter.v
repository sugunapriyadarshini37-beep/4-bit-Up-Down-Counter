// 4-bit Up/Down Counter using Verilog HDL
module up_down_counter (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire up_down,   // 1 = count up, 0 = count down
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset)
            count <= 4'b0000;
        else if (enable) begin
            if (up_down)
                count <= count + 1'b1;
            else
                count <= count - 1'b1;
        end
    end

endmodule
