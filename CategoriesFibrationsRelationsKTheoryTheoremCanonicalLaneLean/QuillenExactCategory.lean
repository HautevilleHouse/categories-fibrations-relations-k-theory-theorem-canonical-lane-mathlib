import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure QuillenExactCategory where
  additiveCategory : Type u
  shortExactSequences : Type v
  exactnessAxioms : Prop
  additiveStructureClosed : Prop
  shortExactSequencesClosed : Prop
  exactnessAxiomsClosed : exactnessAxioms
  additiveStructureClosedTerm : additiveStructureClosed
  shortExactSequencesClosedTerm : shortExactSequencesClosed

def QuillenExactCategoryClosed (Q : QuillenExactCategory) : Prop :=
  Q.exactnessAxioms ∧ Q.additiveStructureClosed ∧ Q.shortExactSequencesClosed

structure QuillenExactCategoryEvidence (Q : QuillenExactCategory) where
  exactnessAxiomsClosed : Q.exactnessAxiomsClosed
  additiveStructureClosedTerm : Q.additiveStructureClosedTerm
  shortExactSequencesClosedTerm : Q.shortExactSequencesClosedTerm

theorem quillen_exact_category_closed_from_evidence (Q : QuillenExactCategory)
    (E : QuillenExactCategoryEvidence Q) : QuillenExactCategoryClosed Q := by
  exact And.intro E.exactnessAxiomsClosed
    (And.intro E.additiveStructureClosedTerm E.shortExactSequencesClosedTerm)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse
