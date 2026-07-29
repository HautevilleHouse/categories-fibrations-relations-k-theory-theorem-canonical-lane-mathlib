import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure FibrationExactnessPackage where
  baseCategory : Type u
  totalCategory : Type v
  fibrationFunctor : baseCategory -> totalCategory
  exactSequence : Prop
  fiberHomotopyInvariant : Prop
  baseChangeCompatibility : Prop

structure FibrationExactnessEvidence (F : FibrationExactnessPackage) where
  exactSequenceClosed : F.exactSequence
  fiberHomotopyInvariantClosed : F.fiberHomotopyInvariant
  baseChangeCompatibilityClosed : F.baseChangeCompatibility

def FibrationExactnessClosed (F : FibrationExactnessPackage) : Prop :=
  F.exactSequence ∧ F.fiberHomotopyInvariant ∧ F.baseChangeCompatibility

theorem fibration_exactness_closed_from_evidence (F : FibrationExactnessPackage)
    (E : FibrationExactnessEvidence F) : FibrationExactnessClosed F := by
  exact And.intro E.exactSequenceClosed
    (And.intro E.fiberHomotopyInvariantClosed E.baseChangeCompatibilityClosed)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse