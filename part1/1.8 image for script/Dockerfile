FROM ubuntu:18.04

WORKDIR /usr/src/app/

RUN apt update && apt install curl -y

COPY website.sh .

RUN chmod +x website.sh

CMD ./website.sh