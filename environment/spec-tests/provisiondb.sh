sudo apt update -y
sudo apt upgrade -y
# Key server for missing signed keys in mongo installation files
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
# Getting the mongo repo
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
# Updating our VM
sudo apt update -y
# Upgrading our VM
sudo apt upgrade -y
# Installing the mongo packages we want
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
# mongod.conf IP
sudo sed -i 's/^\(\s*bindIp:\).*/\1 0.0.0.0/' /etc/mongod.conf
# Restart the db
sudo systemctl restart mongod
sudo systemctl enable mongod


