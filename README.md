# Algebraic Loop Synthesis

*Prototype implementation of an new algorithm for generating polynomial loops that satisfy given polynomial invariants, with inequations as guards and fixed intial values.*

This repository contains the directory **"software"**, that includes an implementation in [Macaulay2](https://macaulay2.com/) of the algorithm (Algorithm 2) described in the SOAP'25 submission: 

* **Beyond Affine Loops: A Geometric Approach to Program Synthesis** <br>*E. Bayarmagnai, F. Mohammadi, R. Prébet*

---
The directory **"software"** contains the ongoing implementation of the algorithm. 
In this directory, you will find the source code together, along with a directory "loops" containing loop examples (e.g. "ex2.m2") that the user can run the software on.

A short way to run the software is by the command:

```
M2 main.m2 -e 'computeLoops("<loops/loop-name/loop-structure>.m2")'
```

An alternative way is to run the following Macaulay commands (which requires to run Macaulay2 in the same directory):

```
load "main.m2"
computeLoops("<loops/loop-name/loop-structure>.m2")
```
The output consists of two elements:
1. Polynomials such that every loop with the given structure that satisfies given polynomial invariants is captured as one of the common solutions of the generated polynomials;
2. A non-zero solution of the system of polynomials printed above. 

```
computeLoopsDI("<loops/loop-name/loop-structure>.m2")
```

The output consists of five elements:
1. Polynomials such that every loop with the given structure that satisfies given polynomial invariants is captured as one of the common solutions of the generated polynomials;
2. A non-zero solution of the system of polynomials printed above.
3. The dimension of the variety defined by the polynomials printed above.
4. The number of the irreducible components of the variety
5. Ideals defining the irreducible components of the variety


```
computeLoopsUniversal("<loops/loop-name/loop-structure>.m2")
```

The output consists of two elements:
1. Polynomials such that every loop with the given structure that satisfies given universally inductive invariants is captured as one of the common solutions of the generated polynomials;
2. A non-zero solution of the system of polynomials printed above. 


```
computeLoopsUniversalDI("<loops/loop-name/loop-structure>.m2")
```

The output consists of five elements:
1. Polynomials such that every loop with the given structure that satisfies given universally inductive invariants is captured as one of the common solutions of the generated polynomials;
2. A non-zero solution of the system of polynomials printed above.
3. The dimension of the variety defined by the polynomials printed above.
4. The number of the irreducible components of the variety
5. Ideals defining the irreducible components of the variety
