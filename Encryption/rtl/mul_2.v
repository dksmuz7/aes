module mul_2(data_in,data_out);
    input[7:0] data_in;         // 8 bit number to be multiply by 2;
    output reg[7:0] data_out;   // multiplied result

    assign data_out = {data_in[6:0],1'b0};
    
endmodule