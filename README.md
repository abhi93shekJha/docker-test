### Docker
- When we have to run our application that is running on our local to someone else's machine, we will have to install all the dependencies/libraries on this other machine.
- It may still fail, as my package may miss one or two files needed for its deployement.
- The other machine may have different configurations (environment variable etc.) which may not allow this application to run.
- So docker containerises all the dependecies together to form an image, which we can share to other machine and we won't have to install all the requirements, as docker will install and run it inside a container.
- So we can simply build docker image and push it to docker hub, another developer can pull this image and work on it, he will only have to have docker installed in his device.
- Docker hub is where we push our image files. It is just like git hub for git.
- The container is like a light weight virtual environment, which shares the host os. That's why docker has different installation for different operating systems.
- We can easily runs 100 of containers with their own versions of runtime environments(Eg. Django3.4 and python3.8 in one, Django4 and python3.10 in other etc.) and dependencies and these will be very fast to start up. 
- Whereas Virtual environment that we use, run an entire os and it shares the memory (RAM) with the existing os. That's why we can only run a handful of Virtual machines and it is very very slow to start.
- When we install docker, we install docker container engine.
- Docker architecture is a client server model, where a client interacts with container engine (server) using a Restful API. Container engine manages docker container.
- As said earlier, docker container uses the host's os, it uses the host kernal to be precise. Container is nothing but a process. We can run linux container on linux os, Windows or linux container on Windows os (since windows also contains linux kernal in it).
- We can remove the entire docker container in one go, and the entire project with all its dependencies is removed from the system.
### How it works?
- We add dockerfile to our existing application (dockerise it) with instructions to package our application into docker image.
- The image contains everything needed to run our application independently, cut down os, third party libraries, application files, runtime environment (node or python etc.), env. variables etc.
- Once we have the image, we tell docker to start a container (a special type of process). It has its own file system provided by the image.
- Now the application would be running inside a container.
- We can also push this docker image to docker hub and any machine (test/dev etc.) having docker installed can pull this and run independently without having to configure anything.
- We typically run our app with command "my-app run", now to run it inside docker container we will use "docker run ...".
### Few important commands
- To build an image: sudo docker build -t test-docker .
- Here -t is for tag, which is image name basically ('test-docker' here). Last . is for using current directly files.
- We are using sudo, to give access for root directories. We can create docker group and add users to whom we want to give access to for using docker resouces available in root.
- To see all the images on local: sudo docker image ls
- To run an image: sudo docker run test-docker
- docker ps: shows list of running containers.
- docker ps -a, shows list of stop containers.
- to start a container, docker run -it ubuntu (it is short for interactive, we are starting the container in interactive mode)
- We get a shell, it is program that takes in command and passes to os for execution.
- example of a shell prompt, root@2f759e6996e9:/# (we write command here)
- here root is for root user, '2f759e6996e9' is machine, it is actually for the container we are interacting with. / is the root path and # is for root user priviledge, if a normal user then $.

### Few commands to interact with containers and images.
- docker images : to list images
- docker ps : to list containers
- docker image rm 123 123 : to remove one or more images with image ids.
- docker image ls -q : this gives us the list of all image ids.
- docker image rm $(docker image ls -q)
