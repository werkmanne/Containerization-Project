# Install Docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

# AWS Login
aws configure

# Create ECR Repo
aws ecr create-repository --repository-name <name>

# ECR Login
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id.dkr.ecr.region.amazonaws.com>
