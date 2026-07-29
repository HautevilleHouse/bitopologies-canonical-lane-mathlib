import canonicalLaneMathlib.Biregularity

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BiregularityPackage (X : Type u) (P : PairTopology X) where
  regularOpenSets : Prop
  regularClosedSets : Prop
  biregularBase : Prop

structure BiregularityEvidence (X : Type u) (P : PairTopology X) (B : BiregularityPackage X P) where
  regularOpenSetsClosed : B.regularOpenSets
  regularClosedSetsClosed : B.regularClosedSets
  biregularBaseClosed : B.biregularBase

def BiregularityClosed (X : Type u) (P : PairTopology X) (B : BiregularityPackage X P) : Prop :=
  B.regularOpenSets ∧ B.regularClosedSets ∧ B.biregularBase

theorem biregularity_closed_from_evidence (X : Type u) (P : PairTopology X) (B : BiregularityPackage X P)
    (E : BiregularityEvidence X P B) : BiregularityClosed X P B := by
  exact And.intro E.regularOpenSetsClosed (And.intro E.regularClosedSetsClosed E.biregularBaseClosed)

end BitopologiesCanonicalLaneLean
end HautevilleHouse