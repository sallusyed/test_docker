# set base image (host OS)
FROM python:3.8

RUN pip install --upgrade pip
# set the working directory in the container
RUN apt-get update

WORKDIR /code

# copy the dependencies file to the working directory
COPY requirements.txt .

#RUN pip install virtualenv
#RUN virtualenv myenv
#RUN virtualenv -p /usr/bin/python3 myenv

RUN pip install -r requirements.txt


# copy the content of the local src directory to the working directory
COPY src/ .

# command to run on container start
CMD [ "python3", "./program.py" ]
