/- Exact stronger all-number-field problem for the 1209/1250 refinement.
Intentional Challenge placeholders are not solution proofs. -/
module
public import DedekindZetaZeroFree.Arithmetic.RayClasses.Character
@[expose] public section
namespace Gao9668
open scoped NumberField

theorem number_field_bound (K : Type) [Field K] [NumberField K] :
    ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (∀ s : ℂ, 1 < s.re → f s = NumberField.dedekindZeta K s) ∧
      ∀ s : ℂ, (2417 / 2500 : ℝ) < s.re → s ≠ 1 → f s ≠ 0 := by sorry

theorem hecke_bound (K : Type) [Field K] [NumberField K]
    (m : Ideal (𝓞 K)) (hm : m ≠ ⊥) (χ : DedekindZetaZeroFree.RayClassCharacter K m) :
    ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (¬ χ.IsPrincipal → Differentiable ℂ f) ∧
      (∀ s, 1 < s.re → HasSum (fun I : Ideal (𝓞 K) =>
        χ I * (Ideal.absNorm I : ℂ) ^ (-s)) (f s)) ∧
      ∀ s, (2417 / 2500 : ℝ) < s.re → (s ≠ 1 ∨ ¬ χ.IsPrincipal) → f s ≠ 0 := by sorry
end Gao9668
