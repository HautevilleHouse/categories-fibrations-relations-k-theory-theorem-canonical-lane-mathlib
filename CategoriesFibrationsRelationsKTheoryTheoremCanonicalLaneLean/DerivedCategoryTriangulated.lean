import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure DerivedCategoryTriangulated (cat : Type u) [Category cat] [Abelian cat] where
  derivedCategory : Type u
  triangulatedStructure : Prop
  shiftFunctor : derivedCategory ⥤ derivedCategory
  distinguishedTriangles : Prop
  octahedralAxiom : Prop
  triangulatedStructureProperty : triangulatedStructure
  distinguishedTrianglesProperty : distinguishedTriangles
  octahedralAxiomProperty : octahedralAxiom

structure DerivedCategoryTriangulatedEvidence (D : DerivedCategoryTriangulated cat) where
  triangulatedStructureClosed : D.triangulatedStructure
  distinguishedTrianglesClosed : D.distinguishedTriangles
  octahedralAxiomClosed : D.octahedralAxiom

def DerivedCategoryTriangulatedClosed (D : DerivedCategoryTriangulated cat) : Prop :=
  D.triangulatedStructure ∧ D.distinguishedTriangles ∧ D.octahedralAxiom

theorem derived_category_triangulated_closed_from_evidence (D : DerivedCategoryTriangulated cat) (E : DerivedCategoryTriangulatedEvidence D) : DerivedCategoryTriangulatedClosed D := by
  exact And.intro E.triangulatedStructureClosed (And.intro E.distinguishedTrianglesClosed E.octahedralAxiomClosed)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse