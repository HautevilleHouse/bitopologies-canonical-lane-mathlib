import canonicalLaneMathlib.SeparationAxioms

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologySeparationPackage (X : Type u) (P : PairTopology X) where
  pairwiseT0 : Prop
  pairwiseT1 : Prop
  pairwiseT2 : Prop
  pairwiseRegular : Prop
  pairwiseNormal : Prop

structure BitopologySeparationEvidence (X : Type u) (P : PairTopology X)
    (S : BitopologySeparationPackage X P) where
  pairwiseT0Closed : S.pairwiseT0
  pairwiseT1Closed : S.pairwiseT1
  pairwiseT2Closed : S.pairwiseT2
  pairwiseRegularClosed : S.pairwiseRegular
  pairwiseNormalClosed : S.pairwiseNormal

def BitopologySeparationClosed (X : Type u) (P : PairTopology X)
    (S : BitopologySeparationPackage X P) : Prop :=
  S.pairwiseT0 ∧ S.pairwiseT1 ∧ S.pairwiseT2 ∧ S.pairwiseRegular ∧ S.pairwiseNormal

theorem bitopology_separation_closed_from_evidence (X : Type u) (P : PairTopology X)
    (S : BitopologySeparationPackage X P) (E : BitopologySeparationEvidence X P S) :
    BitopologySeparationClosed X P S := by
  exact And.intro E.pairwiseT0Closed
    (And.intro E.pairwiseT1Closed
      (And.intro E.pairwiseT2Closed
        (And.intro E.pairwiseRegularClosed E.pairwiseNormalClosed)))

end BitopologiesCanonicalLaneLean
end HautevilleHouse