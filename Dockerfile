# docker run --rm --gpus all --log-opt max-size=10m --log-opt max-file=1 docker.io/seppegadeyne/apoolminer:small

FROM nvidia/cuda:12.8.1-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y git vim nvidia-cuda-toolkit

WORKDIR /root/apoolminer

RUN git clone https://github.com/seppegadeyne/apoolminer ./

RUN chmod +x run.sh

CMD ["./run.sh"]