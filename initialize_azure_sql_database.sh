#!/bin/bash

# To initialize credentials in variables
. ./.env

az sql server create --name $azureSQLDatabaseServer --resource-group $resourceGroup --location "$location" --admin-user $azureSQLDatabaseUsername --admin-password $azureSQLDatabasePassword

echo "Configuring firewall..."
az sql server firewall-rule create --resource-group $resourceGroup --server $azureSQLDatabaseServer -n AllowYourIp --start-ip-address $clientip --end-ip-address $clientip

echo "Creating $azureSQLDatabaseDatabase on $azureSQLDatabaseServer..."
# Create a Standard S0 database
az sql db create --resource-group $resourceGroup --server $azureSQLDatabaseServer --name $azureSQLDatabaseDatabase --service-objective S0