pipeline{

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_KEY')
    }

    agent any
    stages{
        stage('checkout') {
            steps {
                    git "https://github.com/Katharine-git/provishining_ec2_using_terraform.git"
                }
            }
        stage('plan'){
            steps{
                sh 'pwd;cd provishining_ec2_using_terraform ; terraform init'
                sh 'pwd;cd provishining_ec2_using_terraform ; terraform plan'
            }
       }
        stage('terraform apply'){
            steps{
                sh 'pwd;cd provishining_ec2_using_terraform ;terraform apply --auto-approve'
            }
        }
    }
}