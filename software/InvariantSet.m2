computeInvariantSet = method()
computeInvariantSet(List, List, ZZ, ZZ) := (g,F,n, br)->(
---Extracting polynomial mappings, an inequation and initial values from an example.
i = 0;
N=0;
X = g;
Xt = Compose(X,F,n,br);
while InRadical(Xt, X) == false do(
X = join(X, Xt);
Xt= Compose(Xt, F,n,br);
N= N+1;
);
return X;
);

---Computing Invariant sets
---while radicalContainment(Xt_0, ideal(X)) == false do(
