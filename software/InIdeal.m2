InIdeal = method()
InIdeal(List, List) := (Li, Id)->(
i = 0	;
ind = 0;
if isSubset(ideal Li, ideal Id) ==true then(
ind=ind+1;
);
if ind == 1 then(
boo=true;
);
if ind < 1 then(
boo=false;
);
return boo;
);
end--
