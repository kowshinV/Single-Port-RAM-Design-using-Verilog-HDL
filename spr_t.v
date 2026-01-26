module spr(
    input clk,
    input read,
    input write,
    input cs,
    input [3:0] addr,
    input [7:0] data_in,
    output reg [7:0] value
);

    reg [7:0] mem_loc [0:15];
    integer i;

    // 🔹 Initialize memory and output (removes red line)
    initial begin
        for (i = 0; i < 16; i = i + 1)
            mem_loc[i] = 8'h00;
        value = 8'h00;
    end

    always @(posedge clk) begin
        if (cs) begin
            if (write) begin
                mem_loc[addr] <= data_in;
                value <= value;          // 🔹 HOLD value during write
            end
            else if (read) begin
                value <= mem_loc[addr]; // READ
            end
            else begin
                value <= value;          // HOLD
            end
        end
        else begin
            value <= 8'h00;              // CS disabled
        end
    end

endmodule