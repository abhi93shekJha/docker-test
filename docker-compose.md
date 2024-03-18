- Useful when we want to run application with multiple containers.
- It is basically a file with key value pair, just like json.
- In this file we specify ports and build context, volumes, commands for each service.
- By using this file we won't have to manually run our docker container from command line.
- Using this all the services listed in this file will be built, and start running automatically.
- It will automatically download all the dependencies etc and expose the services on specified ports.

### Commands
- docker-compose : all the subcommands are listed. Any of these commands will effect multiple containers in our app.
- docker-compose build --help :  shows various options when building.
- docker-compose build : for building for  
- docker-compose build --no-cache : this will do full re-build without using any image layer caches.
- docker-compose up : if images are ready if will start them, or it will first build then start.
- docker-compose up --build : this will build then run.
- docker-compose up -d : this will run in detach mode (in the backgroud).
- docker-compose ps : shows all the containers relevent to current application, with their ports etc.
- docker ps : shows all the running containers across all applications.
- docker-compose down : will bring the services down, but the images remain there, so next time when doing docker-compose up, it start very quickly.

### Networking with docker
- When we run our application with docker-compose, it automatically creates a network and add our containers on that network so that these containers can talk to each other.
- docker-compose up -d, will create a network named 'appname_default'
- docker network ls : will list all the available networks.
- docker exec -it 8c6 sh : will start container (with id 8c6) in interactive shell.
- Now, ping api : it will throw error, because of not having permission to ping.
- docker exec -it -u root 8c6 sh : starting the shell again as root user.
- Now, ping api : will get responses now.
