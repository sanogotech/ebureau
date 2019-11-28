pipeline {
    agent any
	tools {
        maven 'M3' 
    }

    stages {
	
		
		
        stage('Build') {
            steps {
                echo 'Hello, Build Maven'
				script {
					try {
							bat'mvn clean compile'
					} finally {
						println currentBuild.result  // this prints null
						step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 'me@me.com', sendToIndividuals: true])
					}
				}
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
				bat 'sleep(time:3,unit:"SECONDS")'
				
				echo 'End --- Deploy '
			}

        }

    }
}