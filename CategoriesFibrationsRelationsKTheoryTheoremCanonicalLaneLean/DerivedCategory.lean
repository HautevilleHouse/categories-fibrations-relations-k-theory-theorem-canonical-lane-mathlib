import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheorem

structure DerivedCategory (A : AbelianCategory) where
  chainComplexCategory : Type u
  [instCategory : Category chainComplexCategory]
  quasiIsomorphisms : Set (Morphism chainComplexCategory)
  localizationByQuasiIsomorphisms : Category
  derivedFunctor : (A ⥤ B) → (localizationByQuasiIsomorphisms ⥤ localizationByQuasiIsomorphisms)
  triangulatedStructure : Prop
  octahedralAxiom : Prop
  tStructure : Prop
  triangulatedStructureClosed : triangulatedStructure
  octahedralAxiomClosed : octahedralAxiom
  tStructureClosed : tStructure

structure DerivedCategoryEvidence (A : AbelianCategory) (D : DerivedCategory A) where
  triangulatedStructureClosed : D.triangulatedStructure
  octahedralAxiomClosed : D.octahedralAxiom
  tStructureClosed : D.tStructure

def DerivedCategoryClosed (A : AbelianCategory) (D : DerivedCategory A) : Prop :=
  D.triangulatedStructure ∧ D.octahedralAxiom ∧ D.tStructure

theorem derived_category_closed_from_evidence (A : AbelianCategory) (D : DerivedCategory A) (E : DerivedCategoryEvidence A D) : DerivedCategoryClosed A D := by
  exact And.intro E.triangulatedStructureClosed (And.intro E.octahedralAxiomClosed E.tStructureClosed)

end CategoriesFibrationsRelationsKTheoryTheorem
end HautevilleHouse
