rununiversal = method()
rununiversal(ZZ) := (nn)->(
---loop13 = ["loops/ex3/ex3(1,3).m2","loops/ex3/ex3(1,4).m2","loops/ex3/ex3(1,5).m2","loops/ex3/ex3(2,2).m2","loops/ex3/ex3(2,3).m2"];
---loop12 = ["loops/cube_square/cube_square(1,3).m2","loops/cube_square/cube_square(1,4).m2","loops/cube_square/cube_square(1,5).m2","loops/cube_square/cube_square(2,2).m2","loops/cube_square/cube_square(2,3).m2"];
---loop1 = ["loops/ex1.2/ex1.2(1,3).m2","loops/ex1.2/ex1.2(1,4).m2","loops/ex1.2/ex1.2(1,5).m2","loops/ex1.2/ex1.2(2,2).m2","loops/ex1.2/ex1.2(2,3).m2"];
---loop2 = ["loops/ex1.1/ex1.1(1,3).m2","loops/ex1.1/ex1.1(1,4).m2","loops/ex1.1/ex1.1(1,5).m2","loops/ex1.1/ex1.1(2,2).m2","loops/ex1.1/ex1.1(2,3).m2"];
---loop3 = ["loops/ex1.1Ineq/ex1.1Ineq(1,3).m2","loops/ex1.1Ineq/ex1.1Ineq(1,4).m2","loops/ex1.1Ineq/ex1.1Ineq(1,5).m2","loops/ex1.1Ineq/ex1.1Ineq(2,2).m2","loops/ex1.1Ineq/ex1.1Ineq(2,3).m2"];
---loop4 = ["loops/ex5.2/ex4(1,3).m2","loops/ex4/ex4(1,4).m2","loops/ex4/ex4(1,5).m2","loops/ex4/ex4(2,2).m2","loops/ex4/ex4(2,3).m2"];
---loop8 = ["loops/fmi1/fmi1(1,3).m2","loops/fmi1/fmi1(1,4).m2","loops/fmi1/fmi1(1,5).m2","loops/fmi1/fmi1(2,2).m2","loops/fmi1/fmi1(2,3).m2"];
---loop9 = ["loops/fmi2/fmi2(1,3).m2","loops/fmi2/fmi2(1,4).m2","loops/fmi2/fmi2(1,5).m2","loops/fmi2/fmi2(2,2).m2","loops/fmi2/fmi2(2,3).m2"];
---loop10 = ["loops/fmi3/fmi3(1,3).m2","loops/fmi3/fmi3(1,4).m2","loops/fmi3/fmi3(1,5).m2","loops/fmi3/fmi3(2,2).m2","loops/fmi3/fmi3(2,3).m2"];
---loop11 = ["loops/intcbrt/intcbrt(1,3).m2","loops/intcbrt/intcbrt(1,4).m2","loops/intcbrt/intcbrt(1,5).m2","loops/intcbrt/intcbrt(2,2).m2","loops/intcbrt/intcbrt(2,3).m2"];
---loop14 = ["loops/markov_triples/markov_triples(1,3).m2","loops/markov_triples/markov_triples(1,4).m2","loops/markov_triples/markov_triples(1,5).m2","loops/markov_triples/markov_triples(2,2).m2","loops/markov_triples/markov_triples(2,3).m2"];
---loop6 = ["loops/square/square(1,3).m2","loops/square/square(1,4).m2","loops/square/square(1,5).m2","loops/square/square(2,2).m2","loops/square/square(2,3).m2"];
---loop7 = ["loops/square_conj/square_conj(1,3).m2","loops/square_conj/square_conj(1,4).m2","loops/square_conj/square_conj(1,5).m2","loops/square_conj/square_conj(2,2).m2","loops/square_conj/square_conj(2,3).m2"];
---loop5 = ["loops/sum1/sum1(1,3).m2","loops/sum1/sum1(1,4).m2","loops/sum1/sum1(1,5).m2","loops/sum1/sum1(2,2).m2","loops/sum1/sum1(2,3).m2"];
loop13 = ["loops/ex3/ex3(1,6).m2","loops/ex3/ex3(1,5).m2"];
loop12 = ["loops/cube_square/cube_square(1,6).m2","loops/cube_square/cube_square(1,5).m2"];
loop1 = ["loops/ex1.2/ex1.2(1,6).m2","loops/ex1.2/ex1.2(1,5).m2"];
loop2 = ["loops/ex1.1/ex1.1(1,6).m2","loops/ex1.1/ex1.1(1,5).m2"];
loop3 = ["loops/ex1.1Ineq/ex1.1Ineq(1,6).m2","loops/ex1.1Ineq/ex1.1Ineq(1,5).m2"];
loop4 = ["loops/ex5.2/ex5.2(1,6).m2","loops/ex5.2/ex5.2(1,5).m2"];
loop8 = ["loops/fmi1/fmi1(1,6).m2","loops/fmi1/fmi1(1,5).m2"];
loop9 = ["loops/fmi2/fmi2(1,6).m2","loops/fmi2/fmi2(1,5).m2"];
loop10 = ["loops/fmi3/fmi3(1,6).m2","loops/fmi3/fmi3(1,5).m2"];
loop11 = ["loops/intcbrt/intcbrt(1,6).m2","loops/intcbrt/intcbrt(1,5).m2"];
loop14 = ["loops/markov_triples/markov_triples(1,6).m2","loops/markov_triples/markov_triples(1,5).m2"];
loop6 = ["loops/square/square(1,6).m2","loops/square/square(1,5).m2"];
loop7 = ["loops/square_conj/square_conj(1,6).m2","loops/square_conj/square_conj(1,5).m2"];
loop5 = ["loops/sum1/sum1(1,6).m2","loops/sum1/sum1(1,5).m2"];
loops = [loop1,loop2,loop3,loop4,loop5,loop6,loop7,loop8,loop9,loop10,loop11,loop12,loop13,loop14];
ix=0;
while ix<length(loops) do(
	jx =0;
	while jx< length(loops_(ix)) do(
		print(loops_(ix)_(jx));
		if nn ==1 then(
			computeLoopsUniversal(loops_(ix)_(jx));
		);
		if nn ==2 then(
			computeLoopsUniversalDI(loops_(ix)_(jx));
		);
		jx = jx+1;
	);
	ix=ix+1;
);
)
