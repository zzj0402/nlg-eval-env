FROM python:3.6.9
RUN java -version
RUN pip install git+https://github.com/Maluuba/nlg-eval.git@master
RUN nlg-eval --setup