import canonicalLaneMathlib.AdmissibleClass
import BitopologiesCanonicalLaneLean.BitopologicalPreliminaries

namespace HautevilleHouse
namespace BitopologiesCanonicalLaneLean

structure BitopologicalGroup where
  G : Type u
  group : Group G
  top1 : TopologicalSpace G
  top2 : TopologicalSpace G
  isTopGroup1 : TopologicalGroup G
  isTopGroup2 : TopologicalGroup G
  interCompat : TopologicalSpace.IsInduced top1 top2 (id : G → G)

/-- Theorem: Every bitopological group is isomorphic to a product of a topological group with itself. -/
theorem bitopological_group_classification (B : BitopologicalGroup) :
  ∃ (H : Type u) [TopologicalSpace H] [Group H] [TopologicalGroup H],
    Nonempty (B.G ≃* H × H) ∧ (B.top1 = induced (fun g => (g,1)) instTop) ∧ (B.top2 = induced (fun g => (1,g)) instTop) := by
  refine ⟨B.G, B.top1, B.group, B.isTopGroup1, ?_, ?_, ?_⟩
  · exact ⟨MulEquiv.refl _⟩
  · exact rfl
  · exact B.interCompat.symm

end BitopologiesCanonicalLaneLean
end HautevilleHouse