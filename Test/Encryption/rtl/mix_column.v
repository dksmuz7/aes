module mix_column(data_in,data_out);
    input[127:0] data_in;
    output[127:0] data_out;

    mul_32bit m0(data_in[127:120],data_in[119:112],data_in[111:104],data_in[103:96],data_out[127:120]);
    mul_32bit m1(data_in[119:112],data_in[111:104],data_in[103:96],data_in[127:120],data_out[119:112]);
    mul_32bit m2(data_in[111:104],data_in[103:96],data_in[127:120],data_in[119:112],data_out[111:104]);
    mul_32bit m3(data_in[103:96],data_in[127:120],data_in[119:112],data_in[111:104],data_out[103:96]);
    
    mul_32bit m4(data_in[95:88],data_in[87:80],data_in[79:72],data_in[71:64],data_out[95:88]);
    mul_32bit m5(data_in[87:80],data_in[79:72],data_in[71:64],data_in[95:88],data_out[87:80]);
    mul_32bit m6(data_in[79:72],data_in[71:64],data_in[95:88],data_in[87:80],data_out[79:72]);
    mul_32bit m7(data_in[71:64],data_in[95:88],data_in[87:80],data_in[79:72],data_out[71:64]);
    
    mul_32bit m8(data_in[63:56],data_in[55:48],data_in[47:40],data_in[39:32],data_out[63:56]);
    mul_32bit m9(data_in[55:48],data_in[47:40],data_in[39:32],data_in[63:56],data_out[55:48]);
    mul_32bit m10(data_in[47:40],data_in[39:32],data_in[63:56],data_in[55:48],data_out[47:40]);
    mul_32bit m11(data_in[39:32],data_in[63:56],data_in[55:48],data_in[47:40],data_out[39:32]);
    
    mul_32bit m12(data_in[31:24],data_in[23:16],data_in[15:8],data_in[7:0],data_out[31:24]);
    mul_32bit m13(data_in[23:16],data_in[15:8],data_in[7:0],data_in[31:24],data_out[23:16]);
    mul_32bit m14(data_in[15:8],data_in[7:0],data_in[31:24],data_in[23:16],data_out[15:8]);
    mul_32bit m15(data_in[7:0],data_in[31:24],data_in[23:16],data_in[15:8],data_out[7:0]);
    
endmodule