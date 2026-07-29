import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure QuillenModelStructurePackage where
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  factorizationAxiomWeakEquivFollowedByFibration : Prop
  factorizationAxiomCofibrationFollowedByWeakEquiv : Prop
  liftingProperty : Prop

structure QuillenModelStructureEvidence (Q : QuillenModelStructurePackage) where
  weakEquivalencesClosed : Q.weakEquivalences
  fibrationsClosed : Q.fibrations
  cofibrationsClosed : Q.cofibrations
  factorizationAxiom1Closed : Q.factorizationAxiomWeakEquivFollowedByFibration
  factorizationAxiom2Closed : Q.factorizationAxiomCofibrationFollowedByWeakEquiv
  liftingPropertyClosed : Q.liftingProperty

def QuillenModelStructureClosed (Q : QuillenModelStructurePackage) : Prop :=
  Q.weakEquivalences ∧ Q.fibrations ∧ Q.cofibrations ∧
  Q.factorizationAxiomWeakEquivFollowedByFibration ∧
  Q.factorizationAxiomCofibrationFollowedByWeakEquiv ∧
  Q.liftingProperty

theorem quillen_model_structure_closed_from_evidence
    (Q : QuillenModelStructurePackage) (E : QuillenModelStructureEvidence Q) :
    QuillenModelStructureClosed Q := by
  exact And.intro E.weakEquivalencesClosed
    (And.intro E.fibrationsClosed
      (And.intro E.cofibrationsClosed
        (And.intro E.factorizationAxiom1Closed
          (And.intro E.factorizationAxiom2Closed E.liftingPropertyClosed))))

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse