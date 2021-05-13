# ecr-ecs-dockerfile

Best video reference:
https://www.youtube.com/watch?v=kQBGbmrdYO4
1.A Linux EC2 instance with SSH and HTTP  ports  enabled for accessing the sample webpage
2. IAM user account with programmatic access and EC2ContainerRegistryPowerUser policy and administrationAccess and EC2FullAccess attached to it
     EC2 should hv a iam role attached to it :  AmazonEC2ContainerRegistryFullAccess (ecr), AmazonEC2ContainerServiceforEC2Role (ecs)
 To Install aws cli on ec2 instance:
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws --version

push commands found while creating amazon ecr:
----aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/j0r3o5g3

sudo yum install -y git
git clone https://github.com/awslabs/ecs-demo-php-simple-app
cd ecs-demo-php-simple-app/
sudo yum update -y
sudo yum install -y docker   
sudo service docker start
sudo usermod -a -G docker ec2-user
#docker info
#docker -v
docker build -t ecrdemo .
docker tag ecrdemo:latest public.ecr.aws/j0r3o5g3/ecrdemo:latest
docker image ls
docker push public.ecr.aws/j0r3o5g3/ecrdemo:latest
docker images
check in ecr for latest image pushed……..
END of ECR


