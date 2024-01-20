variable "yandex_token" {
    type = string
    default = env("Y_TOKEN")
    description = "YC Token"
}
variable "yandex_folder_id" {
    type = string
    default = env("Y_FOLDERID")
    description = "YC Folder ID"
}
variable "yandex_subnet_id" {
    type = string
    default = env("Y_SUBNETID")
    description = "YC Subnet ID"
}

source "yandex" "example" {
  token     = var.yandex_token
  folder_id = var.yandex_folder_id
  zone      = "ru-central1-a"

  image_name        = "ubuntu2204-nginx-${formatdate("YYYYMMDDhhmmss", timestamp())}"
  image_family      = "ubuntu-web-server"
  image_description = "my custom ubuntu with nginx"

  source_image_family = "ubuntu-2204-lts"
  subnet_id           = var.yandex_subnet_id
  use_ipv4_nat        = true
  disk_type           = "network-ssd"
  ssh_username        = "ubuntu"
}

build {
  sources = ["source.yandex.example"]

  provisioner "shell" {
    script = "ubuntu-update.sh"
  }
  provisioner "shell" {
    script = "install-soft.sh"
  }
  provisioner "shell" {
    script = "test.sh"
  }
}
