import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure Bispace where
  carrier : Type u
  top₁ : TopologicalSpace carrier
  top₂ : TopologicalSpace carrier

def pairwiseOpen (X : Bispace) (U : Set (X.carrier)) : Prop :=
  (TopologicalSpace.IsOpen X.top₁ U) ∨ (TopologicalSpace.IsOpen X.top₂ U)

structure BitopologicalSpace where
  bispace : Bispace
  witness : Prop
  witnessClosed : witness
def BitopologyWitnessClosed (B : BitopologicalSpace) : Prop :=
  B.witness

end BitopologiesCanonicalLaneLean
end HautevilleHouse