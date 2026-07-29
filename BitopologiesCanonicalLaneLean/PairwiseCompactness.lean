import HautevilleHouse.BitopologiesCanonicalLaneLean.BitopologicalSpace

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure PairwiseCompactnessPackage (B : BitopologicalSpace) where
  pairwiseCompact : Prop
  coveringCondition : Prop

structure PairwiseCompactnessEvidence {B : BitopologicalSpace} (P : PairwiseCompactnessPackage B) where
  pairwiseCompactClosed : P.pairwiseCompact
  coveringConditionClosed : P.coveringCondition

def PairwiseCompactnessClosed {B : BitopologicalSpace} (P : PairwiseCompactnessPackage B) : Prop :=
  P.pairwiseCompact ∧ P.coveringCondition

theorem pairwise_compactness_closed_from_evidence {B : BitopologicalSpace}
    (P : PairwiseCompactnessPackage B) (E : PairwiseCompactnessEvidence P) :
    PairwiseCompactnessClosed P :=
  And.intro E.pairwiseCompactClosed E.coveringConditionClosed

end BitopologiesCanonicalLaneLean
end HautevilleHouse