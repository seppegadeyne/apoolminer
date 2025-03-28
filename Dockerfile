# docker run --rm --gpus all --log-opt max-size=10m --log-opt max-file=1 docker.io/seppegadeyne/apoolminer:latest

FROM nvidia/cuda:12.6.3-runtime-ubuntu24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y git curl vim cuda-drivers ca-certificates libcurl4 libssl3 && apt clean

WORKDIR /apoolminer    

RUN git clone https://github.com/seppegadeyne/apoolminer ./

RUN chmod +x run.sh

CMD ["./run.sh"]
