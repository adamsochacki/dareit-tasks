resource "google_compute_router" "router" {
    name    = "router"
    region  = "europe-west3-c"
    network = google_compute_network.main.id
}