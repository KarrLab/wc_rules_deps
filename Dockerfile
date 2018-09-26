FROM ubuntu:latest
RUN apt update
RUN apt install wget git python3.6 python3-pip -y --no-install-recommends \
 && pip3 install -U setuptools pip \
 && wget https://raw.githubusercontent.com/KarrLab/wc_rules/master/requirements.txt \
 && pip install -r requirements.txt --process-dependency-links