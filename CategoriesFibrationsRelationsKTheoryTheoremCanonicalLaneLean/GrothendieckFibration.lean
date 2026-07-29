import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure GrothendieckFibration where
  fibration : FibrationStructure
  cleaveage : Type
  cleaveageSplitting : Prop
  pseudoFunctorCorrespondence : Prop
  cleaveageSplittingClosed : cleaveageSplitting
  pseudoFunctorCorrespondenceClosed : pseudoFunctorCorrespondence

def GrothendieckFibrationClosed (G : GrothendieckFibration) : Prop :=
  FibrationStructureClosed G.fibration ∧ G.cleaveageSplitting ∧ G.pseudoFunctorCorrespondence

structure GrothendieckFibrationEvidence (G : GrothendieckFibration) where
  fibrationClosed : FibrationStructureClosed G.fibration
  cleaveageSplittingClosed : G.cleaveageSplittingClosed
  pseudoFunctorCorrespondenceClosed : G.pseudoFunctorCorrespondenceClosed

theorem grothendieck_fibration_closed_from_evidence (G : GrothendieckFibration)
    (E : GrothendieckFibrationEvidence G) : GrothendieckFibrationClosed G := by
  exact And.intro E.fibrationClosed
    (And.intro E.cleaveageSplittingClosed E.pseudoFunctorCorrespondenceClosed)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse
