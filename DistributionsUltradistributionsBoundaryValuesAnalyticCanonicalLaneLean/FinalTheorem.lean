import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean.AnalyticBoundaryLayer
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean.DistributionUltradistributionLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnalyticBoundaryLayerClosed analyticBoundaryLayerCertificate ∧
  DistributionUltradistributionLayerClosed distributionUltradistributionLayerCertificate

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro analytic_boundary_layer_closed_checked distribution_ultradistribution_layer_closed_checked

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDistributionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_endgame (A : AdmissibleClass) : ConstrainedDistributionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse