- make aws account
- go to ec2 and build an instance
- name it whatever you want
- make a key pair and save it to the repository (default settings are fine)
- connect to instance
- type in these commands

``` bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service start docker
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
nano script.sh 
#copy and paste the code from script.sh in the repo to the aws terminal
logout
```
- go back to the home page and go to security groups on the side
- find the instance of your security group and click on the id
- scroll down and hit edit inbound rules
- add rule with the port range being 4000 and the source being Anywhere-IPv4
- save rules
- set up circleci
- fill out env_vars:
  - [x] docker_login
    - dockerhub username (not the email the other one)
  - [x] docker_password
    - dockerhub password
  - [x] aws_domain 
    - after creating the instance click on it and copy the link under **Public IPv4 DNS** should look something like this `ec2-54-209-115-31.compute-1.amazonaws.com`
  - [x] ssh_key
    - paste from the file downloaded during key pair creation, the secret key (including the header and footer here) and don't worry about filling in a domain name
