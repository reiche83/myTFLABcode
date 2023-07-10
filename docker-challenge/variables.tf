variable "external_port" {
    description = "external port of the container"
    type = number
    default = 5432
}

variable "internal_port" {
    description = "internal port of the container"
    type = number
    default = 9876
}

variable "image_name" {
    description = "name of the image"
    type = string
    default = "registry.gitlab.com/alta3/simplegoservice"
}

variable "docker_name" {
    description = "name of the running docker"
    type = string
    default = "AltaResearchWebService"
}
