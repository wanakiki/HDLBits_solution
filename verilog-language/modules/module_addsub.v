module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] real_b;
    wire low_carry;


    assign real_b = b ^ {32{sub}};
    add16 u1(.a(a[15:0]), .b(real_b[15:0]), .cin(sub), .sum(sum[15:0]), .cout(low_carry));
    add16 u2(.a(a[31:16]), .b(real_b[31:16]), .cin(low_carry), .sum(sum[31:16]), .cout());
endmodule
