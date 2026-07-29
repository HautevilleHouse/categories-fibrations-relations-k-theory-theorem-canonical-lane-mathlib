import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure FibrationStructure where
  totalCategory : Type u
  baseCategory : Type v
  fiberCategory : Type w
  projectionFunctor : totalCategory → baseCategory
  cartesianLift : ∀ (f : baseCategory → baseCategory), totalCategory → totalCategory
  fibrationAxiom : Prop
  fiberCategoryStructure : Prop
  cartesianLiftWellDefined : Prop

def FibrationStructureClosed (F : FibrationStructure) : Prop :=
  F.fibrationAxiom ∧ F.fiberCategoryStructure ∧ F.cartesianLiftWellDefined

structure FibrationStructureEvidence (F : FibrationStructure) where
  fibrationAxiomClosed : F.fibrationAxiom
  fiberCategoryStructureClosed : F.fiberCategoryStructure
  cartesianLiftWellDefinedClosed : F.cartesianLiftWellDefined

theorem fibration_structure_closed_from_evidence (F : FibrationStructure)
    (E : FibrationStructureEvidence F) : FibrationStructureClosed F := by
  exact And.intro E.fibrationAxiomClosed
    (And.intro E.fiberCategoryStructureClosed E.cartesianLiftWellDefinedClosed)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse
