// Posedge and Negedge Detector
module edge_detector (
    input wire clk,           // Clock input
    input wire reset_n,      // Active low reset
    input wire signal,       // Input signal to detect edges
    output reg posedge_detected, // Output for posedge detection
    output reg negedge_detected // Output for negedge detection
);

    reg signal_prev; // Register to store previous signal state

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            posedge_detected <= 0;
            negedge_detected <= 0;
            signal_prev <= 0;
        end else begin
            // Edge detection logic
            posedge_detected <= (signal && !signal_prev); // Detect positive edge
            negedge_detected <= (!signal && signal_prev); // Detect negative edge
            signal_prev <= signal; // Store the current signal for the next clock cycle
        end
    end
endmodule
