module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] s1, s2, c;
    add16 add1(a[15:0], b[15:0], 1'b0, s1, c);
    add16 add2(a[31:16], b[31:16], c, s2);
    assign sum = {s2, s1};

endmodule
