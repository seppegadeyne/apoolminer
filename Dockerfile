# docker run --rm --gpus all --log-opt max-size=10m --log-opt max-file=1 docker.io/seppegadeyne/apoolminer:latest

FROM nvidia/cuda:12.8.1-runtime-ubuntu24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y git curl vim && apt clean

WORKDIR /apoolminer    

RUN git clone https://github.com/seppegadeyne/apoolminer ./

RUN chmod +x run.sh install.sh

CMD ["bash", "-c", "./install.sh && ./run.sh"]
