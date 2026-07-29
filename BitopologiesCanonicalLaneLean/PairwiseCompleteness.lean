import HautevilleHouse.BitopologiesCanonicalLaneLean.BitopologicalAdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure PairwiseCompletenessPackage (A : AdmissibleClass) where
  tau1Complete : Prop
  tau2Complete : Prop
  pairwiseBaire : Prop

structure PairwiseCompletenessEvidence (A : AdmissibleClass) (P : PairwiseCompletenessPackage A) where
  tau1CompleteClosed : P.tau1Complete
  tau2CompleteClosed : P.tau2Complete
  pairwiseBaireClosed : P.pairwiseBaire

def PairwiseCompletenessClosed (A : AdmissibleClass) (P : PairwiseCompletenessPackage A) : Prop :=
  P.tau1Complete ∧ P.tau2Complete ∧ P.pairwiseBaire

theorem pairwise_completeness_closed_from_evidence (A : AdmissibleClass) (P : PairwiseCompletenessPackage A) (E : PairwiseCompletenessEvidence A P) :
    PairwiseCompletenessClosed A P := by
  exact And.intro E.tau1CompleteClosed (And.intro E.tau2CompleteClosed E.pairwiseBaireClosed)

end BitopologiesCanonicalLaneLean
end HautevilleHouse