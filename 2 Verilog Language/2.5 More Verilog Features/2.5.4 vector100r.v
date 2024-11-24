module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always @(in) begin
        for(i=0;i<100;i++) begin
            out[i] = in[99-i]; 
        end
    end
endmodule

module top_module ( 
    input [99:0] in,
    output [99:0] out
); 
    // genvar keyword in Verilog is used to declare a variable specifically for use in a generate block
    genvar i;
    // used in repetitive pattern that can be automated
    generate
        for (i = 0; i < 100; i = i + 1) begin : reverse_bits
            assign out[i] = in[99-i];
        end
    endgenerate
    
endmodule
