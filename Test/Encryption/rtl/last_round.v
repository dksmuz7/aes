module last_round(round_num,data_in,key_in,round_out);
    input[3:0] round_num;
    input[127:0] data_in,key_in;
    output[127:0] round_out;

    wire[127:0] sbyte_out,sr_out,key_out,mixcl_out;

    // Step 1 : Add Key using key expansion algorithm;
    key_gen kg0(round_num,key_in,key_out);
    // Step 2 : Substitute Bytes Transformation
    sub_bytes sbyte0(data_in,sbyte_out);
    // Step 3 : Shift Rows of output of sub_butes;
    shift_rows sr0(sbyte_out,sr_out);

    assign round_out = key_out ^ sr_out;
endmodule