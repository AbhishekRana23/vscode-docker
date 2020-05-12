FROM ubuntu:latest

RUN apt-get update 
RUN apt-get git curl aria2 apt-utils software-properties-common sudo aria2 wget megatools unzip bash -y

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install nodejs -y

RUN apt-get -qq install -y aria2 python3 python3-pip locales python3-lxml curl pv jq ffmpeg

RUN npm install -g typescript

RUN wget https://github.com/cdr/code-server/releases/download/3.2.0/code-server-3.2.0-linux-x86_64.tar.gz
RUN tar -xzf code-server-3.2.0-linux-x86_64.tar.gz
WORKDIR code-server-3.2.0-linux-x86_64
CMD ["bash","code-server"]
