FROM openjdk:8-jre-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    git \
    vim \
    python3.6 \
    python3-pip
WORKDIR /root/
RUN pip3 install git+https://github.com/Maluuba/nlg-eval.git@master
RUN nlg-eval --setup