import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure FibrationFiberBundle (cat : Type u) [Category cat] where
  total : cat
  base : cat
  projection : total ⟶ base
  fiber : cat
  localTrivialization : Prop
  cartesianLift : Prop
  cartesianLiftProperty : cartesianLift

structure FibrationFiberBundleEvidence {cat : Type u} [Category cat] (F : FibrationFiberBundle cat) where
  localTrivializationClosed : F.localTrivialization
  cartesianLiftClosed : F.cartesianLift

def FibrationFiberBundleClosed {cat : Type u} [Category cat] (F : FibrationFiberBundle cat) : Prop :=
  F.localTrivialization ∧ F.cartesianLift

theorem fibration_fiber_bundle_closed_from_evidence {cat : Type u} [Category cat] (F : FibrationFiberBundle cat) (E : FibrationFiberBundleEvidence F) : FibrationFiberBundleClosed F := by
  exact And.intro E.localTrivializationClosed E.cartesianLiftClosed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse