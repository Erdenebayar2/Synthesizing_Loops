InRadical = method()
InRadical(List, List) := (Li, Id)->(
i = 0	;
ind = 0;
while (i< length Li) and (i == ind) do(
I = ideal(join({1-Li_i*e}, Id));
if ideal(join({1-Li_i*e}, Id)) ==1 then(
ind=ind+1;
---Id = join(Id, {Li_i});
);
i=i+1;
);
if ind == length Li then(
boo=true;
);
if ind < length Li then(
boo=false;
);
return boo;
);
end--
