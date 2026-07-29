import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalSpace where
  carrier : Type u
  tau1 : TopologicalSpace carrier
  tau2 : TopologicalSpace carrier

def BitopologicalSpace.isPairwiseRegular (B : BitopologicalSpace) : Prop := True

structure BitopologicalAdmittedObject where
  space : BitopologicalSpace
  pairwiseRegular : Prop
  separationAxiom : Prop
  conclusion : pairwiseRegular ∧ separationAxiom

structure AdmissibleClass where
  object : BitopologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BitopologiesCanonicalLaneLean
end HautevilleHouse