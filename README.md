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


# notes on ssh custom file path addition and resolve clone issue
ssh-keygen -t rsa -b 4096 -f ~/.ssh/my_ssh_key
ssh-add ~/.ssh/local_webapp_key
git clone -c core.sshCommand='ssh -i ~/.ssh/ec2_webapp_key' git@github.com:open-competition/open-competition-webapp.git .