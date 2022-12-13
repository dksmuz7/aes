module aes_encryptor_tb();
    reg[127:0] key_in,plain_text;
    wire[127:0] cipher_text;

    // Instantiating the module;
    aes_encryptor encrypt(plain_text,key_in,cipher_text);

    initial begin
        plain_text = 128'h3243f6a8885a308d313198a2e0370734;
        key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;

	plain_text = 128'h3f9be5549940d85eb19e2f8b6055d88b;

        $monitor("time = %4d,plain_text = %h,key_in = %h, cipher_text = %h",$time,plain_text,key_in,cipher_text);
        #100000 $finish;
    end
endmodule