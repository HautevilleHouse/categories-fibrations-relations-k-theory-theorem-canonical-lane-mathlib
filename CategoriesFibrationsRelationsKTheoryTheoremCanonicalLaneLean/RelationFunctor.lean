import CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean.KTheorySpectrum

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure RelationFunctorPackage {F : FibrationPackage} {K : KTheorySpectrumPackage F} where
  sourceCategory : Type u
  targetCategory : Type v
  functorAssignment : Type w
  relationPreserving : Prop
  inducedMapOnKTheory : Prop

structure RelationFunctorEvidence {F : FibrationPackage} {K : KTheorySpectrumPackage F} (R : RelationFunctorPackage F K) where
  relationPreservingClosed : R.relationPreserving
  inducedMapOnKTheoryClosed : R.inducedMapOnKTheory

def RelationFunctorClosed {F : FibrationPackage} {K : KTheorySpectrumPackage F} (R : RelationFunctorPackage F K) : Prop :=
  R.relationPreserving ∧ R.inducedMapOnKTheory

theorem relation_functor_closed_from_evidence {F : FibrationPackage} {K : KTheorySpectrumPackage F} (R : RelationFunctorPackage F K) (E : RelationFunctorEvidence R) :
    RelationFunctorClosed R := by
  exact And.intro E.relationPreservingClosed E.inducedMapOnKTheoryClosed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse