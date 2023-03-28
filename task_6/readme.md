### Task 6

URL to the bucket static page created for the purpose of the task 6:</br>
[https://storage.googleapis.com/dareit-task6-storage-bucket/index.html](https://storage.googleapis.com/dareit-task6-storage-bucket/index.html)

Website is public because of this lines of code:

```sh
resource "google_storage_bucket_iam_member" "member" {
  bucket   = google_storage_bucket.dareit_static-site.name
  role     = "roles/storage.objectViewer"
  member   = "allUsers"
}
```