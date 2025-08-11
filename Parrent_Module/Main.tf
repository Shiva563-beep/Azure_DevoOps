module "azurerm_resource_group"{
    source="../Child_Module/Azurerm_Resource_Group"
    resource_group_name= "shva_rg1"
    location= "Japan East"
}
