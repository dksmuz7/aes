module round_zero(data_in,key_in,round_out);
    input[127:0] data_in,key_in;
    output[127:0] round_out;

    wire [127:0] inv_sbyte_out,inv_sr_out,temp_out;

    // Add round key (key_in)
    assign temp_out = data_in ^ key_in;

    // Inverse shift row;
    inv_shift_rows invsr0(temp_out,inv_sr_out);

    // Inverse sub bytes;
    inv_sub_bytes invsbyte0(inv_sr_out,inv_sbyte_out);

    assign round_out = inv_sbyte_out;
endmodule