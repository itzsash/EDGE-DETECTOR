`timescale 1ns / 1ps

module edge_detector_tb;

    // Testbench signals
    reg clk;
    reg reset_n;
    reg signal;
    wire posedge_detected;
    wire negedge_detected;

    // Instantiate the edge detector
    edge_detector uut (
        .clk(clk),
        .reset_n(reset_n),
        .signal(signal),
        .posedge_detected(posedge_detected),
        .negedge_detected(negedge_detected)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 ns clock period
    end

    // Test stimulus
    initial begin
        // Initialize signals
        reset_n = 0; // Assert reset
        signal = 0;

        // Release reset
        #10 reset_n = 1;

        // Test for positive edge detection
        #10 signal = 1; // Positive edge
        #10 signal = 0; // No edge
        #10 signal = 1; // Positive edge
        #10 signal = 0; // No edge
        
        // Test for negative edge detection
        #10 signal = 1; // No edge
        #10 signal = 0; // Negative edge
        #10 signal = 0; // No edge
        #10 signal = 1; // Positive edge
        #10 signal = 0; // Negative edge

        // End simulation
        #10 $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %t | signal: %b | posedge_detected: %b | negedge_detected: %b",
                 $time, signal, posedge_detected, negedge_detected);
    end

endmodule
