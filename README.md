# MonthlyMote

MonthlyMote is a simple API which provides an emote for the given month


## Deployment
The API was deployed to Azure with the Azure CLI. Using a Bicep template (found in the infrastructure directory), the API was implemented and run on azure using the following commands:
```powershell
$Env:RG_NAME = "rg-iac-deployment-assignment"
$Env:AZURE_REGION = "westeurope"
$Env:DOCKER_USR = "sybrenk"
$Env:DOCKER_IMAGE = "sybrenk/monthlymote-dotnet7"

 az deployment sub create `
-l ${env:AZURE_REGION} --name=monthlymote --template-file main.bicep `
--parameters rgName=${env:RG_NAME} location=${env:AZURE_REGION} `
dockerHubUser=${env:DOCKER_USR} dockerImage=${env:DOCKER_IMAGE}
```

Footage of app running: <link here>