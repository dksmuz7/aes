module mul_3(data_in,data_out);
    input[7:0] data_in;
    output reg[7:0] data_out;
    wire [7:0] w;

    mul_2 m0(data_in,w);
    assign data_out = w^data_in;
endmodule