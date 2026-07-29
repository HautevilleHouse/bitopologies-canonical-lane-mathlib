import HautevilleHouse.BitopologiesCanonicalLaneLean.BitopologicalSpace

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure PairwiseCompletelyRegularPackage (O : BitopAdmittedObject) where
  continuousFunctionsSeparate : Prop
  uniformStructure : Prop
  stoneCechCompactification : Prop

structure PairwiseCompletelyRegularEvidence (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) where
  continuousFunctionsSeparateClosed : P.continuousFunctionsSeparate
  uniformStructureClosed : P.uniformStructure
  stoneCechCompactificationClosed : P.stoneCechCompactification

def PairwiseCompletelyRegularClosed (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) : Prop :=
  P.continuousFunctionsSeparate ∧ P.uniformStructure ∧ P.stoneCechCompactification

theorem pairwise_completely_regular_closed_from_evidence (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) (E : PairwiseCompletelyRegularEvidence O P) :
    PairwiseCompletelyRegularClosed O P := by
  exact And.intro E.continuousFunctionsSeparateClosed
    (And.intro E.uniformStructureClosed E.stoneCechCompactificationClosed)

end BitopologiesCanonicalLaneLean
end HautevilleHouse