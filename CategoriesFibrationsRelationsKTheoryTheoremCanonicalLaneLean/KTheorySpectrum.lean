import CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean.FibrationStructure

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean

structure KTheorySpectrumPackage {F : FibrationPackage} where
  classifyingSpace : Type u
  infiniteLoopSpace : Prop
  additivityTheorem : Prop
  periodicityTheorem : Prop

structure KTheorySpectrumEvidence {F : FibrationPackage} (K : KTheorySpectrumPackage F) where
  infiniteLoopSpaceClosed : K.infiniteLoopSpace
  additivityTheoremClosed : K.additivityTheorem
  periodicityTheoremClosed : K.periodicityTheorem

def KTheorySpectrumClosed {F : FibrationPackage} (K : KTheorySpectrumPackage F) : Prop :=
  K.infiniteLoopSpace ∧ K.additivityTheorem ∧ K.periodicityTheorem

theorem ktheory_spectrum_closed_from_evidence {F : FibrationPackage} (K : KTheorySpectrumPackage F) (E : KTheorySpectrumEvidence K) :
    KTheorySpectrumClosed K := by
  exact And.intro E.infiniteLoopSpaceClosed (And.intro E.additivityTheoremClosed E.periodicityTheoremClosed)

end CategoriesFibrationsRelationsKTheoryTheoremCanonicalLaneLean
end HautevilleHouse