import canonicalLaneMathlib.AdmissibleClass
import BitopologiesCanonicalLaneLean.AdmissibleClassBitopology

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

def ConstrainedBitopologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bitopology_endgame (A : AdmissibleClass) :
  ConstrainedBitopologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BitopologiesCanonicalLaneLean
end HautevilleHouse