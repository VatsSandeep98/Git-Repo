vnet = {

  vnet1 = {

    name : "sandeepvnet"
    location : "central india"
    resource_group_name : "sharma-rg"
  }
}


subnet = {

  subnet1 = {
    name : "subnet"
    resource_group_name  = "sharma-rg"
    virtual_network_name = "sandeepvnet"


  }

}