module Lipu2 (
    input  wire x0,
    input  wire x1,
    input  wire x2,
    input  wire x3,
    output wire g,
    output wire f,
    output wire h
);
    wire z0,z1,z2,z3;

    assign z0 = x0 & x2;      
    assign z1 = x1 & x3;      
    assign g  = z0 | z1;      
    assign z2 = x0 | ~x2;     
    assign z3 = x3 | ~x1;     
    assign h  = z2 & z3;     
    assign f  = g | h;   
endmodule
