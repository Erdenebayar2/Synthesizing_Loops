computeInvariantSet = method()
computeInvariantSet(List, List, ZZ) := (g,F,n)->(
---Extracting polynomial mappings, an inequation and initial values from an example.
i = 0;
N=0;
print N;
X = g;
print X;
Xt = Compose(X,F,n);
print Xt;
while InRadical(Xt, X) == false do(
X = join(X, Xt);
print X;
Xt= Compose(Xt, F,n);
print Xt;
N= N+1;
print N;
);
return X;
);

---Computing Invariant sets
