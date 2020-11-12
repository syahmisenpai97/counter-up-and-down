module part2ex1(input clk, reset,x , output[3:0]  counter);

reg [3:0] counter_x;

// down counter
always @(posedge clk or posedge reset)
begin
if(reset)
 counter_x <= 4'h0;
else if(~x)
 counter_x <= counter_x - 4'd1;
else
 counter_x <= counter_x + 4'd1;
end 

assign counter = counter_x;

endmodule