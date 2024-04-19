az group create --name rg-dp100-mlops --location eastus
az ml workspace create --name wks-dp100-mlops --location eastus --resource-group rg-dp100-mlops
az ml compute create --name yazar --type computeinstance --size Standard_DS1_v2 --resource-group rg-dp100-mlops --workspace-name wks-dp100-mlops
