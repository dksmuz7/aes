module key_expansion(key_in,key_out);
    input[127:0] key_in;
    output[127:0] key_out[10:0];

    assign key_out[0] = key_in;                 // Round 0 Key;
    key_gen kg1(4'h0,key_out[0],key_out[1]);    // Round 1 key;
    key_gen kg2(4'h1,key_out[1],key_out[2]);    // Round 2 key;
    key_gen kg3(4'h2,key_out[2],key_out[3]);    // Round 3 key;
    key_gen kg4(4'h3,key_out[3],key_out[4]);    // Round 4 key;
    key_gen kg5(4'h4,key_out[4],key_out[5]);    // Round 5 key;
    key_gen kg6(4'h5,key_out[5],key_out[6]);    // Round 6 key;
    key_gen kg7(4'h6,key_out[6],key_out[7]);    // Round 7 key;
    key_gen kg8(4'h7,key_out[7],key_out[8]);    // Round 8 key;
    key_gen kg9(4'h8,key_out[8],key_out[9]);    // Round 9 key;
    key_gen kg10(4'h9,key_out[9],key_out[10]);  // Round 10 key;

endmodule