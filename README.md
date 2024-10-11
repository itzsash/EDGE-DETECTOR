# Positive and Negative Edge Detector
This repository contains a **Positive and Negative Edge Detector** implemented in Verilog. The edge detector is a fundamental component in digital systems, used to detect changes in the state of a signal, specifically transitions from low to high (positive edge) and high to low (negative edge).

## What is an Edge Detector?
An **edge detector** is a digital circuit that responds to changes in a signal's state. It can identify the moment a signal transitions from one level to another, which is crucial in many applications such as timing analysis, clock signal management, and data synchronization.

![both_edge](https://github.com/user-attachments/assets/1a4a977c-53f0-4398-8a4e-025a787957a6)

## Key Features of the Edge Detector
This design can detect both positive and negative edges of a clock or data signal, providing flexibility for various applications.

### Supported Features:
- **Positive Edge Detection**: Identifies the transition from low to high (0 to 1).
- **Negative Edge Detection**: Identifies the transition from high to low (1 to 0).
- **Single Signal Input**: The detector operates on a single input signal to provide both edge detections.

### Operation:
1. **Input Signal**: The edge detector takes a single digital input signal (`signal_in`).
2. **Edge Detection Logic**: The circuit monitors the input signal and captures changes between clock cycles.
3. **Output Signals**: 
   - **pos_edge**: Asserts high for one clock cycle when a positive edge is detected.
   - **neg_edge**: Asserts high for one clock cycle when a negative edge is detected.

## Design Considerations:
- **Clock Synchronization**: The detector operates based on a clock signal, ensuring that edge detection is synchronized with other system operations.
- **Debouncing**: The design may need additional logic to handle signal noise or bouncing in mechanical switches.

## Advantages:
- **Simplicity**: The edge detector is simple to implement and understand, making it suitable for a wide range of applications.
- **Low Latency**: The response to edge changes is immediate, providing quick detection for fast signal transitions.

## Applications:
- **Clock Signal Management**: Used in clock signal circuits to detect edges for timing applications.
- **Data Synchronization**: Essential in systems that require precise timing for data transmission and reception.
- **Event Triggering**: Can be utilized in event-driven architectures where actions are triggered by signal changes.

## Testbench and Verification:
- **Simulation**: A Verilog testbench is provided to verify the functionality of the edge detector. It tests various input scenarios, including rapid signal changes.
- **Edge Cases**: The testbench ensures correct behavior for various signal transitions and noise scenarios.

## Key Components:
- **Edge Detection Logic**: Implements logic to determine the state of the input signal and assert the corresponding edge output signals.
- **Clock Signal**: Synchronizes the edge detection process to ensure accurate timing.

## Example Configuration:
- **Input Signal Width**: 1 bit
- **Design Language**: Verilog
- **Output Signals**: Provides separate outputs for positive and negative edges.

## Output:

![Screenshot 2024-10-11 210516](https://github.com/user-attachments/assets/04313664-4842-45b9-ab57-7a19f3e662a2)

![Screenshot 2024-10-11 210720](https://github.com/user-attachments/assets/6190ea42-bfab-484e-8ff7-eaefce007c8e)


## Future Enhancements:
- **Multi-Signal Detection**: Expanding the design to detect edges on multiple input signals simultaneously.
- **Configurable Sensitivity**: Allowing configurable thresholds for edge detection to handle noisy signals.
- **Integration with Other Components**: Developing interfaces for easy integration with other digital components.

## Contributing:
Contributions, suggestions, and improvements are welcome! Feel free to open issues or submit pull requests.
