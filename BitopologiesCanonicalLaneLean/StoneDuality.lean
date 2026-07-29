import HautevilleHouse.BitopologiesCanonicalLaneLean.PairwiseCompletelyRegular

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure StoneDualityPackage (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) where
  bitopBooleanAlgebra : Type u
  spectrumCompact : Prop
  homeomorphismEstablished : Prop

structure StoneDualityEvidence (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) (S : StoneDualityPackage O P) where
  bitopBooleanAlgebraClosed : S.bitopBooleanAlgebra
  spectrumCompactClosed : S.spectrumCompact
  homeomorphismEstablishedClosed : S.homeomorphismEstablished

def StoneDualityClosed (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) (S : StoneDualityPackage O P) : Prop :=
  S.bitopBooleanAlgebra ∧ S.spectrumCompact ∧ S.homeomorphismEstablished

theorem stone_duality_closed_from_evidence (O : BitopAdmittedObject)
    (P : PairwiseCompletelyRegularPackage O) (S : StoneDualityPackage O P)
    (E : StoneDualityEvidence O P S) : StoneDualityClosed O P S := by
  exact And.intro E.bitopBooleanAlgebraClosed
    (And.intro E.spectrumCompactClosed E.homeomorphismEstablishedClosed)

end BitopologiesCanonicalLaneLean
end HautevilleHouse