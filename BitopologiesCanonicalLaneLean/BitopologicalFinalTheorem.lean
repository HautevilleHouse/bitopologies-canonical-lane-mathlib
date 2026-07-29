import HautevilleHouse.BitopologiesCanonicalLaneLean.BitopologicalGateLemmas

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

def ConstrainedBitopologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bitopological_endgame (A : AdmissibleClass) :
    ConstrainedBitopologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BitopologiesCanonicalLaneLean
end HautevilleHouse