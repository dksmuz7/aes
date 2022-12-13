module test_all_modules_tb();
    reg[127:0] key_in,plain_text;
    wire[127:0] encrypted_text,decrypted_text;

    // Instantiating the top level module to check encryption and decryption
    test_all_modules test_module(plain_text,key_in,encrypted_text,decrypted_text);

    initial begin
        plain_text = 128'h3243f6a8885a308d313198a2e0370734;
        key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        #10 $monitor("time=%2d, plain_text=%h, key_in=%h, encrypted_text=%h, decrypted_text=%h",$time,plain_text,key_in,encrypted_text,decrypted_text);
        
        plain_text = 128'h3f9be5549940d85eb19e2f8b6055d88b;
        key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        #10 $monitor("time=%2d, plain_text=%h, key_in=%h, encrypted_text=%h, decrypted_text=%h",$time,plain_text,key_in,encrypted_text,decrypted_text);

        plain_text = 128'ha9b417821e92fbc255152fd3539576ee;
        key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        #10 $monitor("time=%2d, plain_text=%h, key_in=%h, encrypted_text=%h, decrypted_text=%h",$time,plain_text,key_in,encrypted_text,decrypted_text);

        plain_text = 128'hd4d47401f7d5b092336e54ed97307539;
        key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        #10 $monitor("time=%2d, plain_text=%h, key_in=%h, encrypted_text=%h, decrypted_text=%h",$time,plain_text,key_in,encrypted_text,decrypted_text);

        plain_text = 128'h5686832663d7690df44bb71c01e21be5;
        key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;
        #10 $monitor("time=%2d, plain_text=%h, key_in=%h, encrypted_text=%h, decrypted_text=%h",$time,plain_text,key_in,encrypted_text,decrypted_text);

    end
endmodule