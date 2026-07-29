import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure BottPeriodicityPackage where
  KGroupZero : Type u
  KGroupTwo : Type v
  isomorphism : KGroupZero ≅ KGroupTwo
  periodicityMap : KGroupZero → KGroupTwo
  invertible : Prop
  naturalityBaseChange : Prop

structure BottPeriodicityEvidence (B : BottPeriodicityPackage) where
  invertibleClosed : B.invertible
  naturalityBaseChangeClosed : B.naturalityBaseChange

def BottPeriodicityClosed (B : BottPeriodicityPackage) : Prop :=
  B.invertible ∧ B.naturalityBaseChange

theorem bott_periodicity_closed_from_evidence (B : BottPeriodicityPackage)
    (E : BottPeriodicityEvidence B) : BottPeriodicityClosed B := by
  exact And.intro E.invertibleClosed E.naturalityBaseChangeClosed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse