module "azurerm_resource_group"{
    source="../Child_Module/Azurerm_Resource_Group"
    resource_group_name= "shva_rg1"
    location= "Japan East"
}

module "azurerm_storage_account"{
    depends_on= [module.azurerm_resource_group]
    source="../Child_Module/Azurerm_Strage_Account"
    storage_account_name= "shiva_storage1"
    resource_group_name= "shva_rg1"
    location= "Japan East"
}

module "azurm_sotrage_container"{
    depends_on= [module.azurerm_storage_account]
    source="../Child_Module/Azurerm_Container"
    storage_container_name="shiva_container1"
    storage_account_id="string"

}