import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalSpace where
  carrier : Type u
  tau1 : TopologicalSpace carrier
  tau2 : TopologicalSpace carrier

structure PairwiseOpen (X : BitopologicalSpace) (s : Set X.carrier) : Prop where
  open1 : IsOpen[X.tau1] s
  open2 : IsOpen[X.tau2] s

def PairwiseClosed (X : BitopologicalSpace) (s : Set X.carrier) : Prop :=
  IsClosed[X.tau1] s ∧ IsClosed[X.tau2] s

structure BicontinuousMap (X Y : BitopologicalSpace) where
  toFun : X.carrier → Y.carrier
  cont1 : Continuous[X.tau1, Y.tau1] toFun
  cont2 : Continuous[X.tau2, Y.tau2] toFun

/-- The bitopological space with the same carrier but swapped topologies is called the conjugate. -/
def conjugateSpace (X : BitopologicalSpace) : BitopologicalSpace :=
  { X with tau1 := X.tau2, tau2 := X.tau1 }

end BitopologiesCanonicalLaneLean
end HautevilleHouse