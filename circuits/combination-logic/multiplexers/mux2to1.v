module top_module( 
    input a, b, sel,
    output out ); 
    assign out = sel ? b : a;

    // 或者使用门电路
    // assign out = (sel & b) | (~sel & a);
endmodule
