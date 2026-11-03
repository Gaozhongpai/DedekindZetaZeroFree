module

public import DedekindZetaZeroFree.HeckeCorollary

@[expose] public section

namespace DedekindZetaZeroFree

theorem main (K : Type) [Field K] [NumberField K] : ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (∀ s, 1 < s.re → f s = NumberField.dedekindZeta K s) ∧
      ∀ s, 31 / 32 < s.re → s ≠ 1 → f s ≠ 0 := by
  obtain ⟨f, hf, hmatch, hnz⟩ := DedekindZetaZeroFree.dedekindZeta_ne_zero K
  exact ⟨f, hf, hmatch, fun s hs hs1 => hnz s (by linarith) hs1⟩

theorem heckeCorollary
    (K : Type) [Field K] [NumberField K]
    (m : Ideal (NumberField.RingOfIntegers K)) (hm : m ≠ ⊥) (χ : RayClassCharacter K m) :
    ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (¬ χ.IsPrincipal → Differentiable ℂ f) ∧
      (∀ s, 1 < s.re → HasSum (fun I : Ideal (NumberField.RingOfIntegers K) =>
        χ I * (Ideal.absNorm I : ℂ) ^ (-s)) (f s)) ∧
      ∀ s, 31 / 32 < s.re → (s ≠ 1 ∨ ¬ χ.IsPrincipal) → f s ≠ 0 := by
  obtain ⟨f, hf, hentire, hseries, hnz⟩ := heckeL_ne_zero K m hm χ
  exact ⟨f, hf, hentire, hseries, fun s hs hregular => hnz s (by linarith) hregular⟩

end DedekindZetaZeroFree

#print axioms DedekindZetaZeroFree.dedekindZeta_ne_zero
#print axioms DedekindZetaZeroFree.heckeL_ne_zero
