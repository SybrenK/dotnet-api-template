targetScope = 'subscription'

// Passed in as parameter
param location string
param rgName string
param dockerHubUser string
param dockerImage string

var randomString = substring(uniqueString(subscription().id), 0, 3)

param resourceTags object = {
  Owner: 'martin@rezabmirzaeioutlook.onmicrosoft.com,'
  Env: 'test'
}

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: '${rgName}-${randomString}'
  location: location
  tags: resourceTags
}

module webApp './webapp.bicep' = {
  name: deployment().name
  scope: resourceGroup
  params: {
    location: location
    dockerHubUser: dockerHubUser
    dockerImage: dockerImage
  }
}

