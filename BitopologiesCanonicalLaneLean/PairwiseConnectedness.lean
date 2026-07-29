import canonicalLaneMathlib.AdmissibleClass
import BitopologiesCanonicalLaneLean.BitopologyDefinitions

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure PairwiseDisconnection (X : Bispace) where
  U : Set (X.carrier)
  V : Set (X.carrier)
  U_pairwise_open : pairwiseOpen X U
  V_pairwise_open : pairwiseOpen X V
  nonempty_U : Set.Nonempty U
  nonempty_V : Set.Nonempty V
  disjoint_UV : U ∩ V = ∅
  union_UV : U ∪ V = Set.univ

structure PairwiseConnectedPackage (X : Bispace) where
  no_pairwise_disconnection : Prop
  evidence : no_pairwise_disconnection

def PairwiseConnectedClosed (X : Bispace) (P : PairwiseConnectedPackage X) : Prop :=
  P.no_pairwise_disconnection

theorem pairwise_connected_closed_from_evidence (X : Bispace) (P : PairwiseConnectedPackage X) :
    PairwiseConnectedClosed X P :=
  by
  exact P.evidence

structure PairwiseTotallyDisconnectedPackage (X : Bispace) where
  every_pairwise_open_cover_by_two_sets_has_single_set : Prop
  evidence : every_pairwise_open_cover_by_two_sets_has_single_set

def PairwiseTotallyDisconnectedClosed (X : Bispace) (P : PairwiseTotallyDisconnectedPackage X) : Prop :=
  P.every_pairwise_open_cover_by_two_sets_has_single_set

theorem pairwise_totally_disconnected_closed_from_evidence (X : Bispace) (P : PairwiseTotallyDisconnectedPackage X) :
    PairwiseTotallyDisconnectedClosed X P :=
  by
  exact P.evidence

end BitopologiesCanonicalLaneLean
end HautevilleHouse