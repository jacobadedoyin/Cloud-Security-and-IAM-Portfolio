param vnetName string
param location string
param environment string

resource hubVnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'GatewaySubnet'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'SharedServicesSubnet'
        properties: {
          addressPrefix: '10.0.1.0/24'
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

output vnetId string = hubVnet.id
output vnetName string = hubVnet.name
