import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure AdditiveInvariant (src dst : Type u) [Category src] [Category dst] where
  functor : src ⥤ dst
  additiveProperty : Prop
  exactSequenceCompatibility : Prop
  additivePropertyClosed : additiveProperty
  exactSequenceCompatibilityClosed : exactSequenceCompatibility

structure AdditiveInvariantEvidence {src dst : Type u} [Category src] [Category dst] (A : AdditiveInvariant src dst) where
  additivePropertyClosed : A.additiveProperty
  exactSequenceCompatibilityClosed : A.exactSequenceCompatibility

def AdditiveInvariantClosed {src dst : Type u} [Category src] [Category dst] (A : AdditiveInvariant src dst) : Prop :=
  A.additiveProperty ∧ A.exactSequenceCompatibility

theorem additive_invariant_closed_from_evidence {src dst : Type u} [Category src] [Category dst] (A : AdditiveInvariant src dst) (E : AdditiveInvariantEvidence A) : AdditiveInvariantClosed A := by
  exact And.intro E.additivePropertyClosed E.exactSequenceCompatibilityClosed

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse