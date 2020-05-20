FROM openjdk:8-jre-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    software-properties-common \
    apache2 \
    curl \
    git \
    vim \
    python3.6 \
    python3-pip
WORKDIR /root/
RUN git clone https://github.com/Maluuba/nlg-eval.git
WORKDIR /root/nlg-eval/
RUN pip install -r requirements.txt
RUN python setup.py