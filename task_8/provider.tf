provider "google" {
    project = "vast-zodiac-377909"
    region  = "europe-west3-c"
}

terraform {
    backend "gcs" {
        bucket = "dareit-task8"
        prefix = "terraform/state"
    }

    required_providers {
        google = {
            source = "hashicorp/google"
            version = "~> 4.0"
        }
        random = {
            source = "hashicorp/random"
            version = "~> 3.1"            
        }
    }

}