import canonicalLaneMathlib.DualityTheorem

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure DualityPackage (X : Type u) (P : PairTopology X) where
  dualPair : PairTopology X
  dualityMapping : Prop
  dualityLaw : Prop

structure DualityEvidence (X : Type u) (P : PairTopology X) (D : DualityPackage X P) where
  dualPairClosed : D.dualPair = P  -- actually we need more, but simplified
  dualityMappingClosed : D.dualityMapping
  dualityLawClosed : D.dualityLaw

def DualityClosed (X : Type u) (P : PairTopology X) (D : DualityPackage X P) : Prop :=
  D.dualityMapping ∧ D.dualityLaw

theorem duality_closed_from_evidence (X : Type u) (P : PairTopology X) (D : DualityPackage X P)
    (E : DualityEvidence X P D) : DualityClosed X P D := by
  exact And.intro E.dualityMappingClosed E.dualityLawClosed

end BitopologiesCanonicalLaneLean
end HautevilleHouse