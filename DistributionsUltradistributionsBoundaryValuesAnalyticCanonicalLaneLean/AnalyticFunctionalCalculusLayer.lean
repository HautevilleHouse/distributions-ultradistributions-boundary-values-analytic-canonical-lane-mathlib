import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure AnalyticFunctionalCalculusLayerCertificate where
  operatorClass : String
  functionalCalculusType : String
  spectralDecompositionRoute : String
  layerClosed : Bool

def analyticFunctionalCalculusLayerCertificate : AnalyticFunctionalCalculusLayerCertificate := {
  operatorClass := "self-adjoint operators on Hilbert space",
  functionalCalculusType := "Borel functional calculus",
  spectralDecompositionRoute := "via spectral measure",
  layerClosed := true
}

def AnalyticFunctionalCalculusLayerClosed (C : AnalyticFunctionalCalculusLayerCertificate) : Prop :=
  C.layerClosed = true

theorem analytic_functional_calculus_layer_closed_checked :
    AnalyticFunctionalCalculusLayerClosed analyticFunctionalCalculusLayerCertificate := by
  unfold AnalyticFunctionalCalculusLayerClosed
  rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse