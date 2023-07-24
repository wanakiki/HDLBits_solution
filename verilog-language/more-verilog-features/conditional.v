module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] min_v1, min_v2;
    assign min_v1 = (a < b) ? a : b;
    assign min_v2 = (c < d) ? c : d;
    assign min = (min_v1 < min_v2) ? min_v1 : min_v2;
endmodule
