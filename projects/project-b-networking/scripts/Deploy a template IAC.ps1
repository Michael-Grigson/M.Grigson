## To deploy to a resource group, use New-AzResourceGroupDeployment.
 New-AzResourceGroupDeployment -ResourceGroupName az104-rg3 -TemplateFile template.json -TemplateParameterFile parameters.json

## Confirm the disk was created.
Get-AzDisk | ft Name,ResourceGroupName,Location,DiskSizeGb,ProvisioningState


##Bash To deploy to a resource group, use az deployment group create.
az deployment group create --resource-group az104-rg3 --template-file template.json --parameters parameters.json
az deployment group create --resource-group az104-rg3 --template-file azuredeploydisk.bicep

##Bash Confirm the disk was created.
az disk list --resource-group az104-rg3 --output table


########################################################################################################################

## Deploy an ARM template to Azure
#First, sign in to Azure by using the Azure CLI or Azure PowerShell

#Azure CLI #
az login

#Azure PowerShell
Connect-AzAccount

## Define your resource group. You can use an already-defined resource group or create a new one with the following command.
#You can obtain available location values from: az account list-locations (CLI) or Get-AzLocation (PowerShell).
#You can configure the default location using az configure --defaults location=<location>

#Azure CLI
az group create --name {name of your resource group} --location "{location}"

#Azure PowerShell
New-AzResourceGroup -Name {name of your resource group} -Location "{location}"

#Both commands require the resource group, the region, and the name for the deployment so you can easily identify it in the deployment history.
#For convenience, the exercises create a variable that stores the path to the template file. 
#This variable makes it easier for you to run deployment commands, because you don't have to retype the path every time you deploy.

#Azure CLI
templateFile="{provide-the-path-to-the-template-file}"
az deployment group create --name blanktemplate --resource-group myResourceGroup --template-file $templateFile

#Azure PowerShell
$templateFile = "{provide-the-path-to-the-template-file}"
New-AzResourceGroupDeployment -Name blanktemplate -ResourceGroupName myResourceGroup -TemplateFile $templateFile

## Change the name of the deployment to better reflect what this deployment does
# Azure PowerShell
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addstorage-"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile


