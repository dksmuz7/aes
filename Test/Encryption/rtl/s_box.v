// Substitution box;

module s_box(ij,sij);
    input[7:0] ij;	// hexadecimal row and column number
    output[7:0] sij;	// corresponding element of sbox (i,j);
    reg[7:0] sij;

    always @(ij)
    case(ij)
	// 0th Row
	8'h00: sij=8'h63;
	8'h01: sij=8'h7c;
	8'h02: sij=8'h77;
	8'h03: sij=8'h7b;
	8'h04: sij=8'hf2;
	8'h05: sij=8'h6b;
	8'h06: sij=8'h6f;
	8'h07: sij=8'hc5;
	8'h08: sij=8'h30;
	8'h09: sij=8'h01;
	8'h0a: sij=8'h67;
	8'h0b: sij=8'h2b;
	8'h0c: sij=8'hfe;
	8'h0d: sij=8'hd7;
	8'h0e: sij=8'hab;
	8'h0f: sij=8'h76;

	// 1st row
	8'h10: sij=8'hca;
	8'h11: sij=8'h82;
	8'h12: sij=8'hc9;
	8'h13: sij=8'h7d;
	8'h14: sij=8'hfa;
	8'h15: sij=8'h59;
	8'h16: sij=8'h47;
	8'h17: sij=8'hf0;
	8'h18: sij=8'had;
	8'h19: sij=8'hd4;
	8'h1a: sij=8'ha2;
	8'h1b: sij=8'haf;
	8'h1c: sij=8'h9c;
	8'h1d: sij=8'ha4;
	8'h1e: sij=8'h72;
	8'h1f: sij=8'hc0;

	// 2nd Row
	8'h20: sij=8'hb7;
	8'h21: sij=8'hfd;
	8'h22: sij=8'h93;
	8'h23: sij=8'h26;
	8'h24: sij=8'h36;
	8'h25: sij=8'h3f;
	8'h26: sij=8'hf7;
	8'h27: sij=8'hcc;
	8'h28: sij=8'h34;
	8'h29: sij=8'ha5;
	8'h2a: sij=8'he5;
	8'h2b: sij=8'hf1;
	8'h2c: sij=8'h71;
	8'h2d: sij=8'hd8;
	8'h2e: sij=8'h31;
	8'h2f: sij=8'h15;

	// 3rd Row
	8'h30: sij=8'h04;
	8'h31: sij=8'hc7;
	8'h32: sij=8'h23;
	8'h33: sij=8'hc3;
	8'h34: sij=8'h18;
	8'h35: sij=8'h96;
	8'h36: sij=8'h05;
	8'h37: sij=8'h9a;
	8'h38: sij=8'h07;
	8'h39: sij=8'h12;
	8'h3a: sij=8'h80;
	8'h3b: sij=8'he2;
	8'h3c: sij=8'heb;
	8'h3d: sij=8'h27;
	8'h3e: sij=8'hb2;
	8'h3f: sij=8'h75;

	// 4th Row
	8'h40: sij=8'h09;
	8'h41: sij=8'h83;
	8'h42: sij=8'h2c;
	8'h43: sij=8'h1a;
	8'h44: sij=8'h1b;
	8'h45: sij=8'h6e;
	8'h46: sij=8'h5a;
	8'h47: sij=8'ha0;
	8'h48: sij=8'h52;
	8'h49: sij=8'h3b;
	8'h4a: sij=8'hd6;
	8'h4b: sij=8'hb3;
	8'h4c: sij=8'h29;
	8'h4d: sij=8'he3;
	8'h4e: sij=8'h2f;
	8'h4f: sij=8'h84;

	// 5th Row
	8'h50: sij=8'h53;
	8'h51: sij=8'hd1;
	8'h52: sij=8'h00;
	8'h53: sij=8'hed;
	8'h54: sij=8'h20;
	8'h55: sij=8'hfc;
	8'h56: sij=8'hb1;
	8'h57: sij=8'h5b;
	8'h58: sij=8'h6a;
	8'h59: sij=8'hcb;
	8'h5a: sij=8'hbe;
	8'h5b: sij=8'h39;
	8'h5c: sij=8'h4a;
	8'h5d: sij=8'h4c;
	8'h5e: sij=8'h58;
	8'h5f: sij=8'hcf;

	// 6th Row
	8'h60: sij=8'hd0;
	8'h61: sij=8'hef;
	8'h62: sij=8'haa;
	8'h63: sij=8'hfb;
	8'h64: sij=8'h43;
	8'h65: sij=8'h4d;
	8'h66: sij=8'h33;
	8'h67: sij=8'h85;
	8'h68: sij=8'h45;
	8'h69: sij=8'hf9;
	8'h6a: sij=8'h02;
	8'h6b: sij=8'h7f;
	8'h6c: sij=8'h50;
	8'h6d: sij=8'h3c;
	8'h6e: sij=8'h9f;
	8'h6f: sij=8'ha8;

	// 7th Row
	8'h70: sij=8'h51;
	8'h71: sij=8'ha3;
	8'h72: sij=8'h40;
	8'h73: sij=8'h8f;
	8'h74: sij=8'h92;
	8'h75: sij=8'h9d;
	8'h76: sij=8'h38;
	8'h77: sij=8'hf5;
	8'h78: sij=8'hbc;
	8'h79: sij=8'hb6;
	8'h7a: sij=8'hda;
	8'h7b: sij=8'h21;
	8'h7c: sij=8'h10;
	8'h7d: sij=8'hff;
	8'h7e: sij=8'hf3;
	8'h7f: sij=8'hd2;

	// 8th Row
	8'h80: sij=8'hcd;
	8'h81: sij=8'h0c;
	8'h82: sij=8'h13;
	8'h83: sij=8'hec;
	8'h84: sij=8'h5f;
	8'h85: sij=8'h97;
	8'h86: sij=8'h44;
	8'h87: sij=8'h17;
	8'h88: sij=8'hc4;
	8'h89: sij=8'ha7;
	8'h8a: sij=8'h7e;
	8'h8b: sij=8'h3d;
	8'h8c: sij=8'h64;
	8'h8d: sij=8'h5d;
	8'h8e: sij=8'h19;
	8'h8f: sij=8'h73;

	// 9th Row
	8'h90: sij=8'h60;
	8'h91: sij=8'h81;
	8'h92: sij=8'h4f;
	8'h93: sij=8'hdc;
	8'h94: sij=8'h22;
	8'h95: sij=8'h2a;
	8'h96: sij=8'h90;
	8'h97: sij=8'h88;
	8'h98: sij=8'h46;
	8'h99: sij=8'hee;
	8'h9a: sij=8'hb8;
	8'h9b: sij=8'h14;
	8'h9c: sij=8'hde;
	8'h9d: sij=8'h5e;
	8'h9e: sij=8'h0b;
	8'h9f: sij=8'hdb;

	// 10th row
	8'ha0: sij=8'he0;
	8'ha1: sij=8'h32;
	8'ha2: sij=8'h3a;
	8'ha3: sij=8'h0a;
	8'ha4: sij=8'h49;
	8'ha5: sij=8'h06;
	8'ha6: sij=8'h24;
	8'ha7: sij=8'h5c;
	8'ha8: sij=8'hc2;
	8'ha9: sij=8'hd3;
	8'haa: sij=8'hac;
	8'hab: sij=8'h62;
	8'hac: sij=8'h91;
	8'had: sij=8'h95;
	8'hae: sij=8'he4;
	8'haf: sij=8'h79;

	// 11th Row
	8'hb0: sij=8'he7;
	8'hb1: sij=8'hc8;
	8'hb2: sij=8'h37;
	8'hb3: sij=8'h6d;
	8'hb4: sij=8'h8d;
	8'hb5: sij=8'hd5;
	8'hb6: sij=8'h4e;
	8'hb7: sij=8'ha9;
	8'hb8: sij=8'h6c;
	8'hb9: sij=8'h56;
	8'hba: sij=8'hf4;
	8'hbb: sij=8'hea;
	8'hbc: sij=8'h65;
	8'hbd: sij=8'h7a;
	8'hbe: sij=8'hae;
	8'hbf: sij=8'h08;

	//  12th Row
	8'hc0: sij=8'hba;
	8'hc1: sij=8'h78;
	8'hc2: sij=8'h25;
	8'hc3: sij=8'h2e;
	8'hc4: sij=8'h1c;
	8'hc5: sij=8'ha6;
	8'hc6: sij=8'hb4;
	8'hc7: sij=8'hc6;
	8'hc8: sij=8'he8;
	8'hc9: sij=8'hdd;
	8'hca: sij=8'h74;
	8'hcb: sij=8'h1f;
	8'hcc: sij=8'h4b;
	8'hcd: sij=8'hbd;
	8'hce: sij=8'h8b;
	8'hcf: sij=8'h8a;

	// 13th row
	8'hd0: sij=8'h70;
	8'hd1: sij=8'h3e;
	8'hd2: sij=8'hb5;
	8'hd3: sij=8'h66;
	8'hd4: sij=8'h48;
	8'hd5: sij=8'h03;
	8'hd6: sij=8'hf6;
	8'hd7: sij=8'h0e;
	8'hd8: sij=8'h61;
	8'hd9: sij=8'h35;
	8'hda: sij=8'h57;
	8'hdb: sij=8'hb9;
	8'hdc: sij=8'h86;
	8'hdd: sij=8'hc1;
	8'hde: sij=8'h1d;
	8'hdf: sij=8'h9e;

	// 14th row
	8'he0: sij=8'he1;
	8'he1: sij=8'hf8;
	8'he2: sij=8'h98;
	8'he3: sij=8'h11;
	8'he4: sij=8'h69;
	8'he5: sij=8'hd9;
	8'he6: sij=8'h8e;
	8'he7: sij=8'h94;
	8'he8: sij=8'h9b;
	8'he9: sij=8'h1e;
	8'hea: sij=8'h87;
	8'heb: sij=8'he9;
	8'hec: sij=8'hce;
	8'hed: sij=8'h55;
	8'hee: sij=8'h28;
	8'hef: sij=8'hdf;

	// 15th row
	8'hf0: sij=8'h8c;
	8'hf1: sij=8'ha1;
	8'hf2: sij=8'h89;
	8'hf3: sij=8'h0d;
	8'hf4: sij=8'hbf;
	8'hf5: sij=8'he6;
	8'hf6: sij=8'h42;
	8'hf7: sij=8'h68;
	8'hf8: sij=8'h41;
	8'hf9: sij=8'h99;
	8'hfa: sij=8'h2d;
	8'hfb: sij=8'h0f;
	8'hfc: sij=8'hb0;
	8'hfd: sij=8'h54;
	8'hfe: sij=8'hbb;
	8'hff: sij=8'h16;

    endcase
endmodule