param vnetName string
param location string
param environment string
param spoke string

var addressPrefix = spoke == 'spoke1' ? '10.1.0.0/16' : '10.2.0.0/16'
var subnetPrefix = spoke == 'spoke1' ? '10.1.0.0/24' : '10.2.0.0/24'

resource spokeVnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [addressPrefix]
    }
    subnets: [
      {
        name: 'WorkloadSubnet'
        properties: {
          addressPrefix: subnetPrefix
          privateEndpointNetworkPolicies: 'Disabled'
        }
      }
    ]
  }
  tags: {
    environment: environment
    'managed-by': 'bicep'
    project: 'hub-spoke-network'
  }
}

output vnetId string = spokeVnet.id
output vnetName string = spokeVnet.name
output subnetId string = spokeVnet.properties.subnets[0].id
