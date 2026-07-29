import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure KTheoryRingSequencePackage where
  baseCategory : Type u
  fibration : baseCategory → Type v
  KGroupFiber : baseCategory → Type w
  longExactSequence : (x : baseCategory) → (KGroupFiber x) → (KGroupFiber x) → Prop
  ringStructure : Prop
  multiplicativeCompatibility : Prop
  additiveCompatibility : Prop

structure KTheoryRingSequenceEvidence (K : KTheoryRingSequencePackage) where
  longExactSequenceClosed : ∀ x, K.longExactSequence x 0 0
  ringStructureClosed : K.ringStructure
  multiplicativeCompatibilityClosed : K.multiplicativeCompatibility
  additiveCompatibilityClosed : K.additiveCompatibility

def KTheoryRingSequenceClosed (K : KTheoryRingSequencePackage) : Prop :=
  (∀ x, K.longExactSequence x 0 0) ∧ K.ringStructure ∧
  K.multiplicativeCompatibility ∧ K.additiveCompatibility

theorem k_theory_ring_sequence_closed_from_evidence
    (K : KTheoryRingSequencePackage)
    (E : KTheoryRingSequenceEvidence K) : KTheoryRingSequenceClosed K := by
  exact And.intro E.longExactSequenceClosed
    (And.intro E.ringStructureClosed
      (And.intro E.multiplicativeCompatibilityClosed E.additiveCompatibilityClosed))

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse