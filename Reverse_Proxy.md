<h1>Reverse Proxy</h1>

<h3>What are ports?</h3>

In networking, a port is a communication endpoint for sending and recieving data across the network. To differentiate between different types of network
traffic which enables a single device to run simultenously. A port number is unique, e.g. port 80, which is used in HTTP why port 443 is used in HTTPS. A 
port number must be sent alongside the IP address so that it can be pathed to the specific endpoint.

<h3>What is a reverse proxy? How is it different to a proxy?</h3>

![image](https://user-images.githubusercontent.com/126012715/232850097-e12802ff-a7a5-47f9-be7e-c02919277386.png)

- It's a server that is stationed between the clients and servers, sending clients request to the specific server and in turn returning a response.
- Manage incoming requests from clients to servers.
- distribution of traffic among multiple servers thus improving, reliability and scalability.
- Used for load-balancing, caching and secuirty purposes.
- Simplifies network architecture and easier to monitor traffic.

Proxy:
- Acts as an intermediary between the clients and servers. 
- Used to access resources on behalf of clients, hiding the location.
- Caching, filtering, bypassing restrictions are the essentials purpose.
- Transparent or non-transparent.
- Deployed anywhere on the network, but often used to control access to the internet.


<h3>What is Nginx's default configuration?</h3>

- The main file is located at `'/etc/nginx/nginx.conf` on linux platforms. And the default server located at `nginx.conf` file.
- Nginx listens to port 80 for HTTP requests and port 443 for HTTP requests.
- Defines how the server handles incoming requests.
- HTTP block configures event driven processing like worker connections.
- Also includes, on how to enable HTTPS with SSL/TLS certifcated and how a reverse proxy is set up to the other servers.


<h2>Reverse Proxy Setup</h2>

Step 1

#Setting up the reverse proxy

    cd /etc/nginx/sites-available
    sudo rm -rf default
    sudo echo "
    server {
        listen 80;
        server_name _;
            location / {
                proxy_pass http://192.168.10.100:3000;
                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection 'upgrade';
                proxy_set_header Host $host;
                proxy_cache_bypass $http_upgrade;
        }
    }
        " >> default


Runs the sparta test program
cd sync/app/
sudo npm install
sudo systemctl restart nginx
node seeds/seed.js
pm2 start app.js
