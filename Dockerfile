FROM ubuntu:latest

MAINTAINER Hasher "quoo0002@algonquinlive.com"

RUN apt update && apt -y upgrade

RUN apt-get -y install python3-pip

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

EXPOSE 5000


ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]

