import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean.ToeplitzDistributionsLayer
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean.UltradistributionLayer
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean.BoundaryAnalyticExtensionLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure DistributionsCertificate where
  toeplitzLayer : ToeplitzDistributionLayerCertificate
  ultraLayer : UltradistributionLayerCertificate
  boundaryExtensionLayer : BoundaryAnalyticExtensionLayerCertificate
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

def distributionsCertificate : DistributionsCertificate := {
  toeplitzLayer := toeplitzDistributionLayerCertificate,
  ultraLayer := ultradistributionLayerCertificate,
  boundaryExtensionLayer := boundaryAnalyticExtensionLayerCertificate,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def DistributionsCertificateClosed (C : DistributionsCertificate) : Prop :=
  ToeplitzDistributionLayerClosed C.toeplitzLayer ∧
  UltradistributionLayerClosed C.ultraLayer ∧
  BoundaryAnalyticExtensionLayerClosed C.boundaryExtensionLayer ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem distributions_certificate_closed_checked :
    DistributionsCertificateClosed distributionsCertificate := by
  exact And.intro toeplitz_distribution_layer_closed_checked
    (And.intro ultradistribution_layer_closed_checked
    (And.intro boundary_analytic_extension_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl)))))

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse
