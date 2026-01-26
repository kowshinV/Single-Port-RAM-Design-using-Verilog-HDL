module spr_tb;

    reg clk;
    reg read;
    reg write;
    reg cs;
    reg [3:0] addr;
    reg [7:0] data_in;
    wire [7:0] value;

    // DUT instantiation
    spr dut (
        .clk(clk),
        .read(read),
        .write(write),
        .cs(cs),
        .addr(addr),
        .data_in(data_in),
        .value(value)
    );

    // Clock generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize signals
        cs = 0;
        read = 0;
        write = 0;
        addr = 0;
        data_in = 0;

        #10;

        // ----------------------------
        // WRITE OPERATION
        // ----------------------------
        cs = 1;
        write = 1;
        read = 0;

        addr = 4'h3; data_in = 8'hA5; #10;
        addr = 4'h7; data_in = 8'h3C; #10;
        addr = 4'hF; data_in = 8'hFF; #10;

        // Stop write
        write = 0;
        #10;

        // ----------------------------
        // READ OPERATION
        // ----------------------------
        read = 1;

        addr = 4'h3; #10;
        addr = 4'h7; #10;
        addr = 4'hF; #10;

        // Stop read
        read = 0;
        #10;

        // ----------------------------
        // CS DISABLED CHECK
        // ----------------------------
        cs = 0;
        addr = 4'h3;
        #10;

        // Finish simulation
        $finish;
    end

endmodule
