import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

inductive RelationKind where
  | equivalence
  | fibration
  | kTheoretic

def RelationKind.toProp (rk : RelationKind) : Prop :=
  match rk with
  | RelationKind.equivalence => True
  | RelationKind.fibration => True
  | RelationKind.kTheoretic => True

structure FibrationRelationPackage where
  sourceRelation : RelationKind
  targetRelation : RelationKind
  relationPreserving : Prop
  relationLifting : Prop
  adjunctionData : Prop
  equivalenceInduced : Prop

structure FibrationRelationEvidence (P : FibrationRelationPackage) where
  relationPreservingClosed : P.relationPreserving
  relationLiftingClosed : P.relationLifting
  adjunctionDataClosed : P.adjunctionData
  equivalenceInducedClosed : P.equivalenceInduced

def FibrationRelationClosed (P : FibrationRelationPackage) : Prop :=
  P.relationPreserving ∧ P.relationLifting ∧ P.adjunctionData ∧ P.equivalenceInduced

theorem fibration_relation_closed_from_evidence
    (P : FibrationRelationPackage) (E : FibrationRelationEvidence P) :
    FibrationRelationClosed P := by
  exact And.intro E.relationPreservingClosed
    (And.intro E.relationLiftingClosed
      (And.intro E.adjunctionDataClosed E.equivalenceInducedClosed))

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse