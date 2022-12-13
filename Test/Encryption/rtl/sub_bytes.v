module sub_bytes(data_in,sbyte_out);
    input[127:0] data_in;	// 128 bit input data
    output[127:0] sbyte_out;// 128 bit output data

    // 16 instantiation of s_box module (16x8 = 128);
    s_box sbox0(data_in[127:120],sbyte_out[127:120]);
    s_box sbox1(data_in[119:112],sbyte_out[119:112]);
    s_box sbox2(data_in[111:104],sbyte_out[111:104]);
    s_box sbox3(data_in[103:96],sbyte_out[103:96]);

    s_box sbox4(data_in[95:88],sbyte_out[95:88]);
    s_box sbox5(data_in[87:80],sbyte_out[87:80]);
    s_box sbox6(data_in[79:72],sbyte_out[79:72]);
    s_box sbox7(data_in[71:64],sbyte_out[71:64]);

    s_box sbox8(data_in[63:56],sbyte_out[63:56]);
    s_box sbox9(data_in[55:48],sbyte_out[55:48]);
    s_box sbox10(data_in[47:40],sbyte_out[47:40]);
    s_box sbox11(data_in[39:32],sbyte_out[39:32]);

    s_box sbox12(data_in[31:24],sbyte_out[31:24]);
    s_box sbox13(data_in[23:16],sbyte_out[23:16]);
    s_box sbox14(data_in[15:8],sbyte_out[15:8]);
    s_box sbox15(data_in[7:0],sbyte_out[7:0]);
endmodule
