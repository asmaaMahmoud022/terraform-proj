module "iti"{
    source                ="./network"
    cider                 = var.mycider
    name                  = var.name
    public1_subnet_cider  = var.public1_subnet_cider
    public2_subnet_cider  = var.public2_subnet_cider
    private1_subnet_cider = var.private1_subnet_cider
    private2_subnet_cider = var.private2_subnet_cider
    AZ_a                  = var.AZ_a
    AZ_b                  = var.AZ_b
}