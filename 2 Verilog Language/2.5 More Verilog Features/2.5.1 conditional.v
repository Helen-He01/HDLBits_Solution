module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] min1 = (a<b)?a:b;
    wire [7:0] min2 = (c<d)?c:d;
    assign min = (min1<min2)? min1 : min2;

endmodule

//other edition
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] a1, a2, a3;
    assign a1 = a < b ? a:b;
   	assign a2 = c < a1 ? c:a1;
    assign a3 = d < a2 ? d:a2;
    assign min = a3;
    
endmodule
