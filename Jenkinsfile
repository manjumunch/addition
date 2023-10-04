pipeline {
    agent { label "projectA" }
    
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('step1-clone') {
            steps {
                echo 'Hello World'
                git 'https://github.com/manjumunch/addition.git'
            }
        }
        stage('step2 build') {
            steps {
                echo 'Hello World'
                sh 'yum install maven -y'
                sh 'mvn clean package'
            }
        }
        stage('step3 docker build') {
            steps {
                echo 'Hello World'
                sh 'docker build -t calculation .'
                
            }
        }
        stage('step4 docker login') {
            steps {
                echo 'Hello World'
                sh 'docker login -u manju0004 -p manjudock@123'
            }
        }
        stage('step5 image tag') {
            steps {
                echo 'Hello World'
                sh 'docker tag  calculation manju0004/calculation'
                
            }
        }
        stage('step6 docker image push') {
            steps {
                echo 'Hello World'
                sh 'docker push manju0004/calculation'
            }
        }
    }
}
