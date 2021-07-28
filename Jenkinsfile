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
    }
    stages{
        stage('plan'){
            steps{
                sh 'terraform init'
                sh 'terraform plan'
            }
       }
    }
    stages{
        stage('terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}