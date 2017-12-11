FROM ubuntu:14.04
# FROM pataquets/unoconv

# Add multiverse to the sources list - may be needed for some packages
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise multiverse\n\
deb-src http://us.archive.ubuntu.com/ubuntu/ precise multiverse\n\
deb http://us.archive.ubuntu.com/ubuntu/ precise-updates multiverse\n\
deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates multiverse\n"\
>> /etc/apt/sources.list

RUN rm -vf /var/lib/apt/lists/*
RUN apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y unoconv
RUN apt-get install -y curl
RUN apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
