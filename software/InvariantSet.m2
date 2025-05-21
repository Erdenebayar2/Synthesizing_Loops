computeInvariantSet = method()
computeInvariantSet(List, List, ZZ) := (g,F,n)->(
---Extracting polynomial mappings, an inequation and initial values from an example.
i = 0;
N=0;
X = g;
Xt = Compose(X,F,n);
while InRadical(Xt, X) == false do(
X = join(X, Xt);
Xt= Compose(Xt, F,n);
N= N+1;
);
return X;
);

---Computing Invariant sets
---while radicalContainment(Xt_0, ideal(X)) == false do(
