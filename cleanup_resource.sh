#!/bin/bash

# To initialize credentials in variables
. ./.env


az group delete --name $resourceGroup

echo "Resource group $resourceGroup is deleted"