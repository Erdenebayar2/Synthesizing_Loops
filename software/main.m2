restart
---Loading the main algorithm.
t1=cpuTime();
load "InvariantSet.m2"
load "InRadical.m2"
load "Compose.m2"
computeLoopsN = method();
computeLoopsN(String) := (u)->(
---Loading an example 
load u;   
M =0;
i = 0;
while i<length mapping() do (
	M = M+length (mapping())_i;
	i =i+1
);
R= QQ[x_1..x_(n+1),y_1..y_(M+1),e];
maps={};
i =0;
NY=1;
while i<length mapping() do (
	j=0;
	F=0;
	while j <length (mapping())_i do(
		F = F+y_NY*((mapping())_0)_j;
		j=j+1;
		NY=NY+1;
	);
	maps = join(maps,{F});	
	i=i+1;
);	
maps = join(maps, {(guard())_0*x_(n+1)});
I= computeInvariantSet(PI(), maps, n+1);
 A = {x_1=>(initial())_0};
	    t =  2;
	    while t<n+1 do(
		A =join(A,{x_t=>(initial())_(t-1)});
		t=t+1; 
		);
A = join(A,{x_(n+1)=>1});
I = sub(ideal I, A);
<< I<< endl;
);
computeLoops= method();
computeLoops(String) := (u) ->(elapsedTime computeInvariantsN(u,d);)
end --
