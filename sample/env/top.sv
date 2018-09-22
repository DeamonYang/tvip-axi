module top();
  timeunit  1ns/1ps;

  import  uvm_pkg::*;
  import  tue_pkg::*;
  import  tvip_axi_types_pkg::*;
  import  tvip_axi_pkg::*;

  bit aclk  = 0;
  initial begin
    forever begin
      #(0.5ns);
      aclk  ^= 1'b1; 
    end
  end

  bit areset_n  = 0;
  initial begin
    #(100ns);
    areset_n  = 1;
  end

  tvip_axi_if axi_if(aclk, areset_n);
endmodule
