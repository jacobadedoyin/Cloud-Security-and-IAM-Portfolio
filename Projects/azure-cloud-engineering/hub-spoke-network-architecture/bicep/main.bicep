param environment string
param location string = resourceGroup().location
param hubVnetName string
param spoke1VnetName string
param spoke2VnetName string
param nsgName string
param privateDnsZoneName string
param storageAccountName string

module hubVnet 'modules/networking/hub-vnet.bicep' = {
  name: 'hub-vnet-deployment'
  params: {
    vnetName: hubVnetName
    location: location
    environment: environment
  }
}

module spoke1Vnet 'modules/networking/spoke-vnet.bicep' = {
  name: 'spoke1-vnet-deployment'
  params: {
    vnetName: spoke1VnetName
    location: location
    environment: environment
    spoke: 'spoke1'
  }
}

module spoke2Vnet 'modules/networking/spoke-vnet.bicep' = {
  name: 'spoke2-vnet-deployment'
  params: {
    vnetName: spoke2VnetName
    location: location
    environment: environment
    spoke: 'spoke2'
  }
}

module hubToSpoke1Peering 'modules/networking/vnet-peering.bicep' = {
  name: 'hub-to-spoke1-peering'
  params: {
    localVnetName: hubVnetName
    remoteVnetId: spoke1Vnet.outputs.vnetId
    peeringName: 'hub-to-spoke1'
  }
  dependsOn: [hubVnet, spoke1Vnet]
}

module spoke1ToHubPeering 'modules/networking/vnet-peering.bicep' = {
  name: 'spoke1-to-hub-peering'
  params: {
    localVnetName: spoke1VnetName
    remoteVnetId: hubVnet.outputs.vnetId
    peeringName: 'spoke1-to-hub'
  }
  dependsOn: [hubVnet, spoke1Vnet]
}

module hubToSpoke2Peering 'modules/networking/vnet-peering.bicep' = {
  name: 'hub-to-spoke2-peering'
  params: {
    localVnetName: hubVnetName
    remoteVnetId: spoke2Vnet.outputs.vnetId
    peeringName: 'hub-to-spoke2'
  }
  dependsOn: [hubVnet, spoke2Vnet]
}

module spoke2ToHubPeering 'modules/networking/vnet-peering.bicep' = {
  name: 'spoke2-to-hub-peering'
  params: {
    localVnetName: spoke2VnetName
    remoteVnetId: hubVnet.outputs.vnetId
    peeringName: 'spoke2-to-hub'
  }
  dependsOn: [hubVnet, spoke2Vnet]
}

module nsg 'modules/networking/nsg.bicep' = {
  name: 'nsg-deployment'
  params: {
    nsgName: nsgName
    location: location
    environment: environment
  }
}

module privateDns 'modules/networking/private-dns-zone.bicep' = {
  name: 'private-dns-deployment'
  params: {
    zoneName: privateDnsZoneName
    hubVnetId: hubVnet.outputs.vnetId
    environment: environment
  }
}

module storage 'modules/storage/private-endpoint.bicep' = {
  name: 'storage-private-endpoint-deployment'
  params: {
    storageAccountName: storageAccountName
    location: location
    environment: environment
    subnetId: spoke1Vnet.outputs.subnetId
    privateDnsZoneId: privateDns.outputs.zoneId
  }
}
