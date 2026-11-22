module mux_256_to_1 (
    input [255:0]   in,  // 256 input
    input [7:0]     sel, // 8 bit selector, since 2^8 = 256

    output reg      y
);
    always @(*) begin 
        y = in[sel];
    end

endmodule