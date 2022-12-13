module inv_sub_bytes(data_in,data_out);
    input[127:0] data_in;   // Input to substitute the bytes
    output[127:0] data_out; // Substituted output

    // 16 Instantiation of inv_s_box mudule to get 128 bit output;
    inv_s_box invsbox0(data_in[127:120],data_out[127:120]);
    inv_s_box invsbox1(data_in[119:112],data_out[119:112]);
    inv_s_box invsbox2(data_in[111:104],data_out[111:104]);
    inv_s_box invsbox3(data_in[103:96],data_out[103:96]);

    inv_s_box invsbox4(data_in[95:88],data_out[95:88]);
    inv_s_box invsbox5(data_in[87:80],data_out[87:80]);
    inv_s_box invsbox6(data_in[79:72],data_out[79:72]);
    inv_s_box invsbox7(data_in[71:64],data_out[71:64]);

    inv_s_box invsbox8(data_in[63:56],data_out[63:56]);
    inv_s_box invsbox9(data_in[55:48],data_out[55:48]);
    inv_s_box invsbox10(data_in[47:40],data_out[47:40]);
    inv_s_box invsbox11(data_in[39:32],data_out[39:32]);

    inv_s_box invsbox12(data_in[31:24],data_out[31:24]);
    inv_s_box invsbox13(data_in[23:16],data_out[23:16]);
    inv_s_box invsbox14(data_in[15:8],data_out[15:8]);
    inv_s_box invsbox15(data_in[7:0],data_out[7:0]);

endmodule