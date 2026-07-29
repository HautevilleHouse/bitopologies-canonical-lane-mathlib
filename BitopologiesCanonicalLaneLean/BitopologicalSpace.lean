import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalSpace where
  carrier : Type u
  topology1 : TopologicalSpace carrier
  topology2 : TopologicalSpace carrier
  pairwiseProperties : Prop
  pairwisePropertiesClosed : pairwiseProperties

structure BitopologicalSpaceEvidence (B : BitopologicalSpace) where
  pairwisePropertiesClosed : B.pairwiseProperties

def BitopologicalSpaceClosed (B : BitopologicalSpace) : Prop :=
  B.pairwiseProperties

theorem bitopological_space_closed_from_evidence (B : BitopologicalSpace)
    (E : BitopologicalSpaceEvidence B) : BitopologicalSpaceClosed B :=
  E.pairwisePropertiesClosed

structure BitopologyAdmittedObject where
  space : BitopologicalSpace
  property : Prop
  conclusion : property

def BitopologyWitnessClosed (O : BitopologyAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : BitopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BitopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BitopologiesCanonicalLaneLean
end HautevilleHouse