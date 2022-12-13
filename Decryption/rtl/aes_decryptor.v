module aes_decryptor(data_in,key_in,data_out);
    input[127:0] data_in,key_in;
    output[127:0] data_out;
    wire[127:0] rout0,rout1,rout2,rout3,rout4,rout5,rout6,rout7,rout8,rout9;
    wire[127:0] key_exp[10:0];

    // Key Expansion
    key_expansion kexp(key_in,key_exp);

    round_zero rnd0(data_in,key_exp[10],rout0);

    // Intermediate round (i.e. 1 to 9)
    round rnd1(rout0,key_exp[9],rout1);
    round rnd2(rout1,key_exp[8],rout2);
    round rnd3(rout2,key_exp[7],rout3);
    round rnd4(rout3,key_exp[6],rout4);
    round rnd5(rout4,key_exp[5],rout5);
    round rnd6(rout5,key_exp[4],rout6);
    round rnd7(rout6,key_exp[3],rout7);
    round rnd8(rout7,key_exp[2],rout8);
    round rnd9(rout8,key_exp[1],rout9);

    // Last Round i.e. round 10;
    assign data_out = rout9 ^ key_exp[0];
    
endmodule