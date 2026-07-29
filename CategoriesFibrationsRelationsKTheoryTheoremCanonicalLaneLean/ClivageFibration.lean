import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure ClivageFibrationPackage where
  base : Type u
  fibers : base -> Type v
  cartesianLift : ∀ (x y : base) (f : x → y) (a : fibers y), fibers x
  cleavaged : Prop
  splitness : Prop
  cleavagedTerm : cleavaged
  splitnessTerm : splitness

structure ClivageFibrationEvidence (C : ClivageFibrationPackage) where
  cleavagedClosed : C.cleavaged
  splitnessClosed : C.splitness

def ClivageFibrationClosed (C : ClivageFibrationPackage) : Prop :=
  C.cleavaged ∧ C.splitness

theorem clivage_fibration_closed_from_evidence (C : ClivageFibrationPackage)
    (E : ClivageFibrationEvidence C) : ClivageFibrationClosed C := by
  exact And.intro E.cleavagedClosed E.splitnessClosed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse