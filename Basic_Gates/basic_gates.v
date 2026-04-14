module basic_gates (
    input a,
    input b,
    output and_out,
    output or_out,
    output not_out,
    output xor_out
);

// Logic operations
assign and_out = a & b;
assign or_out  = a | b;
assign not_out = ~a;
assign xor_out = a ^ b;

endmodule