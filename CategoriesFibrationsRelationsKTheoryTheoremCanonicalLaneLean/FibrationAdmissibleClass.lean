import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure FibrationAdmissibleObject where
  sourceCategory : Type u
  targetCategory : Type v
  fibrationFunctor : sourceCategory → targetCategory
  cartesianLiftCondition : Prop
  pullbackFunctor : targetCategory → sourceCategory
  closureCondition : Prop

structure AdmissibleFibrationClass where
  object : FibrationAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedFibrationClosure (A : AdmissibleFibrationClass) : Prop :=
  A.object.closureCondition ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse