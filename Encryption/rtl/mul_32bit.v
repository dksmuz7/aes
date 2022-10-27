module mul_32bit(data_in,data_out);
    input[31:0] data_in;
    output[31:0] data_out;

    wire[7:0] m2_out0,m2_out1,m2_out2,m2_out3;
    wire[7:0] m3_out0,m3_out1,m3_out2,m3_out3;

    mul_2 m20(data_in[31:24],m2_out0);
    mul_2 m21(data_in[23:16],m2_out1);
    mul_2 m22(data_in[15:8],m2_out2);
    mul_2 m23(data_in[7:0],m2_out3);

    mul_3 m30(data_in[31:24],m3_out0);
    mul_3 m31(data_in[23:16],m3_out1);
    mul_3 m32(data_in[15:8],m3_out2);
    mul_3 m33(data_in[7:0],m3_out3);

    assign data_out = {m3_out0^data_in[23:8]^m2_out3,
                       data_in[31:16]^m2_out2^m3_out3,
                       data_in[31:24]^m2_out2,m3_out2^data_in[7:0],
                       m2_out0,m3_out2^data_in[15:0]};
endmodule