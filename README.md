# ec2-docker-deploy
ec2-docker-deploy


## steps to deploy in ec2

1. Once ec2 is up, configure aws with below command
```
aws configure
```
command line will ask for token, secret and default region.

2. copy the script content to front end folder for env variables
3. run make command
```
make run
```

for dev
```
make run-dev
```