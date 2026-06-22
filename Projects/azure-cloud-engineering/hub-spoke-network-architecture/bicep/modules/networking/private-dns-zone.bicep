param zoneName string
param hubVnetId string
param environment string

resource privateDnsZone 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: zoneName
  location: 'global'
  tags: {
    environment: environment
    'managed-by': 'bicep'
    project: 'hub-spoke-network'
  }
}

resource vnetLink 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  parent: privateDnsZone
  name: 'hub-vnet-link'
  location: 'global'
  properties: {
    virtualNetwork: {
      id: hubVnetId
    }
    registrationEnabled: false
  }
}

output zoneId string = privateDnsZone.id
output zoneName string = privateDnsZone.name
