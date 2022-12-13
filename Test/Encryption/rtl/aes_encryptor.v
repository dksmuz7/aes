module aes_encryptor(data_in,key_in,data_out);
    input[127:0] data_in,key_in;
    output[127:0] data_out;
    wire[127:0] rout0,rout1,rout2,rout3,rout4,rout5,rout6,rout7,rout8,rout9;
    wire[127:0] kout1,kout2,kout3,kout4,kout5,kout6,kout7,kout8,kout9;

    assign rout0 = data_in ^ key_in;
    round rnd1(.round_num(4'b0000),.data_in(rout0),.key_in(key_in),.key_out(kout1),.round_out(rout1));
    round rnd2(.round_num(4'b0001),.data_in(rout1),.key_in(kout1),.key_out(kout2),.round_out(rout2));
    round rnd3(.round_num(4'b0010),.data_in(rout2),.key_in(kout2),.key_out(kout3),.round_out(rout3));
    round rnd4(.round_num(4'b0011),.data_in(rout3),.key_in(kout3),.key_out(kout4),.round_out(rout4));
    round rnd5(.round_num(4'b0100),.data_in(rout4),.key_in(kout4),.key_out(kout5),.round_out(rout5));
    round rnd6(.round_num(4'b0101),.data_in(rout5),.key_in(kout5),.key_out(kout6),.round_out(rout6));
    round rnd7(.round_num(4'b0110),.data_in(rout6),.key_in(kout6),.key_out(kout7),.round_out(rout7));
    round rnd8(.round_num(4'b0111),.data_in(rout7),.key_in(kout7),.key_out(kout8),.round_out(rout8));
    round rnd9(.round_num(4'b1000),.data_in(rout8),.key_in(kout8),.key_out(kout9),.round_out(rout9));
    last_round rnd10(.round_num(4'b1001),.data_in(rout9),.key_in(kout9),.round_out(data_out));

endmodule