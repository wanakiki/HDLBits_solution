module top_module ( input a, input b, output out );
    mod_a instance1 (.in1(a), .in2(b), .out(out));
    // 注意instance为关键字不能直接使用
endmodule
