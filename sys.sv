class sample;
	rand int a[10];
	constraint c { a.size inside {[1:10]};}
	constraint cc{foreach(a[i])
			a[i]%2==0;}
endclass


module test;
	sample h;
	initial
	begin
		h=new();
		h.randomize();
		$display(h.a);
	end
endmodule
