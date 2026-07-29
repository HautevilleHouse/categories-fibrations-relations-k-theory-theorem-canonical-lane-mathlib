import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheorem

structure GrothendieckConstruction (F : Func 𝒞 Cat) where
  totalCategory : Type u
  [instCategory : Category totalCategory]
  projectionFunctor : totalCategory ⥤ 𝒞
  fiberCategories : 𝒞 → Cat
  cleavage : ∀ (f : a ⟶ b in 𝒞) (x : fiberCategories a), (f, x) ⟶ (b, F.map f x) in totalCategory
  cartesianLifts : ∀ (f : a ⟶ b in 𝒞) (x : fiberCategories a), IsCartesian (cleavage f x)
  cocartesianLifts : Prop
  compositionCondition : Prop
  cocartesianLiftsClosed : cocartesianLifts
  compositionConditionClosed : compositionCondition

structure GrothendieckConstructionEvidence (G : GrothendieckConstruction F) where
  cocartesianLiftsClosed : G.cocartesianLifts
  compositionConditionClosed : G.compositionCondition

def GrothendieckConstructionClosed (G : GrothendieckConstruction F) : Prop :=
  G.cocartesianLifts ∧ G.compositionCondition

theorem grothendieck_construction_closed_from_evidence (G : GrothendieckConstruction F) (E : GrothendieckConstructionEvidence G) : GrothendieckConstructionClosed G := by
  exact And.intro E.cocartesianLiftsClosed E.compositionConditionClosed

end CategoriesFibrationsRelationsKTheoryTheorem
end HautevilleHouse
