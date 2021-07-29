// Environment Variables
env.AWS_ACCESS_KEY_ID = AWS_ACCESS_KEY
env.AWS_SECRET_ACCESS_KEY = AWS_SECRET_KEY

stages{                                                                                 
  stage ('Checkout') {
    git branch: 'b1',
       url: 'https://github.com/Katharine-git/provishining_ec2_using_terraform.git'
  }

  stage ('Terraform Plan') {
    sh 'terraform init'
    sh 'terraform plan '
  }

  stage ('Terraform Apply') {
    sh 'terraform apply -auto-approve'
  }
}