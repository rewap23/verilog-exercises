module fulladder (
    input a, b, cin,
    output cout, sum
);
    always @(*) begin 
        {cout, sum} = a ^ b ^ cin;
    end

endmodule