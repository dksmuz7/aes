module mix_column(data_in,data_out);
    input[127:0] data_in;
    output[127:0] data_out;

    mul_32bit m0(data_in[127:96],data_out[127:96]);
    mul_32bit m1(data_in[95:64],data_out[95:64]);
    mul_32bit m2(data_in[63:32],data_out[63:32]);
    mul_32bit m3(data_in[31:0],data_out[31:0]);
    
endmodule