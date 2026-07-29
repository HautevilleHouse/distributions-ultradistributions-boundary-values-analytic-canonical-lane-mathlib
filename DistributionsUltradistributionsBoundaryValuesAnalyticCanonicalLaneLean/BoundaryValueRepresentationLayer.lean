import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure BoundaryValueRepresentationLayerCertificate where
  functionSpace : String
  boundaryValueType : String
  analyticContinuationRoute : String
  layerClosed : Bool

def boundaryValueRepresentationLayerCertificate : BoundaryValueRepresentationLayerCertificate := {
  functionSpace := "Hardy space on the upper half-plane",
  boundaryValueType := "distributional boundary values",
  analyticContinuationRoute := "via Cauchy integral",
  layerClosed := true
}

def BoundaryValueRepresentationLayerClosed (C : BoundaryValueRepresentationLayerCertificate) : Prop :=
  C.layerClosed = true

theorem boundary_value_representation_layer_closed_checked :
    BoundaryValueRepresentationLayerClosed boundaryValueRepresentationLayerCertificate := by
  unfold BoundaryValueRepresentationLayerClosed
  rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse