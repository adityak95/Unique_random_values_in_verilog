`define NO_OF_NUM 20
`define NO_START_FROM 23
`define NO_END_TO 50
module top;
integer random_no[0:`NO_OF_NUM-1];
integer used_no[0:`NO_OF_NUM-1];
integer temp_rand;
integer i,j;
initial begin 
	for(i=0;i<`NO_OF_NUM;i=i+1)begin 
		used_no[i]=0;
	end
	count=0;
	while(count<NO_OF_NUM)begin 
			temp_rand=$urandom_range(`NO_START_FROM,NO_END_TO);
			if(!used_no[temp_rand-1])begin 
				random_no[count]=temp_rand;
				used_no[temp_rand-1]=1;
				count=count+1;
			end
	end
$display("random_no=%p",random_no);
end


endmodule
