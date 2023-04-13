## Task 4

The goal of this task it to create our first Compute Engine instance. 

Steps:

1. Go to Google Console. Choose Compute Engine from the Navigation Menu, then VM Instances. Choose CREATE INSTANCE.
2. Type in the name of your virtual machine instance. Choose a region. Choose the e2-small instance type. 
3. Keep the default service account.
4. In the Firewall section mark both HTTPs and HTTP.
5. Click Advanced options. And then Networking. Add a network tag dareit-public . 
6. Click on the Network, choose subnetwork. As well as decide whether our instance should get a public IP address (External IPv4 address), so address that is globally unique over the public Internet. Leave other options as default. After all that click CREATE.
7.  Click on the SSH button in the Connect column to connect to the Virutal Machine Instance.
8. Get package information from all configured sources (sudo apt update) and install the Apache Web server (sudo apt -y install apache2)

```sh
sudo apt update && sudo apt -y install apache2
```

9. Check the status of the Apache server (we want to see if it is active and running nicely)

```sh
sudo systemctl status apache2
```

10. Go back to your Terminal and go the the location in which the index.html file is stored. 

```sh
cd /var/www/html/
```

11. Remove the index.html file that was automatically created. 

```sh
sudo rm index.hml
```

12. Create own index.html file using the vim command.

```sh
sudo vim index.html
```

13. Put the html code to your index.html

```sh
<!DOCTYPE html>

<html>

  <head>

    <title>Hello World: Static Website</title>

  </head>

  <body>

    <h1>I am hosted on a VM in GCP.</h1>

    <p>DareIT rocks!</p>

  </body>

</html>
```

14. Save the file and exit. Got the the browser again and refresh the tab in which you previously opened your website (pasted the External IP of the VM).