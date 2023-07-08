This git resource can we used as a Seed Repo for any application landing zone. 
This will create baseline components in azure for your application and working CI/CD Yaml pipelines to run right from the beginning. 

Components:
**./helper/Setup.azcli** - This script will kickstart your application setup by doing:
        1. Creating a resourse group to host all pertaining components to this application
        2. Create a service principle and assign it Contribute RBAC on Resource group
        3. Creating a Storage account and a container to maintain the TF state for our repo.
        4. Generate a SAS token valid for 7 days to access storage account.
        5. Grant SPN Blob Storage contributor access on Storage account.
        6. Creates a Keyvault and add RBAC permission "Secret GET, LIST" for above SPN.
        7. Now it will save each and every crtiical info like SG Name, Container name, SPN ID, SPN Name, SPN secret, SG SAS token, Tenant ID, Subscription ID, location etc.

**./azure-pipelines**  - This has two pipelines you can use right out of the gate. 
                    CI is auto triggered with every checkin to any branch. 
                    CD is manually triggered and only executed if CI is successful. 
                    All you need to do is create variables needed.

I know how painful it is to create variables one by one and avoiding manual errors.

Good news! you dont have to , the key vault the script created can be taged to pipeline variable group and all the variables are instantly available for your pipelines.

**.environments** - This folder have environment specific varfiles which were already configured as paraneters in CD deployment steps. Dev deployment used values in dev.tfvars and Prod deployment uses values in prod.tfvars.

**.modules** - This is just to give you the taste of modules, a very simple example of creating a sperate RG and a Storage Account in it specific to each envrinment.

**_override.tf**  - for running terrafrom commands to check till validate on local 

**.gitignore** - to ignore the override file and stop it getting into Git Repo, thus messing our backend configurations.
