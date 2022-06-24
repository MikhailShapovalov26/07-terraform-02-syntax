terraform {
  required_version = "= 1.1.9"

  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}
variable "yc_token" {
  type = string
  description = "Yandex Cloud API key"
}
variable "yc_cloud_id" {
  type = string
  description = "Yandex Cloud id"
}
variable "yc_folder_id" {
  type = string
  description = "Yandex Cloud folder id"
}

provider "yandex" {
    token = var.yc_token
    cloud_id = var.yc_cloud_id
    folder_id = var.yc_folder_id
    zone = "ru-central1-a"
}



