- make aws account
- setup IAM permissions
- go to ec2 and build an instance
- make a key pair and save it to the repository but make sure to git ignore
- connect to instance
- type in these commands

```
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service start docker
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
nano script.sh 
#copy and paste the code from script.sh in the repo to the aws terminal
logout
```
- fill out env_vars:
  - [x] docker_login
    - dockerhub username (not the email the other one)
  - [x] docker_password
    - dockerhub password
  - [x] aws_access_key_id
    - ![link]()
  - [x] aws_default_region
    - the first part of the domain, should be something like us-east-1
  - [x] aws_secret_access_key
  - [x] ssh_key
  - [x] aws_domain 
    - 