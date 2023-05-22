# DevOps Example Application

Welcome to My Spring Boot DevOps Example Application! This is a sample project showcasing how to containerize a Spring Boot application using Docker, integrate it with Jenkins for continuous integration, and push the Docker image to DockerHub.

## Prerequisites

Before getting started, ensure that you have the following prerequisites installed on your development machine:

- Java Development Kit (JDK) 11 or later
- Docker
- Jenkins

## Project Structure

The project consists of the following files and directories:

- src/: Contains the source code for the Spring Boot application.
- pom.xml: Maven project configuration file.
- Dockerfile: Dockerfile for building the Docker image.
- docker-compose.yml: Docker Compose file for running the application locally.
- Jenkinsfile: Jenkinsfile for automating the build and deployment process.

## Getting Started

Follow these steps to set up the project and run it locally:

1. Clone this repository:

   ```bash
   git clone https://github.com/Chunnu05/DevOpsExample.git
   cd devops

   ```

2. Build the Spring Boot application:

   ./mvnw clean package

3. Run the application using Docker:

   docker-compose up

The application will be accessible at http://localhost:8080.

## Continuous Integration and Deployment with Jenkins

This project includes a Jenkinsfile that automates the build and deployment process using Jenkins. To integrate with Jenkins and push the Docker image to DockerHub, follow these steps:

Install and set up Jenkins with the necessary plugins and dependencies.

Create a new Jenkins pipeline job.

Configure the job to use your version control system and specify the repository URL.

In the job configuration, add your DockerHub credentials as Username and Password credentials with the IDs DOCKERHUB_USERNAME and DOCKERHUB_PASSWORD, respectively.

In the pipeline configuration, select "Pipeline script from SCM" and provide the path to your Jenkinsfile.

Save the job configuration.

Run the Jenkins pipeline, which will build the Docker image and push it to DockerHub.

## Deploying to DockerHub

To deploy the Docker image to DockerHub, follow these steps:

Create a DockerHub account if you don't have one.

Modify the Jenkinsfile with your DockerHub username:

Replace <your-dockerhub-username> in the Jenkinsfile with your DockerHub username.
Update the Jenkins job configuration with the appropriate DockerHub credentials.

Run the Jenkins pipeline, and it will build the Docker image, login to DockerHub, and push the image to your DockerHub repository.

Once the image is pushed to DockerHub, you can pull and run it on any Docker-compatible environment.

## Contributing

If you would like to contribute to this project, feel free to fork the repository and submit a pull request with your proposed changes. Contributions are always welcome!
