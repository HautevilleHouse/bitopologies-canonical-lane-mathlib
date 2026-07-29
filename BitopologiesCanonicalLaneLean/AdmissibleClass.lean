import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalSpace where
  carrier : Type u
  tau1 : TopologicalSpace carrier
  tau2 : TopologicalSpace carrier

structure BitopologyAdmittedObject where
  space : BitopologicalSpace
  biregular : Prop
  pairwiseHausdorff : Prop
  conclusion : biregular ∧ pairwiseHausdorff

structure AdmissibleClass where
  object : BitopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BitopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BitopologiesCanonicalLaneLean
end HautevilleHouse