# dockerTestingEnvironment

This repository serves as my test environment for experimenting with Docker and Django. The primary goal of this project is to create a development environment using Docker containers that can be easily shared with others, eliminating the need for them to download dependencies individually. The setup allows for automatic updates of Docker containers whenever changes are made to the code.

## Getting Started

To get started with this project, follow the steps below:

### Prerequisites

Make sure you have Docker and Docker Compose installed on your system.

### Running the Environment

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/yourusername/dockerTestingEnvironment.git

2. Navigate to the project directory:

   ```shell
   cd dockerTestingEnvironment

3. Start the environment

   ```shell
   docker-compose up

4. The applications should now be running and accessible under http://localhost:8080/. If you make changes to the code it should be automatically restartign the server in the docker container and the change should be visible directly.

### Alternative: Building the Environment from scratch

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/yourusername/dockerTestingEnvironment.git
   
2. Navigate to the project directory:

   ```shell
   cd dockerTestingEnvironment

3. Create a requirements.txt for specifiyng the dependencies
   ```shell
   pip freeze > requirements.txt

4. Start the docker container from the image
   ```shell
   docker run -d -p 8080:80 channel-api

5. (optional) To access a shell in the running container for debugging or maintenance, use:
   ```shell
   docker exec -it <container_id> bash

## References
For more information on Docker and Django, you can refer to the following resources:
- https://www.youtube.com/watch?v=zkMRWDQV4Tg
- https://www.youtube.com/watch?v=i5JykvxUk_A

Feel free to try it out. Happy coding!