module top_module ( input clk, input d, output q );
    wire dff1_out, dff2_out;
    my_dff dff1(clk, d, dff1_out);
    my_dff dff2(clk, dff1_out, dff2_out);
    my_dff dff3(clk, dff2_out, q);
endmodule
