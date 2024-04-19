az group create --name rg-dp100-mlops --location eastus
az ml workspace create --name wks-dp100-mlops --location eastus --resource-group rg-dp100-mlops
az ml compute create --name yazar --type computeinstance --size Standard_DS1_v2 --resource-group rg-dp100-mlops --workspace-name wks-dp100-mlops
az ml data create --name diabetes-dev --version 1 --path https://github.com/ahmetyazar/mslearn-mlops1/tree/main/experimentation/data/diabetes-dev.csv --resource-group rg-dp100-mlops --workspace-name wks-dp100-mlops
az ml data create --name diabetes-dev-folder --version 1 --path https://github.com/ahmetyazar/mslearn-mlops1/tree/main/experimentation/data/ --resource-group rg-dp100-mlops --workspace-name wks-dp100-mlops

az ml job create --file ./mslearn-mlops1/src/job.yml --workspace-name wks-dp100-mlops --resource-group rg-dp100-mlops
