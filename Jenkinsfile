pipeline {
    agent any
	tools {
        maven 'M3' 
    }
	
    stages {
	
		stage('SourcePreparation') {
			//steps {	
				// Get some code from a GitHub repository
				//git 'https://github.com/sanogotech/ebureau.git'
			//}
		}
		
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

    }
}