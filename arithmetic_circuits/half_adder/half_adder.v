module half_adder (
    input wire   a,
    input wire   b,

    output wire   sum,
    output wire   carry
); 
    always @(*) begin 
        // a xor b equals sum
        sum = a ^ b;
        // a and b equals carry
        carry = a & b
    end
endmodule