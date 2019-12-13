provider "google" {
  version = "~> 2.16.0"
  region = "${var.REGION}"
}

provider "random" {
  version = "~> 2.1.2"
}

## GOOGLE CLOUD VARIABLES
variable "FOLDER_ID" {}
variable "BILLING_ACCOUNT" {}
variable "CREDENTIALS" {}
variable "REGION" {}

## PROJECT VARIABLES
variable "PROJECT_NAME" {
  default = "microservices"
}


resource "random_id" "id" {
  byte_length = 4
  prefix = "${var.PROJECT_NAME}-"
}

resource "google_project" "project" {
  name = "${var.PROJECT_NAME}-${terraform.workspace}"
  project_id = "${random_id.id.hex}"
  billing_account = "${var.BILLING_ACCOUNT}"
  folder_id = "${var.FOLDER_ID}"
}

output "project_name" {
  value = "${google_project.project.name}"
}

output "project_id" {
  value = "${google_project.project.project_id}"
}
