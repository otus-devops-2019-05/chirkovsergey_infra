variable project {
  description = "Project ID"
}

variable region {
  description = "Region"

  # Значение по умолчанию
  default = "europe-west1"
}

variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}
variable private_key_pach {
  description = "private key appuser"
}

variable zone {
 description = "Zone"
 default = "europe-west1-b"
}
