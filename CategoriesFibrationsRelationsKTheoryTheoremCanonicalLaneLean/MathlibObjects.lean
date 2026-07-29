import CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure KTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure KTheoryAdmittedObject where
  space : KTheorySpace
  compactHausdorff : Prop
  vectorBundleRank : Nat
  ringModel : Type
  ringTopology : TopologicalSpace ringModel
  kTheoryGroupComputed : Prop
  conclusion : kTheoryGroupComputed

structure KTheoryEndgameState where
  object : KTheoryAdmittedObject

def KTheoryWitnessClosed (O : KTheoryAdmittedObject) : Prop :=
  O.kTheoryGroupComputed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse