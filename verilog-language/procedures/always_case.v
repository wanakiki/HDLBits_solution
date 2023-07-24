// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
            5: out = data5;
            4: out = data4;
            3: out = data3;
            2: out = data2;
            1: out = data1;
            0: out = data0;
            default: out = 4'b0;
        endcase
    end

endmodule
