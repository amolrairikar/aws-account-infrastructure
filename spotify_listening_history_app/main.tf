# terraform {
#   backend "s3" {
#     bucket         = ""
#     key            = "spotify-listening-history-app/terraform.tfstate"
#     region         = "us-east-2"
#     use_lockfile   = true
#   }
# }

terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-east-2"
  assume_role {
    role_arn     = var.infra_role_arn
    session_name = "terraform-session"
  }
}

module "spotify_project_data_bucket" {
  source         = "../modules/s3-bucket-private"
  bucket_prefix  = "spotify-listening-history-app-data-lake"
  account_number = var.account_number
  environment    = "prod"
  project        = "spotifyListeningHistoryApp"
}

output "s3_bucket_name" {
  value = module.spotify_project_data_bucket.bucket_id
}

output "s3_bucket_arn" {
  value = module.spotify_project_data_bucket.bucket_arn
}