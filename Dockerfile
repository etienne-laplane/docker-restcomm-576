#Dockerfile for Restcomm 576 build and configured as a local server	
FROM java:7
MAINTAINER Etienne Laplane <etienne.laplane@dynamease.com>

RUN mkdir /Restcomm/
COPY ./Restcomm/* /Restcomm/

EXPOSE 8080
EXPOSE 5080

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y ipcalc
RUN apt-get install -y screen
RUN apt-get install -y nano
RUN apt-get install -y net-tools

CMD ["/Restcomm/bin/restcomm/start-restcomm.sh"] 
