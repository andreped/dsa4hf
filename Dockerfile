FROM docker/compose:debian-1.29.2

# Switch to root user
#USER root

#RUN apt-get install -y sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

# Set up a new user named "user" with user ID 1000
#RUN useradd -m -u 1000 user

# Switch to the "user" user
#USER user

#RUN sudo chmod 666 /var/run/docker.sock

WORKDIR /code

COPY ./dsa /code/dsa

#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7860"]

#RUN docker run -itd -v /var/run/docker.sock:/var/run/docker.sock -v /code/dsa/:/var/tmp/ docker/compose:1.24.1 -f /var/tmp/docker-compose.yml up -d

RUN ls

#RUN sudo chmod 757 /var/run/docker.sock

# CMD ["/bin/bash"]
# CMD ["ls"]
#CMD docker run --privileged=true -it -v /var/run/docker.sock:/var/run/docker.sock -v /code/dsa/:/var/tmp/ docker/compose:1.24.1 -f /var/tmp/dsa/docker-compose.yml up -d
#CMD ["ls"]

#ENTRYPOINT [ "/bin/sh" ]

#RUN cd dsa/ && docker-compose pull

#RUN docker-compose pull

#CMD ["docker", "run", "-it", "-v", "/var/run/docker.sock:/var/run/docker.sock", ]

# "DSA_USER=$(id -u):$(id -g)", 
CMD ["docker-compose", "-f", "/code/dsa/docker-compose.yml", "up", "-d"]

#docker run -itd -v /var/run/docker.sock:/var/run/docker.sock -v /root/test/:/var/tmp/ docker/compose:1.24.1 -f /var/tmp/docker-compose.yaml up -d
