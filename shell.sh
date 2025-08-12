#!/bin/bash

#Author:- Bhavya
#Date:- 7 August 2025
#Version:- v1
#az vm
#az blob storage

set -x #debug mode 
set -e #exist the script if there is an error
set -o #pipefail 

#list all vm 
echo "list all vm"
az vm list --output table

#list all vm in a resource group
echo "list all vm in a resource group"
az vm list --resource-group shellrs --output table

#list storage account
echo "list storage account"
az storage account list --output table

#list containers in the blob storage account
echo "list containers in the blob storage account"
az storage container list --account-name asdfstor --auth-mode login --output table

