module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire[7:0] dff1_out, dff2_out, dff3_out;
    my_dff8 dff1 (clk, d, dff1_out);
    my_dff8 dff2 (clk, dff1_out, dff2_out);
    my_dff8 dff3 (clk, dff2_out, dff3_out);

    reg[7:0] tmp;

    always @(*) begin
        if (sel == 2'b00)
            tmp = d;
        else if (sel == 2'b01)
            tmp = dff1_out;
        else if (sel == 2'b10)
            tmp = dff2_out;
        else
            tmp = dff3_out;
    end

    assign q = tmp;
    
endmodule
