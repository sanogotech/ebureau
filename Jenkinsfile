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
		
		stage('QualityCodeSonar') { 
            steps {
                echo 'Quality Code Sonar '
				bat 'mvn sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login=a6ee2e1e2b647d5cf36cbe75e4bf76f33002b357'
			}

        }
		
		
		stage('Docker Image ') { 
            steps {
                echo 'Docker Image'
				bat  'docker build -t softeam/myebureau .'
			}

        }
		
		
		stage('Run Docker ') { 
            steps {
				bat  'docker run -p 8088:8088 -t softeam/myebureau'
			}

        }

    }
}