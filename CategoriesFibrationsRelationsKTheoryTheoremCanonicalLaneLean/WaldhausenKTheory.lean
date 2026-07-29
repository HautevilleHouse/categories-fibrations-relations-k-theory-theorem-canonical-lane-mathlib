import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure WaldhausenCategory where
  exactCategory : QuillenExactCategory
  cofibrations : Type
  weakEquivalences : Type
  cofibrationAxioms : Prop
  weakEquivalenceAxioms : Prop
  cofibrationAxiomsClosed : cofibrationAxioms
  weakEquivalenceAxiomsClosed : weakEquivalenceAxioms
  exactCategoryClosed : QuillenExactCategoryClosed exactCategory

def WaldhausenCategoryClosed (W : WaldhausenCategory) : Prop :=
  W.cofibrationAxioms ∧ W.weakEquivalenceAxioms ∧ W.exactCategoryClosed

structure WaldhausenCategoryEvidence (W : WaldhausenCategory) where
  cofibrationAxiomsClosed : W.cofibrationAxiomsClosed
  weakEquivalenceAxiomsClosed : W.weakEquivalenceAxiomsClosed
  exactCategoryClosed : W.exactCategoryClosed

theorem waldhausen_category_closed_from_evidence (W : WaldhausenCategory)
    (E : WaldhausenCategoryEvidence W) : WaldhausenCategoryClosed W := by
  exact And.intro E.cofibrationAxiomsClosed
    (And.intro E.weakEquivalenceAxiomsClosed E.exactCategoryClosed)

structure WaldhausenKTheory where
  waldhausenCategory : WaldhausenCategory
  KGroup : Type u
  plusConstruction : Prop
  additivityTheorem : Prop
  fibrationTheorem : Prop
  plusConstructionClosed : plusConstruction
  additivityTheoremClosed : additivityTheorem
  fibrationTheoremClosed : fibrationTheorem
  categoryClosed : WaldhausenCategoryClosed waldhausenCategory

def WaldhausenKTheoryClosed (K : WaldhausenKTheory) : Prop :=
  K.plusConstruction ∧ K.additivityTheorem ∧ K.fibrationTheorem ∧ K.categoryClosed

structure WaldhausenKTheoryEvidence (K : WaldhausenKTheory) where
  plusConstructionClosed : K.plusConstructionClosed
  additivityTheoremClosed : K.additivityTheoremClosed
  fibrationTheoremClosed : K.fibrationTheoremClosed
  categoryClosed : K.categoryClosed

theorem waldhausen_k_theory_closed_from_evidence (K : WaldhausenKTheory)
    (E : WaldhausenKTheoryEvidence K) : WaldhausenKTheoryClosed K := by
  exact And.intro E.plusConstructionClosed
    (And.intro E.additivityTheoremClosed
      (And.intro E.fibrationTheoremClosed E.categoryClosed))

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse
