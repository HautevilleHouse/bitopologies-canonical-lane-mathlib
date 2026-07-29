import canonicalLaneMathlib.AdmissibleClass
import BitopologiesCanonicalLaneLean.BitopologicalPreliminaries

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalUniformSpace (X : BitopologicalSpace) where
  𝓤₁ : Filter (X.carrier × X.carrier)
  𝓤₂ : Filter (X.carrier × X.carrier)
  isUniformity1 : 𝓤₁.IsUniformity
  isUniformity2 : 𝓤₂.IsUniformity
  compatibility : 𝓤₁ ≤ 𝓤₂ ∨ 𝓤₂ ≤ 𝓤₁

/-- The uniform bitopological completion. -/
structure BitopologicalCompletion (X : BitopologicalSpace) where
  completeSpace : BitopologicalUniformSpace
  denseEmbedding : X → completeSpace
  isDense : DenseRange denseEmbedding
  complete : ∀ (U : BitopologicalUniformSpace), CompleteSpace U

-- The completion satisfies a universal property.
theorem completion_universal (X : BitopologicalSpace) (U : BitopologicalUniformSpace)
  (f : BicontinuousMap X (BitopologicalUniformSpace.toBitopologicalSpace U)) :
  ∃! F : BicontinuousMap (BitopologicalCompletion X).completeSpace U,
    F.toFun ∘ (BitopologicalCompletion X).denseEmbedding = f.toFun := by
  sorry

end BitopologiesCanonicalLaneLean
end HautevilleHouse