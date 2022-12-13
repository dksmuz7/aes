module test_all_modules(plain_text,key_in,encrypted_text,decrypted_text);
    input[127:0] plain_text,key_in;
    output[127:0] encrypted_text,decrypted_text;
    wire[127:0] encrypted_text;
    
    // Instantiating the encryption module;
    aes_encryptor encrypt(plain_text,key_in,encrypted_text);
    // Instantiating the decryption module;
    aes_decryptor decrypt(encrypted_text,key_in,decrypted_text);

endmodule