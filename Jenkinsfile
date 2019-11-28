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
		
		
		stage('Package') { 
            steps {
                echo 'Hello, Package '
				bat 'mvn  clean package'
			}

        }
		
		stage('PDeploy to Tomcat') { 
            steps {
                echo 'Deploy to Tomcat '
				//Sleep 100s
				bat 'sleep  100'
				//TODO
			}

        }
		
		//Backgroug task  Windows  :  start /b dotnet run
		//  Linux   task  &
		
		stage('Docker Image For Production ') { 
            steps {
                echo 'Docker Image'
				//bat  'docker build -t softeam/myebureau .'
			}

        }
		
		
		stage('Run Docker ') { 
            steps {
				 echo 'Run Docker'
				//bat  'docker run -p 8088:8088 -t softeam/myebureau'
			}

        }

    }
}