module SBqM (Tcount,reset,backphoto,forwardphoto,Wtime,Pcount,full,empty);
  parameter n = 3;
  input [1:0]Tcount;
  input reset,backphoto,forwardphoto;
  output [n+1:0]Wtime;
  output [n-1:0]Pcount;
  output full,empty;
  reg full,empty;


      initial 
          begin 
            full=0; empty=1;
          end

miniproject counter1 (.rest(reset),.backphoto(backphoto),.forwardphoto(forwardphoto),.Pcount(Pcount));

ROM ROMU1(.Tcount(Tcount),.Pcount(Pcount),.Wtime(Wtime));

    always @(*)
          begin
            if (Pcount==(2**n -1)) begin full =1;end
            else full =0;
            if (Pcount==0) empty =1;
            else empty=0;
          end
  endmodule


