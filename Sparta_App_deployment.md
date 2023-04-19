<h1>Monolith Deployment of Sparta App</h1>

A monolith architecture is a single computing network with one material(code) that sycns with the business aspect. Entire stack needs to be updated to make a change and accessing the code, building and deploying the new version of interface.

We use Vagrant, Ruby and VS code to illustrate a working example:

<h4>Step 1</h4>

Go to the directory of where you have created your Virtualisation folder.

<h4>Step 2</h4>

- Download the zip files, app and environment / Spec-Tests.
- Unzip the files and transfer it onto your virtualisation folder.

<h3>Changing our Vagrantfile</h3>

- We add the configure code to our Vagrant file to implement the changes within our app and access the Vagrant VM.

```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.56.150"
  # creating abs path to specific path to VM
  config.vm.provision "shell", path: "provision.sh"
  # syncing the app folder
  config.vm.synced_folder "app", "/home/vagrant/app"  
end

```
<h4>Step 3</h4>

- `Vagrant destroy` this command destroys your virtual box so we need to create a new one.
- We use `vagrant up` to make our connection between the virtual box and vagrant. 

<h4>Step 3</h4>

- Edit our Nginx and ensure our startup is ready within the provision.sh file we created.

```
#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx
systemctl status nginx

```
<h4>Step 4</h4>

- We ssh into our vagrant key folder which is within the `ubuntu Linux`.
- Now we are in our vagrant file, and we need to `ls`(Checks contents within the folder) and `cd` (Change directory) onto our app script-tests folder.

<h2>Iteration to use within our terminal to implement sparta app</h2>

- We can run the command `sudo gem install bundler` , which is a package for Ruby which manages and installs dependencies.
- `bundle` is used to ensure the correct ruby modules (gems) don't interfere with the app's requirements.
- `rake spec` checks what we have installed as our gem dependencies and if missing we use `gem list` to decide what to install or not. (Specific older versions of MacOs operating system might interfere with the download of Ruby, e.g. High Sierra 10.13. 

<h4>Step 1</h4>

 - node.js, nodejs --v and pm2 was missing from the list so therefore following commands are required:

`sudo apt-get install nodejs -y`

`sudo apt-get install python-software-properties`

- Downloads the in built functions within python to our linux operating system.

<h4>Step 2</h4>

`curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`

- This runs the applications software resources and packages needed to download node.js script.

<h4>Step 3 </h4>

`sudo apt-get install nodejs -y`

- This installs the node.js packages to later be used, as an app. 

<h4>Step 4</h4>

`sudo npm install pm2 -g`

- Downloads the latest version of npm (Node package manager), which consists of libraries and helps manage their dependencies.

<h4>Step 5</h4>

- `cd` onto your `app` with `ls` to find your specified file.

<h4>Step 6</h4>

`npm install` 

- Saves your specified packages into dependencies by default.

<h4>Step 7</h4>

`npm start`

- Starts the npm file

<h4>Final iteration</h4>

- Plug in your `IP` address onto browser and launch the nginx page wihth port 3000.

<img width="1306" alt="Sparta Test App" src="https://user-images.githubusercontent.com/126012715/232857883-0b546a1b-05c5-4533-9daf-339bf0fa909c.png">


<h1>Using the provision file</h1>

To execute it through the provision.sh file, so that we do not need to run any commands in our terminal is as follows:

`Vagrant Destroy` to destroy your currrent virtual box. 

- Edit your provision.sh file as below with the commands in order.

<img width="792" alt="Provision all files" src="https://user-images.githubusercontent.com/126012715/233015372-635490a7-5394-409b-bc27-ba16fe61ca38.png">


`Vagrant up` in the git bash terminal 

- This should automate Nginx, and once inputing the IP address, the Sparta App should pop up in your web browser.
