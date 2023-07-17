module top_module( 
    input a, 
    input b, 
    output out );
    
    wire c;
    assign c = a | b;
    assign out = ~c;

endmodule
