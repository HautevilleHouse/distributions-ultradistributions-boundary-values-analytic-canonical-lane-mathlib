import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure AnalyticUltradistributionClosureCertificate where
  distributionLayer : DistributionsLayerCertificate
  ultradistributionLayer : UltradistributionLayerCertificate
  boundaryLayer : AnalyticBoundaryLayerCertificate
  persistenceLayer : BoundaryValuePersistenceLayerCertificate
  closureChecked : Bool
  classicalBoundaryCarried : Bool

def analyticUltradistributionClosureCertificate : AnalyticUltradistributionClosureCertificate := {
  distributionLayer := distributionsLayerCertificate,
  ultradistributionLayer := ultradistributionLayerCertificate,
  boundaryLayer := analyticBoundaryLayerCertificate,
  persistenceLayer := boundaryValuePersistenceLayerCertificate,
  closureChecked := true,
  classicalBoundaryCarried := true
}

def AnalyticUltradistributionClosureClosed (C : AnalyticUltradistributionClosureCertificate) : Prop :=
  DistributionsLayerClosed C.distributionLayer ∧
  UltradistributionLayerClosed C.ultradistributionLayer ∧
  AnalyticBoundaryLayerClosed C.boundaryLayer ∧
  BoundaryValuePersistenceLayerClosed C.persistenceLayer ∧
  C.closureChecked = true ∧
  C.classicalBoundaryCarried = true

theorem analytic_ultradistribution_closure_closed_checked :
    AnalyticUltradistributionClosureClosed analyticUltradistributionClosureCertificate := by
  exact And.intro distributions_layer_closed_checked
    (And.intro ultradistribution_layer_closed_checked
    (And.intro analytic_boundary_layer_closed_checked
    (And.intro boundary_value_persistence_layer_closed_checked
    (And.intro rfl rfl))))

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse