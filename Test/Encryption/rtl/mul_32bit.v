module mul_32bit(in1,in2,in3,in4,data_out);
    input[7:0] in1,in2,in3,in4;
    output[7:0] data_out;

    assign data_out[7]=in1[6]^in2[6]^in2[7]^in3[7]^in4[7];
    assign data_out[6]=in1[5]^in2[5]^in2[6]^in3[6]^in4[6];
    assign data_out[5]=in1[4]^in2[4]^in2[5]^in3[5]^in4[5];
    assign data_out[4]=in1[3]^in2[3]^in2[4]^in3[4]^in4[4]^in1[7]^in2[7];
    assign data_out[3]=in1[2]^in2[2]^in2[3]^in3[3]^in4[3]^in1[7]^in2[7];
    assign data_out[2]=in1[1]^in2[1]^in2[2]^in3[2]^in4[2];
    assign data_out[1]=in1[0]^in2[0]^in2[1]^in3[1]^in4[1]^in1[7]^in2[7];
    assign data_out[0]=in1[7]^in2[7]^in2[0]^in3[0]^in4[0];
    
endmodule