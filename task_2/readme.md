## Task 2

The goal of the task is to create a static website and host it in the Google Cloud Storage bucket.

Steps:

1. Create a bucket with unchecked "Enforce pubic access prevention on this bucket"
2. Create a repository task_2
3. Create two files - website_url and index.html
4. Put a code of the website to index.html
5. Upload index.html file to the bucket
6. Give permissions to the bucket - go to the permissions tab -> GRANT ACCESS. In the New principals write allUsers. For the role that those allUsers should have choose predefined role called Storage Object Viewer. 
7. Copy the public url of the object and paste it into website_url file.
8. Commit and push changed to remote repository.