FROM openjdk:8-jre-buster
RUN pip install git+https://github.com/Maluuba/nlg-eval.git@master
RUN nlg-eval --setup