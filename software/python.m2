python = method()
python(ZZ,ZZ, Ideal) := (l,n,I)->(
R1 = QQ[y_1..y_l,a_1..a_n];
Var = "y_1";
i = 1;
while i<l do(
    i=i+1;
    L = toString y_i;
    Var = concatenate(Var,",",L);
);
i = 0;
while i<n do(
    i=i+1;
    L = toString a_i;
    Var = concatenate(Var,",",L);
);
Int ="=Real('y_1')";
i = 1;
while i<l do(
    i=i+1;
    L = toString y_i;
    Int = concatenate(Int,",Real('",L, "')");
);
i = 0;
while i<n do(
    i=i+1;
    L = toString a_i;
    Int = concatenate(Int,",Real('",L, "')");
);
Var = concatenate(Var,Int);
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

