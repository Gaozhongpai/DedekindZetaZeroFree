# A proposed parameter refinement to 4843/5000

This branch proposes the uniform boundary 4843/5000 = 0.9686 for Dedekind
zeta functions and finite-order Hecke L-functions over every number field,
at every height, with the same pole exclusions as the original theorem.
The improvement over 31/32 is 3/20000 = 0.00015. Native compilation is pending;
this document does not claim an independently verified record.

The refinement uses Axiom Math's proof at
09afbb4ce6570c1615d58509dc197fc9f0956b7d. The original work and formalization
are credited to Dean Cureton, Jesse Thorner, AxiomProver and the dependencies
acknowledged in the original README. This is a parameter refinement, with no
new arithmetic estimate claimed.

## Scale change

Keep x = 67/100, smoothing exponent 33/100, all contours, detector parameters,
and frequency cutoffs. Replace y = 151/400 by 943/2500. The support exponent
becomes 1309/1250 > 1 and the reflected exponent becomes 1793/5000.

For fixed positive Z, the new Mellin kernel differs from the old kernel by
Z^(-(3/10000)(w-1)). This factor is entire and nonzero. Its absolute value
is constant along each vertical w-line, so it preserves the contour
analyticity and vertical decay. On the low line Re(w)=3/25 the exponent
cost is 33/125000; at the principal residue w=1 the factor is one.
The spectral shift therefore stays 61/100.

The general support-moment estimate is applied at the new support exponent.
Together with the additive coefficient energy bound, it gives the reflected
power 1793/5000. Both allowed and omitted frequency decompositions are retained.
With the original positive epsilon choices, the largest comparison error
power is 44821/125000 = 0.358568, below the common comparison power
35859/100000 = 0.35859, which is below 1793/5000 = 0.3586.

Thus the same growth and Mellin continuation argument targets
61/100 + 1793/5000 = 4843/5000. The arbitrary-field descent and the Hecke
factorization use the same boundary. The old Challenge statements remain
31/32 and are obtained by weakening the stronger native theorems.

## Validation

Exact rational cost checks and independent source/diff review passed before
this branch was prepared. The unchanged native workflow will build all local
modules, Challenge and Solution. Solution also prints the axiom closures of
the two strengthened native endpoint theorems. Previously built dependent
modules must be rebuilt after the scale definitions change.
