# devops_day-9_worklog
# Docker Basics – Nginx Web Application

## Project Overview
This project demonstrates Docker basics by containerizing a simple static web application using the Nginx web server.                     
The goal is to understand application runtime requirements and the Docker image lifecycle.                   

## Objective
- Create a simple web application                
- Understand its runtime requirements                 
- Containerize the application using Docker                
- Run and access the application via a Docker container                             

## Runtime Requirements
- Operating System: Linux              
- Web Server: Nginx             
- Application Type: Static Web Application                  
- Port: 80               
- Dependencies: None            
The application is served directly by Nginx without any backend or database.              

## Dockerfile Explanation
- **FROM nginx:alpine**               
  Uses a lightweight Nginx base image.               

- **COPY index.html**            
  Copies the web application into the container.             

- **EXPOSE 80**             
  Exposes the HTTP port.                

- **CMD**             
  Runs Nginx in the foreground.                         

## Docker Image Lifecycle
**Dockerfile** → **Docker Image** → **Docker Container** → **Stop** → **Remove**

## Execution Steps
1. Created the application files.
2. Built Docker image using Dockerfile.
3. Ran container with port mapping.
4. Accessed application via browser.
5. Verified logs and container details.
6. Cleaned up resources.

## Steps to Run the Application
### Build Docker Image
`docker build -t nginx-webapp:1.0 .`                       
### Run Docker Container
`docker run -d -p 8080:80 --name nginx-container nginx-webapp:1.0`                  
### Access Application
Open browser: "`http://localhost:8080`"                

## Outcome
The application was successfully containerized and deployed using Docker, demonstrating understanding of Docker basics, runtime environments, and container lifecycle.
