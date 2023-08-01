module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    assign out_both = {in[3] & in[2], in[2] & in[1], in[1] & in[0]};
    assign out_any = {in[3] | in[2], in[2] | in[1], in[1] | in[0]};
    assign out_different = {in[0] ^ in[3], in[3] ^ in[2], in[2] ^ in[1], in[1] ^ in[0]};


    // 可以直接这样写 更简单
    // assign out_both = in[2:0] & in[3:1];
    // assign out_different = in ^ {in[0], in[3:1]};
endmodule
