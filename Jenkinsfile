pipeline {
    // agent { label "dev-server"}
    agent any
    
    stages {
        
        stage("code"){
            steps{
                git url: "https://github.com/LondheShubham153/node-todo-cicd.git", branch: "master"
                echo 'bhaiyya code clone ho gaya'
            }
        }
        stage("build and test"){
            steps{
                sh "docker build -t node-app-test-new ."
                echo 'code build '
            }
        }
        stage("scan image"){
            steps{
                echo 'image scanning ho gayi'
            }
        }
        stage("push"){
            steps{
                withCredentials([usernamePassword(credentialsId:"Dockerhub",passwordVariable:"DockerhubPass",usernameVariable:"DockerhubUser")]){
                sh "docker login -u ${env.DockerhubUser} -p ${env.DockerhubPass}"
                sh "docker tag node-app-test-new:latest ${env.DockerhubUser}/node-app-test-new:latest"
                sh "docker push ${env.DockerhubUser}/node-app-test-new:latest"
                echo 'image push ho gaya'
                }
            }
        }
        stage("deploy"){
            steps{
                sh "docker-compose down && docker-compose up -d"
                echo 'deployment ho gayi'
            }
        }
    }
}
