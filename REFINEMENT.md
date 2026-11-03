# A source refinement to 1209/1250

The new source targets nonvanishing for every number field and finite-order
Hecke character in Re(s)>1209/1250, with the original pole exclusions. Whole
compilation and independent verification are pending; no verified record is
claimed. Original Axiom Math research and formalization, and all dependency
licenses, are retained and credited separately from this refinement.

## The analytic improvement

The independently registered original31/32 proof is retained byte-for-byte at
09afbb4ce6570c1615d58509dc197fc9f0956b7d. Uniform logarithmic control turns
that common zero-free strip and the existing polynomial conductor estimates
into L(.97+it) << Q^epsilon(2+|t|). The primitive functional equation gives
conductor exponent.47 at.03. Interpolation then gives17/40 at.12, uniformly
in the primitive character and every height.

The actual Euler masks are paid before combining the numerator with q^(-2/5).
The resulting row cost is1/40, replacing1/25. Both allowed and omitted
frequency incidences use this input. The original detector, zero-density
estimates and contour geometry are retained. Polynomial height exponents are
fixed before epsilon and the row; rho is chosen afterward under the original
height conditions.

## Recovery of the boundary

The y scale is234/625. Reflected growth is893/2500 and the complete comparison
fits below35719/100000. Adding the unchanged61/100 spectral shift gives
1209/1250. Every new scale-dependent declaration lives in the separate
Refinement9672 namespace. The old proof has no import of this extension, so
its zero-free input is independent of the new conclusion.

The exact new problem and proof targets are Gao9672Challenge.lean and
Gao9672Solution.lean, with comparator-9672.json and formalization-9672.yaml.
The Challenge contains intentional problem placeholders; the Solution and
all new proof modules contain no proof admissions. Isolated checks and source
review support this implementation; successful full replay is still required.

Refinement and integration: Zhongpai Gao, with AI assistance. Original research:
Dean Cureton and Jesse Thorner; original proofs and formalization: AxiomProver
at Axiom Math. The source extension was developed from the earlier8291932
parameter-refinement template, while its actual imported Lean baseline is the
original independently registered09afbb4 source. Apache-2.0.
