/-
Successor namespace extension, 2026-11-03, Zhongpai Gao with AI assistance.
Original source: AxiomMath/DedekindZetaZeroFree at09afbb4ce6570c1615d58509dc197fc9f0956b7d;
starting refinement: Gaozhongpai/DedekindZetaZeroFree at829193272c1eaf223bb7228fbfb9003f414808e9.
Original path: DedekindZetaZeroFree/Moments/Probes/Poisson/NonprincipalSumBound.lean
Apache-2.0. Original source/dependency attribution and copyright notices are retained.
Changes: separate Refinement9668 declaration namespace/import cone and successor
scales/endpoint constants. The independent old Hecke baseline remains unchanged.
This work in progress does not yet claim a compiled or admitted .9668 endpoint.
-/
module

public import Refinement9668.DedekindZetaZeroFree.Moments.Probes.Poisson.FrequencySumBound

@[expose] public section

namespace Refinement9668

open _root_.DedekindZetaZeroFree

namespace DedekindZetaZeroFree.Quantitative.OmittedProbeBound

open _root_.DedekindZetaZeroFree
open DedekindZetaZeroFree

variable {F : Type} [Field F] [NumberField F]
variable {S : SArithmeticData F} {η : RayClassCharacter F S.modulus}

theorem omittedSum_bound (D : FixedData S η) :
    ∃ C : ℝ, 0 < C ∧ ∀ Z : ℝ, 2 ≤ Z →
      ‖PoissonFrequencyDecomposition.omittedSum D Z‖ ≤ C * Z ^ (35679 / 100000 : ℝ) :=
  RawOmittedRowsAssembly31.rawOmittedSum_bound D

end DedekindZetaZeroFree.Quantitative.OmittedProbeBound

end Refinement9668
