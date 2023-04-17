<h1>Setting up development Environment</h1>

<h2>Virtual Machine</h2>

<img width="821" alt="Virtualisation diagram" src="https://user-images.githubusercontent.com/126012715/232557646-e6bfd7eb-9a33-4b3d-9bdc-e27136ca29ca.png">

A virtual machine (VM) is an environment that works like a computer within it. Running on an isolated partition of it's local hosts computer, With it's own CPU power, memory, operating system (MacOs, Linux). Applications on VMs can be run by users.  

<h3>Installation of Vagrant, Virtual Box, Ruby</h3>

Vagrant is an open source tool, used for building and maintaining portable virtual software developments environments. 

- Install the latest `Vagrant` or similar to the OS / operating system you have, `brew install hashicorp/tap/hashicorp-vagrant` for the lastest version or see website for other versions.
- Install the latest `Virtualbox` 
- Install `ruby` from `brew install ruby` if on Macos, please download `homebrew` on git bash terminal.

- Open IDE, VS code and setup your folder as "Virtualisation"
- Create new directory using `git bash` terminal and do `mkdir<file>` 
- Follow onto the directory and use `cd` and `ls` 

<h3>Follow the commands as below</h3>

`vagrant init` Initialise the file within virtualbox

Within MacOs users, errors may pop up, if persists use:

- `$ vagrant init hashicorp/precise32` and follow the process.
- 

<h3>Using VS code we edit</h3>

`Vagrant.configure("2") do |config|`
 
  `config.vm.box = "ubuntu/xenial64"`

`end`

`vagrant up` to launch the VM

`vagrant destory` to delete the file

`vagrant reload` to, well, reload

`vagrant halt` to stop the VM

 <h3>Getting and provisioning in Vagrant</h3>

- Insure `Vagrant ssh` into our VM and launch our nginx web-server
- We use `touch provision.sh` to create a shell script 
- `apt-get` package manager in Linux - mac `brew`
- `Sudo` is used to access our through our admin command
use:
`sudo apt update -y`
`sudo apt upgrade -y`

<h3>We now install nginx to our machine</h3>

- Default launch of the nginx page in host's browser 
- `sudo apt install nginx -y` to install nginx
- `systemctl status nginx`
- `systemctl restart nginx` or `systemctl start nginx`
- Use `exit` to come out VM

<h3>Automation of installation of Nginx</h3>

<h3>Step 1</h3>

- Use `touch provision.sh` 

<h3>Step 2</h3>

- Use `nano provision.sh` to edit within the file as below:

- `sudo apt-get update -y`
- `sudo apt-get upgrade -y`
- `sudo apt-get install nginx`
- `systemctl status nginx`

<h3>Step 3</h3>

- To run the file `provision.sh` we need to make it executable so we use `chmod` with the specific file name

`chmod -x provision.sh`

<h3>Step 4</h3>

We can use the follow command on VS code, and use the vagrant and virtual box connection to implement out script 

- `config.vm.provision :shell, path: "provision.sh"`

<h3>Final Iteration</h3>

- Enter `vagrant up` and use `vagrant ssh` onto our `git bash` on our VM. 
- Copy and paste the IP address as constructed on our vagrant file onto our browser to finalise our Nginx.
