module top;
integer arr[9:0];

integer i,j;

initial begin 
	for(i=0;i<9;i=i+1)begin 
		arr[i]=$urandom%50;
			for(j=0;j<i;j=j+1)begin 
				if(i!=j) flag=1;
			end
	end

	if(flag=1) $display("arr=%p",arr);
end

endmodule
