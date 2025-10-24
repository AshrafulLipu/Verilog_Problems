module tb_Lipu;
reg r_Sel1;
reg r_Sel2;
wire w_Out;
Lipu rsw(
.r_sel1(r_Sel1),
.r_sel2(r_Sel2),
.w_out(w_Out)
);
initial
begin
$monitor($time,"w_Out=%b,r_Sel1=%b,r_Sel2=%b",w_Out,r_Sel1,r_Sel2);
#10 r_Sel1=0; r_Sel2=0;
#10 r_Sel1=0; r_Sel2=1;
#10 r_Sel1=1; r_Sel2=0;
#10 r_Sel1=1; r_Sel2=1;
#10 $finish;
end
endmodule