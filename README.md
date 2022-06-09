# README

IRIS Systems Task 1

Pack [the rails application](https://github.com/VithikShah/Shopping-App-IRIS) in a docker container image.

To run the container

 1. docker build -t task_1:v1 .
 2. docker run -dp 3000:3000 task_1:v1
 3. Go to localhost:3000 to see the app
 
 References
 1. https://github.com/VithikShah/Shopping-App-IRIS
 2. https://medium.com/@itsromiljain/docker-setup-and-dockerize-an-application-5c24a4c8b428

 Steps to make the dockerised application
  1. First, I made a Dockerfile in the application directory.
  2. Then, I took a ruby base image.
  3. Then, I installed all the requires packages.
  4. Then, all the dependecies were installed.
  5. Then, I made an entrypoint.sh file which start the mysql service ,creates, migrates the database and runs the rails server.
  6. In the Dockerfile, this is compiled and run in the bash.
  7. I changed the mysql password in config/database.yml to "password" which is default mysql password for docker containers.


 
