module mux2to1 (
    input wire d0,
    input wire d1,
    input wire sel,

    output reg y
);
    always @(*) begin 
        case(sel) 
            1'b0: y = d0;
            1'b1: y = d1;
            default: y = 1'b0;
        endcase
    end
endmodule