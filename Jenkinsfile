pipeline {
    agent any
	tools {
        maven 'M3' 
    }

    stages {
	
		
		
        stage('Build') {
            steps {
                echo 'Hello, Build Maven'
				bat'mvn clean compile'
            }
        }
        stage('Test') { 
            steps {
                echo 'Hello, Test '
				bat 'mvn test'
			}

        }
		
		stage('Deploy ') { 
            steps {
                echo 'Hello, Deploy '
				bat 'sleep  100'
				echo 'End  , Deploy '
			}

        }

    }
}