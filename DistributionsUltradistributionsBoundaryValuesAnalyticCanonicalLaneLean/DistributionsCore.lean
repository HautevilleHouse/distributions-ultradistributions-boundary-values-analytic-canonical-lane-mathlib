import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean

structure AdmissibleClass where
  object : String
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DistributionsUltradistributionsBoundaryValuesAnalyticCanonicalLaneLean
end HautevilleHouse
