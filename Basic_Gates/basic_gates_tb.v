`timescale 1ns/1ps

module basic_gates_tb;

reg a, b;
wire and_out, or_out, not_out, xor_out;

// Instantiate the DUT (Device Under Test)
basic_gates uut (
    .a(a),
    .b(b),
    .and_out(and_out),
    .or_out(or_out),
    .not_out(not_out),
    .xor_out(xor_out)
);

initial begin
    // For waveform dumping (GTKWave / ModelSim)
    $dumpfile("basic_gates.vcd");
    $dumpvars(0, basic_gates_tb);

    // Display output in console
    $monitor("Time=%0t | A=%b B=%b | AND=%b OR=%b NOT=%b XOR=%b",
              $time, a, b, and_out, or_out, not_out, xor_out);

    // Test cases
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end

endmodule