`timescale 1 ns / 1 ps

module tb;

    // Testbench signals
    reg clk;
    wire [3:0] led;

    // Instantiate the DUT (Device Under Test)
    top dut (
        .clk(clk),
        .led(led)
    );

    // Clock generation: 50 MHz clock (20 ns period)
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // Toggle clock every 10 ns
    end

    // Simulation control
    initial begin
        // Initialize simulation
        $dumpfile("tb.vcd"); // For waveform generation
        $dumpvars(0, tb);

        // Run simulation for a specific duration
        #1_000_000; // Simulate for 1 ms
        $finish; // End simulation
    end

endmodule