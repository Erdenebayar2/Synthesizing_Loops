restart
---Loading the main algorithm.
t1=cpuTime();
loadPackage "RationalPoints2"
needsPackage "RationalPoints2"
load "InvariantSet.m2"
load "python.m2"
load "InRadical.m2"
load "InIdeal.m2"
load "Compose.m2"
computeLoopsN = method();
computeLoopsN(String) := (u)->(
---Loading an example 
load u;   
M =0;
R= QQ[x_1..x_(n+1),y_1..y_(M+20),e];
i = 0;
while i<length mapping() do (
	M = M+length (mapping())_i;
	i =i+1
);
maps={};
i =0;
NY=1;
while i<length mapping() do (
	j=0;
	F=0;
	while j <length (mapping())_i do(
		F = F+y_NY*((mapping())_i)_j;
		j=j+1;
		NY=NY+1;
	);
	maps = join(maps,{F});	
	i=i+1;
);
if length maps < n then (
i =0;
LM = length maps;
while i< (n-LM) do(
maps = join(maps, {x_(LM +i+1)});
i=i+1;
);
);
mapsP = maps;
maps = join(maps, {(guard())_0*x_(n+1)});
PolIn={};
i=0;
while i < length PI() do(
PolIn=join(PolIn,{x_(n+1)*(PI())_i});
i=i+1;
);
I= computeInvariantSet(PolIn, maps, n+1);
 A = {x_1=>(initial())_0};
	    t =  2;
	    while t<n+1 do(
		A =join(A,{x_t=>(initial())_(t-1)});
		t=t+1; 
		);
A = join(A,{x_(n+1)=>1});
J = I;
I = sub(ideal I, A);
---<< Polynomials whose vanishing locus << endl;
i = 0;
j=0;
ZP = x_1-x_1;
while i< numgens I do(
if ((gens I)_i)_0 !=ZP then(
<< (gens I)_i <<endl;
j=j+1;
);
i=i+1;
);
Var = "{x_1";
i = 1;
while i<n do(
    i=i+1;
    L = toString x_i;
    Var = concatenate(Var,",",L);
);
Var = concatenate(Var, "}")
<< "The number of non-zero polynomials in the output is "<< j<< endl;
<<"The following loop satisfies given polynomial invariants "<<endl;
<<Var <<"<-"<<mapsP<<" when"<<endl;
);
computeLoops= method();
computeLoops(String) := (u) ->(elapsedTime computeLoopsN(u);elapsedTime python(M,I);)
computeLoopsDI = method();
computeLoopsDI(String) := (u) ->(elapsedTime computeLoopsN(u);
elapsedTime python(M,I);
R3 = QQ[y_1..y_M];
I = sub(I,R3);
<< "The dimension of the variety is " <<dim I<< endl;
<<"The number of the irreducible components of the variety is "<< length(minimalPrimes I)<<endl;
K = minimalPrimes I;
i =0;
while i < length K do(
<< K_i<<endl;
i=i+1;
);
)

---
end --
