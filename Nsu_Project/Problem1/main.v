module Lipu(w_out,r_sel1,r_sel2);
output w_out;
input r_sel1,r_sel2;
assign w_out = ~(r_sel1 & r_sel2);
endmodule 
