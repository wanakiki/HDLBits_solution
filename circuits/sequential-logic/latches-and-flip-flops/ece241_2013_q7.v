module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always @(posedge clk) begin
        if(j && k) begin
            Q <= ~Q;
        end else if(j) begin
            Q <= 1'b1;
        end else if(k) begin
            Q <= 1'b0;
        end else begin
            Q <= Q;
        end
    end
endmodule
