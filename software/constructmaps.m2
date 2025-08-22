constructmaps = method()
constructmaps(List,ZZ) := (mapping,n)->(
	Maps = {};
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
		---s = 0;
		---while s<n- length(Map) do(
			---Map = append(Map, x_(length(Map)+s+1));
			---s = s+1;
		---);
		Maps = append(Maps,Map);
		i = i+1;
	);
	return Maps;
)
--end
