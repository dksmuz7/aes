module round(round_num,data_in,key_in,key_out,round_out);
    input[3:0] round_num;
    input[127:0] data_in;
    input[127:0] key_in;
    output[127:0] key_out,round_out;
    wire[127:0] sbyte_out,sr_out,mixcl_out;

    // Step - 1 : Add key
    key_gen kg0(round_num,key_in,key_out);
    // Step - 2 : Substitute byte
    sub_bytes sbyte0(data_in,sbyte_out);
    // Step - 3 : Shift Rows
    shift_rows sr0(sbyte_out,sr_out);
    // Step - 4 : Mix Column
    mix_column mixcl0(sr_out,mixcl_out);
    
    assign round_out = key_out ^ mixcl_out;
endmodule