# Replace the following URL with a public GitHub repo URL
#$gitrepo="https://github.com/Azure-Samples/app-service-web-dotnet-get-started.git"
$webappname="StudentsList"
$location="West Europe"
$myResourceGroup ="StudentsList"

#Login-AzureRmAccount

# Create a resource group.
#New-AzureRmResourceGroup -Name myResourceGroup -Location $location

# Create an App Service plan in Free tier.
New-AzureRmAppServicePlan -Name $webappname -Location $location -ResourceGroupName $myResourceGroup -Tier Free

# Create a web app.
New-AzureRmWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName $myResourceGroup