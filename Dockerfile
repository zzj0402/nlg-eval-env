FROM openjdk:8-jre-buster
ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y \
    software-properties-common \
    curl \
    git-all \
    vim \
    python3.6 \
    python3-pip
WORKDIR /root/
RUN pip3 install git+https://github.com/Maluuba/nlg-eval.git@master
RUN nlg-eval --setup