import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BitopologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BitopologiesCanonicalLaneLean
end HautevilleHouse