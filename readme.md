# Create Multiple Recovery Vault over many subscriptsions and resource groups

Overview for Multi-Vault Templates:
This Master template creates Multiple Azure  Resources:
	20 Recovery Vaults 
  5 Storage Accounts 
  1 Log Analytics workspace
  
Deployment Parameters: 
	There are no User inputs or required parameters
  
Intended use:
  These files are here for reference, there is no promise or garentee of any kind of 
  
 
Deployment Procedure: 
	1.  Update the Subscription ID in the Variables section
  2.  Update the Resource group Name xxRGNAMExx in the Variables section
  3.  Update the Resource Group Location xxLOCATIONxx in the Variables section
  4.  Update the name of the Recovery Vault Name xxRecoveryVaultNamexx in the Variables section 
  5.  Update the Storage Account Name xxPREFIXxx in the Variables section
  6.  Add new Blocks or remove Blocks in the Variables arrays 
    A.  Add Blocks
      i.  Copy the block from the open { to the }, and paste in the variables array 
    B.  Remove Blocks
      i.  Highlight from the open { to the }, and delete the block 
  
    "VaultArray": [
      {
        "SubscriptionID": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "ResourceGroupName": "xxRGNAMExx",
        "Location": "xxLOCATIONxx",
        "BackupVaultName": "xxRecoveryVaultNamexx",
        "glaccount": "604"
      },
      {
        "SubscriptionID": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "ResourceGroupName": "xxRGNAMExx",
        "Location": "xxLOCATIONxx",
        "BackupVaultName": "xxRecoveryVaultNamexx",
        "glaccount": "604"
      }
     ]
     "StorageArray": [
      {
        "SubscriptionID": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "ResourceGroupName": "xxRGNAMExx",
        "Location": "xxLOCATIONxx",
        "Storage_Name": "[concat('xxPREFIXxx',uniqueString(resourceGroup().id))]",
        "Storage_kind": "StorageV2",
        "Storage_accountType": "Standard_LRS",
        "Storage_accessTier": "Cool"
      },
            {
        "SubscriptionID": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "ResourceGroupName": "xxRGNAMExx",
        "Location": "xxLOCATIONxx",
        "Storage_Name": "[concat('xxPREFIXxx',uniqueString(resourceGroup().id))]",
        "Storage_kind": "StorageV2",
        "Storage_accountType": "Standard_LRS",
        "Storage_accessTier": "Cool"
      }
    ]


<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FDeanCefola%2FAzureBackup%2Fmaster%2FMulti_backup_vault.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>


This template allows you to deploy Multiple Azure Recovery Services Vaults for Azure Backup
