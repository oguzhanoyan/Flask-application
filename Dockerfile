FROM ubuntu:latest
MAINTAINER Oguzhan Oyan <oguzhanoyan@icloud.com>

RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

ENTRYPOINT [ "python3" ] 
CMD [ "hello.py" ] 
