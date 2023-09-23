FROM python:latest

# set the working directory
WORKDIR /app

# install dependencies
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy all script to the folder
COPY . /app

# start the server and bind it to 0.0.0.0:80 (so that it is also accessible from outside the docker container)
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]