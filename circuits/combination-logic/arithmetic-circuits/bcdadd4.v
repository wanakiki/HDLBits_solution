module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
	
    wire [3:0] tmp_cout;
    
    genvar i;
    generate 
        for(i = 0; i < 4; i++) begin : BLOCK1
            if(i == 0)
                bcd_fadd u(a[i * 4 + 3 : i * 4], b[i * 4 + 3 : i * 4], cin, tmp_cout[i], sum[i * 4 + 3 : i * 4]);
           	else
                bcd_fadd u(a[i * 4 + 3 : i * 4], b[i * 4 + 3 : i * 4], tmp_cout[i-1], tmp_cout[i], sum[i * 4 + 3 : i * 4]);
        end
    endgenerate
    assign cout = tmp_cout[3];
endmodule
