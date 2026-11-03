/-
Independent frozen native baseline for the successor extension, 2026-11-03.
Zhongpai Gao with AI assistance. Apache-2.0.
The imported native Lean baseline is byte-exact at registered source
09afbb4ce6570c1615d58509dc197fc9f0956b7d, whose endpoint is31/32.
No successor scales or declarations occur in this module's import/proof closure.
-/
module
public import DedekindZetaZeroFree.HeckeCorollary
@[expose] public section
namespace Refinement9668Baseline
open scoped NumberField

theorem hecke31 (F : Type) [Field F] [NumberField F]
    (m : Ideal (𝓞 F)) (hm : m ≠ ⊥)
    (χ : DedekindZetaZeroFree.RayClassCharacter F m) :
    ∃ f : ℂ → ℂ, DifferentiableOn ℂ f ({1}ᶜ : Set ℂ) ∧
      (¬ χ.IsPrincipal → Differentiable ℂ f) ∧
      (∀ s, 1 < s.re → HasSum (fun I : Ideal (𝓞 F) =>
        χ I * (Ideal.absNorm I : ℂ) ^ (-s)) (f s)) ∧
      ∀ s, 31 / 32 < s.re → (s ≠ 1 ∨ ¬ χ.IsPrincipal) → f s ≠ 0 := by
  obtain ⟨f, hf, hentire, hsum, hnz⟩ :=
    _root_.DedekindZetaZeroFree.heckeL_ne_zero F m hm χ
  exact ⟨f, hf, hentire, hsum, fun s hs hregular => hnz s (by linarith) hregular⟩
end Refinement9668Baseline
