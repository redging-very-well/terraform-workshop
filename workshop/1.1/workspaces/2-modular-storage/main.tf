# Calling the storage/aws module:
module "cloud_storage" {
  source = "../../modules/storage/aws"
  name   = "${var.first_name}-${var.last_name}"
}
