FROM docker/compose

# Switch to root user
#USER root

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

ENTRYPOINT [ "/bin/sh" ]

#RUN docker-compose pull

#CMD ["docker", "run", "-it", "-v", "/var/run/docker.sock:/var/run/docker.sock", ]

#docker run -itd -v /var/run/docker.sock:/var/run/docker.sock -v /root/test/:/var/tmp/ docker/compose:1.24.1 -f /var/tmp/docker-compose.yaml up -d
