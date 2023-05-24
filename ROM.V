module ROM (Tcount,Pcount,Wtime);    
parameter n=3;
input [1:0]Tcount;
input [n-1:0]Pcount;
output [n+1:0]Wtime;
reg [n+1:0] index;
assign index ={Pcount,Tcount} ;
reg [n+1:0] rom[0:(2**(n+2))-1];

integer j;
integer i; 

initial 
begin    
    for(j=1;j<=3;j=j+1) 
        for(i=0; i<= 2**n -1 ;i=i+1)
        rom[i*4+j]=3*(i+j-1)/j ;
rom [1]=0 ;
rom [2]=0 ;
rom [3]=0 ;            
end

assign Wtime = rom[index];
endmodule

