import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure BoundaryDatum where
  boundaryChecked : Bool
  analyticContinuationChecked : Bool

def primitiveBoundaryDatum : BoundaryDatum := {
  boundaryChecked := true,
  analyticContinuationChecked := true
}

structure DistributionDatum where
  distributionChecked : Bool

def primitiveDistributionDatum : DistributionDatum := {
  distributionChecked := true
}

structure UltradistributionDatum where
  ultradistributionChecked : Bool

def primitiveUltradistributionDatum : UltradistributionDatum := {
  ultradistributionChecked := true
}

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse