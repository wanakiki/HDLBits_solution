module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] low_sum, carry_sum, no_carry_sum, high_sum;
    wire low_carry;

    
    add16 u1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(low_sum), .cout(low_carry));
    add16 u2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(carry_sum), .cout());
    add16 u3(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(no_carry_sum), .cout());

    // always @(*) begin
    //     if (low_carry == 1'b0) begin
    //         high_sum = no_carry_sum;
    //     end
    //     else begin 
    //         high_sum = carry_sum;
    //     end
    // end
    assign high_sum = (low_carry == 1'b1) ? carry_sum : no_carry_sum;
    assign sum = {high_sum, low_sum};

endmodule
