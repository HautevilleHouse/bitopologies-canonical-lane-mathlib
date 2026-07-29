import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BitopologiesCanonicalLaneLean.BitopologicalAdmissibleClass

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BitopologiesCanonicalLaneLean
end HautevilleHouse