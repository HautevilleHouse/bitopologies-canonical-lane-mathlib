import HautevilleHouse.BitopologiesCanonicalLaneLean.BitopologicalAdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalDualityPackage (A : AdmissibleClass) where
  dualPairwiseRegular : Prop
  dualSeparationAxiom : Prop
  dualityTheorem : Prop

structure BitopologicalDualityEvidence (A : AdmissibleClass) (P : BitopologicalDualityPackage A) where
  dualPairwiseRegularClosed : P.dualPairwiseRegular
  dualSeparationAxiomClosed : P.dualSeparationAxiom
  dualityTheoremClosed : P.dualityTheorem

def BitopologicalDualityClosed (A : AdmissibleClass) (P : BitopologicalDualityPackage A) : Prop :=
  P.dualPairwiseRegular ∧ P.dualSeparationAxiom ∧ P.dualityTheorem

theorem bitopological_duality_closed_from_evidence (A : AdmissibleClass) (P : BitopologicalDualityPackage A) (E : BitopologicalDualityEvidence A P) :
    BitopologicalDualityClosed A P := by
  exact And.intro E.dualPairwiseRegularClosed (And.intro E.dualSeparationAxiomClosed E.dualityTheoremClosed)

end BitopologiesCanonicalLaneLean
end HautevilleHouse