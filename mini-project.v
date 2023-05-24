module miniproject #(
    parameter n=3
) (
    input backphoto,
    input forwardphoto,
    input rest,
    output [n-1:0] Pcount
);
reg [n-1:0] counter;
assign Pcount = counter;

always @(negedge backphoto, negedge forwardphoto, posedge rest) begin
    if (rest) 
    begin
        counter <= 0;
    end
    else 
    begin
        if (backphoto == 0 && (counter != (2**n -1))) 
        begin
          counter <= counter + 1;
        end
    else if (forwardphoto == 0 && (counter !=0 ))
         begin
          counter <= counter - 1;
        end
    end
    
end
endmodule
