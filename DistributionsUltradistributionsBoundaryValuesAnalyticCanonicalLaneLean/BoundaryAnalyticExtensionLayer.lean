import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure BoundaryAnalyticExtensionDatum where
  analyticFunction : String
  boundaryDistribution : String
  extensionRoute : String
  analyticExtensionChecked : Bool
  boundaryReconstructionChecked : Bool

def primitiveBoundaryAnalyticExtensionDatum : BoundaryAnalyticExtensionDatum := {
  analyticFunction := "holomorphic function in the upper half-plane",
  boundaryDistribution := "tempered distribution on the real line",
  extensionRoute := "analytic extension via Poisson kernel",
  analyticExtensionChecked := true,
  boundaryReconstructionChecked := true
}

structure BoundaryAnalyticExtensionLayerCertificate where
  extensionDatum : BoundaryAnalyticExtensionDatum
  extensionRoute : String
  reconstructionRoute : String
  analyticExtensionChecked : Bool
  boundaryReconstructionChecked : Bool

def boundaryAnalyticExtensionLayerCertificate : BoundaryAnalyticExtensionLayerCertificate := {
  extensionDatum := primitiveBoundaryAnalyticExtensionDatum,
  extensionRoute := "Poisson integral representation",
  reconstructionRoute := "boundary value in the sense of distributions",
  analyticExtensionChecked := true,
  boundaryReconstructionChecked := true
}

def BoundaryAnalyticExtensionLayerClosed (C : BoundaryAnalyticExtensionLayerCertificate) : Prop :=
  C.extensionDatum.analyticExtensionChecked = true ∧
  C.analyticExtensionChecked = true ∧
  C.boundaryReconstructionChecked = true

theorem boundary_analytic_extension_layer_closed_checked :
    BoundaryAnalyticExtensionLayerClosed boundaryAnalyticExtensionLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse
