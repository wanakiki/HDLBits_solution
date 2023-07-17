module top_module (input x, input y, output z);
    wire a1, a2, b1, b2;
    A IA1(x, y, a1);
    A IA2(x, y, a2);
    B IB1(x, y, b1);
    B IB2(x, y, b2);

    assign z = (a1 | b1) ^ (a2 & b2);
endmodule


module A (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module B ( input x, input y, output z );
    // 观察可知为同或逻辑
    assign z = x ^~ y;
endmodule

