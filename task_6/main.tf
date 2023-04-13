provider "google" {
  project = "vast-zodiac-377909"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket_iam_member" "member" {
  bucket   = google_storage_bucket.dareit_static-site.name
  role     = "roles/storage.objectViewer"
  member   = "allUsers"
}

resource "google_storage_bucket" "dareit_static-site" {
  name          = "dareit-task6-storage-bucket"
  location      = "EU"
  force_destroy = true
}

resource "google_compute_instance" "dareit_compute_instance" {
  name         = "dareit-task6-vm-tf"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit-task6"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "task6_solution"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_sql_database_instance" "dareit" {
  name             = "dareit"
  region           = "us-central1"
  database_version = "POSTGRES_14"
  root_password    = "*****" #do not put your password like that! otherwise guys from security department will find you...
  settings {
    tier = "db-custom-2-7680"
    password_validation_policy {
      min_length                  = 6
      reuse_interval              = 2
      complexity                  = "COMPLEXITY_DEFAULT"
      disallow_username_substring = true
      password_change_interval    = "30s"
      enable_password_policy      = true
    }
  }
  deletion_protection = false # set to true to prevent destruction of the resource
}

resource "google_sql_user" "user" {
  name     = "dareit_user"
  instance = google_sql_database_instance.dareit.name
  password = "*****" # never ever do that again! passwords shouldn't be hard encoded in files
}