constructmaps = method()
constructmaps(List,ZZ) := (mapping,n)->(
	Maps = {};
	print(mapping_0);
	if instance(mapping_0,ZZ) == false then(
	numbermaps = length(mapping);
	print(numbermaps);
	i = 0;
	l=1;
	while i< numbermaps do(
		j=0;
		Map = {};
		Fmap = (mapping)_i;
		while j< length(Fmap) do(
			mapentry = 0;
			k=0;
			while k<length(Fmap_j) do(
				if Fmap_j_k !=0 then(
					mapentry = mapentry+y_l*Fmap_j_k;
					l = l+1;
				);
				if Fmap_j_k ==0 then(
					mapentry = x_(j+1);
				);
				k=k+1;
			);
			Map = append(Map, mapentry);
			j=j+1;
		);
		s = 0;
		Mapnew = Map;
		while s<n- length(Map) do(
			Mapnew = append(Mapnew, x_(length(Map)+s+1));
			s = s+1;
		);
		Map = Mapnew;
		Maps = append(Maps,Map);
		i = i+1;
	);
	return Maps;
	);
	if instance(mapping_0,ZZ)==true then(
		dofmap = mapping_0;
		SumLinear =1;
		i=0;
		while i< n do(
			SumLinear = SumLinear+x_(i+1);
			i=i+1;
		);
		SumLineard=first entries monomials SumLinear^(dofmap);
		i =0;
		Struc = {};
		while i <n do(
			Struc = append(Struc,SumLineard);
			i=i+1;
		);
		i =0;
		StrucB = {};
		while i<branch_num do(
			StrucB= append(StrucB, Struc);
			i=i+1;
		);
		return constructmaps(StrucB,n);
	);
)
--end
