module tb_lipu2;
reg X0,X1,X2,X3;
wire G,F,H;
Lipu2 uut (.x0(X0),.x1(X1),.x2(X2),.x3(X3),.g(G),.f(F),.h(H));
initial begin
$display("X0 X1 X2 X3 | G F H");
$monitor(" %b %b %b %b | %b %b %b",X0,X1,X2,X3,G,F,H);
 X0 = 0; X1 = 0; X2 = 0; X3 = 0; 
#10 X0 = 1; X1 = 0; X2 = 1; X3 = 0; 
#10 X0 = 0; X1 = 1; X2 = 0; X3 = 1; 
#10 X0 = 1; X1 = 1; X2 = 1; X3 = 1; 
#10 $finish;
end
endmodule