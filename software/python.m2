python = method()
python(ZZ, Ideal) := (n,I)->(
R1 = QQ[y_1..y_n];
Var = "y_1";
i = 1;
while i<n do(
    i=i+1;
    L = toString y_i;
    Var = concatenate(Var,",",L);
);
Int ="=Int('y_1')";
i = 1;
while i<n do(
    i=i+1;
    L = toString y_i;
    Int = concatenate(Int,",Int('",L, "')");
);
Var = concatenate(Var,Int);
NoZe = ",y_1!=0";
I = trim I;
I = ideal (0,I);
K = first entries gens I;
K = toString K;
K= replace("\\^", "**", K);
K=replace(",", "==0,",K);
K=replace("{", "",K);
K=replace("}", "",K);
K = concatenate(K, "==0");
K = concatenate(K, NoZe);
---"!python3"<<concatenate("from z3 import*\n", Var,"\n","solver=Solver()\n", "solver.add(",K,")\n", "solver.check()\nprint(solver.model())\n")<<close;
"!python3"<<concatenate("from z3 import*\n", Var,"\n","solve(", K,")\n")<<close;
);
end--

