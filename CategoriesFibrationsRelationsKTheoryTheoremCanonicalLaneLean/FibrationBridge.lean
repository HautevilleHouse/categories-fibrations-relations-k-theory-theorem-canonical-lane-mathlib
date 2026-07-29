import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheorem

structure FibrationBridge (F : FiberedCategory 𝒞) where
  homotopyLiftingProperty : Prop
  modelCategoryStructure : Prop
  QuillenAdjunction : Prop
  derivedFunctorWellDefined : Prop
  homotopyLiftingPropertyClosed : homotopyLiftingProperty
  modelCategoryStructureClosed : modelCategoryStructure
  QuillenAdjunctionClosed : QuillenAdjunction
  derivedFunctorWellDefinedClosed : derivedFunctorWellDefined

structure FibrationBridgeEvidence (B : FibrationBridge F) where
  homotopyLiftingPropertyClosed : B.homotopyLiftingProperty
  modelCategoryStructureClosed : B.modelCategoryStructure
  QuillenAdjunctionClosed : B.QuillenAdjunction
  derivedFunctorWellDefinedClosed : B.derivedFunctorWellDefined

def FibrationBridgeClosed (B : FibrationBridge F) : Prop :=
  B.homotopyLiftingProperty ∧ B.modelCategoryStructure ∧ B.QuillenAdjunction ∧ B.derivedFunctorWellDefined

theorem fibration_bridge_closed_from_evidence (B : FibrationBridge F) (E : FibrationBridgeEvidence B) : FibrationBridgeClosed B := by
  exact And.intro E.homotopyLiftingPropertyClosed (And.intro E.modelCategoryStructureClosed (And.intro E.QuillenAdjunctionClosed E.derivedFunctorWellDefinedClosed))

end CategoriesFibrationsRelationsKTheoryTheorem
end HautevilleHouse
