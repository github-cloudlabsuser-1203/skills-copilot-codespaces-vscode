# Login to Azure
Connect-AzAccount

# Variables
$resourceGroupName = "MyResourceGroup"
$storageAccountName = "mystorageaccount$(Get-Random)"
$location = "East US"
$skuName = "Standard_LRS"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -Name $storageAccountName `
                     -ResourceGroupName $resourceGroupName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind "StorageV2" `
                     -AccessTier "Hot"