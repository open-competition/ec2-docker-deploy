# ec2-docker-deploy
ec2-docker-deploy


## steps to deploy in ec2

1. Once ec2 is up, configure aws with below command
```
aws configure
```
command line will ask for token, secret and default region.

2. copy the script content to front end folder for env variables
3. Generate rsa ssh key for both api, webapp seaprately. Map public key to github ssh key, use private key in git clone command 
4. run make command
```
make run
```

for dev
```
make run-dev
```