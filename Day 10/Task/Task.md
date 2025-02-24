# Deploying Java Spring Boot Application using Jenkins and Setting Up a Pipeline

## Start Jenkins
To start Jenkins, download the `jenkins.war` file and run the following command:
```sh
java -jar jenkins.war
```
![alt text](image.png)

This will start Jenkins on the default port (typically `8080`). Open `http://localhost:8080` in your browser and follow the setup instructions.

## Create a New Jenkins Job
![alt text](image-1.png)

## Configure the Job

Ensure your Jenkins job is configured properly:
![alt text](image-2.png)

![alt text](image-3.png)

![alt text](image-4.png)

## Jenkins Pipeline Script
Use the following pipeline script to build, test, package, containerize, and deploy the Spring Boot application:
```groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/sonam-niit/springproject.git'
                bat "./mvnw compile"
                echo 'Building the Project with Maven compile'
            }
        }

        stage('Test') {
            steps {
                bat "./mvnw test"
                echo 'Testing the Project with Maven test'
            }
        }

        stage('Package') {
            steps {
                bat "./mvnw package"
                echo 'Packaging the Project with Maven package'
            }
        }

        stage('Containerize') {
            steps {
                bat "docker build -t myapp ."
                echo 'Containerizing the App with Docker'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Check if the container exists
                    def containerExists = bat(script: 'docker ps -aq -f name=sbapp', returnStdout: true).trim()

                    if (containerExists) {
                        echo 'Stopping and removing existing container...'
                        bat(script: 'docker stop sbapp', returnStatus: true)
                        bat(script: 'docker rm sbapp', returnStatus: true)
                    } else {
                        echo 'No existing container found. Proceeding with deployment.'
                    }
                }

                // Run Docker container
                bat "docker run -d --name sbapp -p 9090:8082 myapp"
                echo 'Deploying the App with Docker'
            }
        }
    }
}
```

## Running the Job
![alt text](image-5.png)

![alt text](image-8.png)

## Checking the Running Container
![alt text](image-9.png)

## Checking the Deployed Application
Access the application at `http://localhost:9090`
![alt text](image-7.png)

Access the application at `http://localhost:9090/api/product/12`

![alt text](image-6.png)


## Build After Changes
Jenkins will automatically trigger a new build upon detecting changes in the repository:

![alt text](image-10.png)