module inv_mix_32bit(data_in,data_out);
    input[31:0] data_in;
    output[31:0] data_out;

    function [7:0] mul_2(input[7:0] in);
        mul_2 = {in[6:0],1'b0}^{8'h1b & {8{in[7]}}};
    endfunction
    
    function [7:0] mul_4(input[7:0] in);
        mul_4 = mul_2(mul_2(in));
    endfunction
    
    function [7:0] mul_8(input[7:0] in);
        mul_8 = mul_2(mul_4(in));
    endfunction
    
    function [7:0] mul_9(input[7:0] in);
        mul_9 = mul_8(in) ^ in;
    endfunction
    
    function [7:0] mul_11(input[7:0] in);
        mul_11 = mul_8(in) ^ mul_2(in) ^ in;
    endfunction

    function [7:0] mul_13(input[7:0] in);
        mul_13 = mul_8(in) ^ mul_4(in) ^ in;
    endfunction
    
    function [7:0] mul_14(input[7:0] in);
        mul_14 = mul_8(in) ^ mul_4(in) ^ mul_2(in);
    endfunction

    assign data_out[31:24] = mul_14(data_in[31:24]) ^ mul_11(data_in[23:16]) ^ mul_13(data_in[15:8]) ^ mul_9(data_in[7:0]);
    assign data_out[23:16] = mul_9(data_in[31:24]) ^ mul_14(data_in[23:16]) ^ mul_11(data_in[15:8]) ^ mul_13(data_in[7:0]);
    assign data_out[15:8] = mul_13(data_in[31:24]) ^ mul_9(data_in[23:16]) ^ mul_14(data_in[15:8]) ^ mul_11(data_in[7:0]);
    assign data_out[7:0] = mul_11(data_in[31:24]) ^ mul_13(data_in[23:16]) ^ mul_9(data_in[15:8]) ^ mul_14(data_in[7:0]);

endmodule