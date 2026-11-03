/- Exact new endpoint solution, 2026-11-03, Zhongpai Gao with AI assistance.
Whole-library compilation and independent verification remain pending. -/
module
public import Refinement9672
@[expose] public section
namespace Gao9672
open scoped NumberField

theorem number_field_bound (K : Type) [Field K] [NumberField K] :
    ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (∀ s : ℂ, 1 < s.re → f s = NumberField.dedekindZeta K s) ∧
      ∀ s : ℂ, (1209 / 1250 : ℝ) < s.re → s ≠ 1 → f s ≠ 0 := by
  exact Refinement9672.DedekindZetaZeroFree.dedekindZeta_ne_zero K

theorem hecke_bound (K : Type) [Field K] [NumberField K]
    (m : Ideal (𝓞 K)) (hm : m ≠ ⊥) (χ : DedekindZetaZeroFree.RayClassCharacter K m) :
    ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (¬ χ.IsPrincipal → Differentiable ℂ f) ∧
      (∀ s, 1 < s.re → HasSum (fun I : Ideal (𝓞 K) =>
        χ I * (Ideal.absNorm I : ℂ) ^ (-s)) (f s)) ∧
      ∀ s, (1209 / 1250 : ℝ) < s.re → (s ≠ 1 ∨ ¬ χ.IsPrincipal) → f s ≠ 0 := by
  exact Refinement9672.DedekindZetaZeroFree.heckeL_ne_zero K m hm χ
end Gao9672

#print axioms Gao9672.number_field_bound
#print axioms Gao9672.hecke_bound
