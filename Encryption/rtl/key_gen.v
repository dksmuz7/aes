module key_gen(round,key_in,key_out);
    input[3:0] round;
    input[127:0] key_in;
    output[127:0] key_out;

    wire[31:0] w0,w1,w2,w3,sij;

    assign w0=key_in[127:96];
    assign w1=key_in[95:64];
    assign w2=key_in[63:32];
    assign w3=key_in[31:0];

    s_box sbox0(w3[23:16],sij[31:24]);
    s_box sbox1(w3[15:8],sij[23:16]);
    s_box sbox2(w3[7:0],sij[15:8]);
    s_box sbox3(w3[31:24],sij[7:0]);

    assign key_out[127:96] = w0 ^ sij ^ round_const(round);
    assign key_out[95:64] = w0 ^ sij ^ round_const(round) ^ w1;
    assign key_out[63:32] = w0 ^ sij ^ round_const(round) ^ w1 ^ w2;
    assign key_out[31:0] = w0 ^ sij ^ round_const(round) ^ w1 ^ w2 ^ w3;

    function[31:0] round_const;
        input [3:0] round_num;
        case(round_num)
            4'h0 : round_const = 32'h01_00_00_00;
            4'h1 : round_const = 32'h02_00_00_00;
            4'h2 : round_const = 32'h04_00_00_00;
            4'h3 : round_const = 32'h08_00_00_00;
            4'h4 : round_const = 32'h10_00_00_00;
            4'h5 : round_const = 32'h20_00_00_00;
            4'h6 : round_const = 32'h40_00_00_00;
            4'h7 : round_const = 32'h80_00_00_00;
            4'h8 : round_const = 32'h1b_00_00_00;
            4'h9 : round_const = 32'h36_00_00_00;
            default: round_const = 32'h00_00_00_00;
        endcase
    endfunction

endmodule
