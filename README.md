# MonthlyMote

MonthlyMote is a simple API which provides an emote for the given month.


## Deployment
The API was deployed to Azure with the Azure CLI. Using a Bicep template (found in the infrastructure directory), the API was implemented and run on azure using the following commands:
```powershell
$Env:RG_NAME = "rg-iac-deployment-assignment"
$Env:AZURE_REGION = "westeurope"
$Env:DOCKER_USR = "sybrenk"
$Env:DOCKER_IMAGE = "monthlymote-dotnet7"

 az deployment sub create `
-l ${env:AZURE_REGION} --name=monthlymote --template-file main.bicep `
--parameters rgName=${env:RG_NAME} location=${env:AZURE_REGION} `
dockerHubUser=${env:DOCKER_USR} dockerImage=${env:DOCKER_IMAGE}
```
## Footage

###CI/CD
Github Actions -> Docker:
https://files.slack.com/files-tmb/T054LF3P954-F05G2F73MNK-7126813a4f/image_480.png

###App active in Azure

Footage of app running: <link here>

## Resources
Docker Repo: https://hub.docker.com/repository/docker/sybrenk/monthlymote-dotnet7/general

Github: https://github.com/SybrenK/dotnet-api-template