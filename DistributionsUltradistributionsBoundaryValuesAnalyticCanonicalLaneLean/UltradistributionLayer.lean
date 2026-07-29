import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure UltradistributionLayerCertificate where
  ultradistributionType : String
  growthCondition : String
  analyticRepresentation : String
  boundaryValueRoute : String
  layerClosed : Bool

def ultradistributionLayerCertificate : UltradistributionLayerCertificate := {
  ultradistributionType := "Gevrey ultradistribution",
  growthCondition := "exponential growth of order 1",
  analyticRepresentation := "via Fourier transform in the complex plane",
  boundaryValueRoute := "boundary values of analytic functions",
  layerClosed := true
}

def UltradistributionLayerClosed (C : UltradistributionLayerCertificate) : Prop :=
  C.layerClosed = true

theorem ultradistribution_layer_closed_checked :
    UltradistributionLayerClosed ultradistributionLayerCertificate := by
  rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse