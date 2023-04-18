<h1>Deployment of Sparta App</h1>

<h4>Step 1</h4>

Go to the directory of the where you have created your Virtualisation folder.

<h4>Step 2</h4>

- Download our zip files, as given, app and Environment / Spec-Tests.
- Unzip the files and transfer it onto your virtualisation folder.

<h4>Step 3</h4>

- `Vagrant destroy` this command destroys your virtual box so we need to create a new one.
- We use `vagrant up` to make our connection to between the virtual box and vagrant. 

<h4>Step 4</h4>

- We ssh into our vagrant key folder to which is within the `ubuntu Linux`
- Now we are our in our vagrant file, and we need to `ls` and `cd` onto our app folder

<h2>Iteration to use within our terminal to implement sparta app</h2>

<h3>Changing our Vagrantfile</h3>

- We add the configure code to implement the changes within our app and access the folder
- Syncing the app folder
  
`config.vm.synced_folder "app", "/home/vagrant/app"`

<h4>Step 1</h4>

`sudo apt-get install python-software-properties`

- Downloads the in built functions within python to our linux operating system.

<h4>Step 2</h4>

`curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`

- This runs the applications resources and packages needed to 

<h4>Step 3 </h4>

`sudo apt-get install nodejs -y`

- This installs the node.js packages to later be used, as an app. 

<h4>Step 4</h4>

`sudo npm install pm2 -g`

- Downloads the latest version of npm, and their dependencies 

<h4>Step 5</h4>

- `cd` onto your `app` with `ls` to find your specified file

<h4>Step 6</h4>

`npm install` 

- Saves you specified packages into dependencies by default.

<h4>Step 7</h4>

`npm start`

- Starts the npm file

<h4>Final iteration</h4>

- Plug in your `IP` address onto browser and launch the nginx page wihth port 3000.
