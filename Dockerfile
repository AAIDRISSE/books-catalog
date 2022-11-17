FROM docker.io/ubuntu
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install tornado

COPY . /library/

WORKDIR /library

ENTRYPOINT ["python3", "-u", "src/main.py", "--config", "config/BooksCatalog.properties"]

EXPOSE 9990
