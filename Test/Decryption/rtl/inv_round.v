module inv_round(data_in,key_in,data_out);
    input[127:0] data_in,key_in;
    output[127:0] data_out;
    wire[127:0] inv_sbyte_out,inv_sr_out,inv_mixcl_out,temp;

    // STEP - 1 : Add round key;
    assign temp = data_in ^ key_in;

    // STEP - 2 : Inverse Mix Column;
    inv_mix_column invmixcl0(temp,inv_mixcl_out);

    // STEP - 3 : Inverse Shift Rows
    inv_shift_rows invsr0(inv_mixcl_out,inv_sr_out);

    // STEP - 4 : Inverse sub bytes
    inv_sub_bytes invsbyte0(inv_sr_out,inv_sbyte_out);

    assign data_out = inv_sbyte_out;
endmodule