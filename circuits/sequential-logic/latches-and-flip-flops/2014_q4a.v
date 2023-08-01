module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire in1, in2;
    always @(posedge clk) begin
        if(E) begin
            in1 = w;
        end else begin
            in1 = Q;
        end

        if(L) begin
            in2 = R;
        end else begin
            in2 = in1;
        end

        Q = in2;
    end
endmodule
