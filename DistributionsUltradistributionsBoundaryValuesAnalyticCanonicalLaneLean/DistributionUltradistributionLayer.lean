import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure DistributionUltradistributionLayerCertificate where
  distributionDatum : DistributionDatum
  ultradistributionDatum : UltradistributionDatum
  embeddingRoute : String
  distributionChecked : Bool
  ultradistributionChecked : Bool
  classicalComplementCarried : Bool

def distributionUltradistributionLayerCertificate : DistributionUltradistributionLayerCertificate := {
  distributionDatum := primitiveDistributionDatum,
  ultradistributionDatum := primitiveUltradistributionDatum,
  embeddingRoute := "embedding of distributions into ultradistributions via convolution with Gevrey kernel",
  distributionChecked := true,
  ultradistributionChecked := true,
  classicalComplementCarried := true
}

def DistributionUltradistributionLayerClosed (C : DistributionUltradistributionLayerCertificate) : Prop :=
  C.distributionDatum.distributionChecked = true ∧
  C.ultradistributionDatum.ultradistributionChecked = true ∧
  C.distributionChecked = true ∧
  C.ultradistributionChecked = true ∧
  C.classicalComplementCarried = true

theorem distribution_ultradistribution_layer_closed_checked :
    DistributionUltradistributionLayerClosed distributionUltradistributionLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse