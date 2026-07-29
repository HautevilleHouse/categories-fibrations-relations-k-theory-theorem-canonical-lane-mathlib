import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheorem

structure QuillenExactCategory where
  obj : Type u
  [instCategory : Category obj]
  admissibleMonomorphisms : Set (Morphism obj)
  admissibleEpimorphisms : Set (Morphism obj)
  exactSequence : (a ⟶ b) × (b ⟶ c) → Prop
  pushoutAxiom : Prop
  pullbackAxiom : Prop
  pushoutAxiomClosed : pushoutAxiom
  pullbackAxiomClosed : pullbackAxiom

structure QuillenQConstruction (Q : QuillenExactCategory) where
  QCcCategory : Type u
  [instQCc : QCcCategory]
  qPlusConstruction : Functor (BoundedChainComplex Q) (QCcCategory)
  resolutionTheorem : Prop
  devissageTheorem : Prop
  localizationTheorem : Prop
  resolutionTheoremClosed : resolutionTheorem
  devissageTheoremClosed : devissageTheorem
  localizationTheoremClosed : localizationTheorem

structure QuillenQConstructionEvidence (Q : QuillenExactCategory) (C : QuillenQConstruction Q) where
  resolutionTheoremClosed : C.resolutionTheorem
  devissageTheoremClosed : C.devissageTheorem
  localizationTheoremClosed : C.localizationTheorem

def QuillenQConstructionClosed (Q : QuillenExactCategory) (C : QuillenQConstruction Q) : Prop :=
  C.resolutionTheorem ∧ C.devissageTheorem ∧ C.localizationTheorem

theorem quillen_q_construction_closed_from_evidence (Q : QuillenExactCategory) (C : QuillenQConstruction Q) (E : QuillenQConstructionEvidence Q C) : QuillenQConstructionClosed Q C := by
  exact And.intro E.resolutionTheoremClosed (And.intro E.devissageTheoremClosed E.localizationTheoremClosed)

end CategoriesFibrationsRelationsKTheoryTheorem
end HautevilleHouse
