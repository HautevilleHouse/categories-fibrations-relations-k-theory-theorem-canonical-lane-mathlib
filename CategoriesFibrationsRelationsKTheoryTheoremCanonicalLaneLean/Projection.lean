import CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def kTheoryProjection : Projection KTheoryEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ktheory_projection_idempotent (x : KTheoryEndgameState) :
    kTheoryProjection.toFun (kTheoryProjection.toFun x) = kTheoryProjection.toFun x := by
  exact kTheoryProjection.idempotent x

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse