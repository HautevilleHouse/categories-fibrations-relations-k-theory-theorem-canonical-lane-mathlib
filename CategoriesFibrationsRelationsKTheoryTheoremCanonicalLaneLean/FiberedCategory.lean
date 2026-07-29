import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheorem

structure FiberedCategory (𝒞 : Type u) [Category 𝒞] where
  base : Type u
  [instBaseCategory : Category base]
  total : Type u
  [instTotalCategory : Category total]
  functor : total ⥤ base
  cartesianLift : ∀ (f : a ⟶ b in base) (x : total) (h : functor.obj x = b),
    { lift : x ⟶ y // functor.map lift = f ∧ IsCartesian lift }
  cartesianComposition : Prop
  cartesianClosedCondition : Prop
  cartesianCompositionClosed : cartesianComposition
  cartesianClosedConditionClosed : cartesianClosedCondition

structure FiberedCategoryEvidence (F : FiberedCategory 𝒞) where
  cartesianCompositionClosed : F.cartesianComposition
  cartesianClosedConditionClosed : F.cartesianClosedCondition

def FiberedCategoryClosed (F : FiberedCategory 𝒞) : Prop :=
  F.cartesianComposition ∧ F.cartesianClosedCondition

theorem fibered_category_closed_from_evidence (F : FiberedCategory 𝒞) (E : FiberedCategoryEvidence F) : FiberedCategoryClosed F := by
  exact And.intro E.cartesianCompositionClosed E.cartesianClosedConditionClosed

end CategoriesFibrationsRelationsKTheoryTheorem
end HautevilleHouse
