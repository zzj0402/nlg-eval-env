FROM openjdk:8-jre-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3.6 && pip install git+https://github.com/Maluuba/nlg-eval.git@master && nlg-eval --setup