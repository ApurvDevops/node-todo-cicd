# This is just a sample application forked from Shubham Londe repo, for Docker demo

Run these commands:

docker build -t node-app .

docker run -d -p 8000:8000 node-app:latest

And then you should be able to open in any brower , it was ran in Virtual Machine, and services was exposed to port 8000
Still we can access it in our local system
http://<vm_ip>:8000/<container_name>
