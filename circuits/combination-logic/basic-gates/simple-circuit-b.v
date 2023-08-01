module top_module ( input x, input y, output z );
    // 观察可知为同或逻辑
    assign z = x ^~ y;
endmodule
