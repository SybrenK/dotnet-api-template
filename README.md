# MonthlyMote

MonthlyMote is a simple API which provides an emote for the given month.

## Using the API
<hosting address>/api/month -> Provides a JSON of all months with their emojis
<hosting address>/api/month/<insert month here> -> Returns the emoji associated with the month


## Deployment
The API was deployed to Azure with the Azure CLI. Using a Bicep template (found in the infrastructure directory), the API was implemented and run on azure using the following commands:
```powershell
$Env:RG_NAME = "rg-iac-deployment-assignment"
$Env:AZURE_REGION = "uksouth"
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

Deployment Center log: Docker Webhook in action
https://files.slack.com/files-tmb/T054LF3P954-F05H7J2JNMN-1d37d4cbf2/image_720.png


###App active in Azure
HTTP Metrics: https://files.slack.com/files-tmb/T054LF3P954-F05GHQKNEBD-71c4fb8de7/image_720.png
Response Time Metrics: https://files.slack.com/files-tmb/T054LF3P954-F05GNRNGV5H-ae3638b713/image_720.png
*Note: I didn't work out monitoring, I just explored the metrics to demonstrate the app is working*

## Branches
main -> Fork of https://github.com/rezabmirzaei/dotnet-api-template/tree/2d1d47e327c3ef435dd994d94d8de5e7e19a419a with my own API.
Due to unidentifiable issues with Docker deployment in my fully self-made project director, I forked this to be able to continue the assignment.
### Important commits
commit bb64f35: added my own API in the template 
commit 92fdcfe: added bicep files 
commit dedb7c7: Changed july emote from ☀ to 🌴  
commit c788e3c: Changed august emoji from 🎋 to 🎂, updated README 
commit 79c248b: updated readme, removed weatherforecast template files 

## Resources
Docker Repo: https://hub.docker.com/repository/docker/sybrenk/monthlymote-dotnet7/general
Github: https://github.com/SybrenK/dotnet-api-template
Azure deployment URL (likely offline): https://wapp-thhwxp4pl6g4q.azurewebsites.net/api/month