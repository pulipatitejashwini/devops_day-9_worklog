# Docker Basics – Nginx Web Application

This file contains all commands used to create, containerize, and run a simple Nginx web application using Docker.

## 1. Create Project Directory
`mkdir nginx-webapp`                    
`cd nginx-webapp`                 

## 2. Create HTML Application
`vi index.html`                  
Add the sample Nginx HTML content              

## 3. Create Dockerfile
`vi Dockerfile`               

## 4. Build Docker Image
`docker build -t nginx-webapp:1.0 .`                  

### Verify image:
`docker images`                

## 5. Run Docker Container
`docker run -d -p 8080:80 --name nginx-container nginx-webapp:1.0`                   

### Verify container:
`docker ps`                  
`docker container ls`                     

## 6. Access Application
Open browser:               
`http://localhost:8080`                

## 7. Check Logs
`docker logs nginx-container`                    

## 8. Inspect Container
`docker inspect nginx-container`               

## 9. Stop and Remove Container
`docker stop nginx-container`                     
`docker rm nginx-container`                  

## 10. Remove Docker Image
`docker rmi nginx-webapp:1.0`                

## 11. Cleanup Unused Resources 
`docker system prune`                   
 
