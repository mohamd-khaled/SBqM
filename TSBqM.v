module TSBqM ;
parameter n=3;
reg [1:0]Tcount;
reg reset,backphoto,forwardphoto;
wire [n+1:0]Wtime;
wire [n-1:0]Pcount;
wire full,empty;
SBqM test(Tcount,reset,backphoto,forwardphoto,Wtime,Pcount,full,empty);
initial begin
    #5;reset=1;Tcount=2'b01;backphoto=1;forwardphoto=0;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=1;Tcount=2'b11;backphoto=1;forwardphoto=0;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b01;backphoto=0;forwardphoto=1;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b11;backphoto=1;forwardphoto=1;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b10;backphoto=0;forwardphoto=1;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b01;backphoto=1;forwardphoto=1;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b11;backphoto=0;forwardphoto=1;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b11;backphoto=1;forwardphoto=0;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b01;backphoto=1;forwardphoto=1;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
    #5;reset=0;Tcount=2'b01;backphoto=1;forwardphoto=0;
    #5;$monitor("Tcount=%b wtime=%b pcount=%b full=%b empty=%b",Tcount,Wtime,Pcount,full,empty);
end
endmodule