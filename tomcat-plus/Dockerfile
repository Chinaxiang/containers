# build from tomcat, update debian source, install python
FROM tomcat
MAINTAINER huangyanxiang
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
RUN echo "deb http://mirrors.163.com/debian/ stable main" > /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/debian/ stable main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python
RUN apt-get clean