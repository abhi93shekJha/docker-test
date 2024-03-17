# this pulls in python runtime environment with linux, it is the least a python and linux should have
FROM python:alpine
# copy everything from this location to /app in docker image file path
COPY . /app
# this will help not adding 'app/' path everytime we want to use something from image file path, we can directly specify file name
WORKDIR /app
# running command with CMD, since used it is same as 'python app/test.py', above command helped to remove app/
CMD python test.py

