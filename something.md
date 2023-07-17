``assign``描述的是wire之间的连接关系。


```verilog
module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );

    assign out_both = in[98:0] & in[99:1];
    assign out_any = in[98:0] | in[99:1];
    assign out_different = in ^ {in[0], in[99:1]};

    // 下面这样也可以 使用了扩展
    // assign out_both = in & in[99:1];
endmodule

```

case语句：

```verilog
module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );

    // case语句实现数据选择器
    always @(*) begin
        case (sel)
            4'h0 : out = a;
            4'h1 : out = b;
            4'h2 : out = c;
            4'h3 : out = d;
            4'h4 : out = e;
            4'h5 : out = f;
            4'h6 : out = g;
            4'h7 : out = h;
            4'h8 : out = i;
            default: out = 16'hffff;
        endcase
    end

    // 可以用 '1 实现对所有位赋值
endmodule
```

Bit slicing

```verilog
module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    assign out = in[sel*4 +: 4];

    // Bit slicing 语法，注意运算符与冒号之间不能有空格


    // 也可以直接
    // assign out = {in[sel*4+3], in[sel*4+2], in[sel*4+1], in[sel*4+0]};
endmodule
```