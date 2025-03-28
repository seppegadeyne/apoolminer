FROM nvidia/cuda:12.6.0-base-ubuntu24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git tzdata && \
    ln -fs /usr/share/zoneinfo/Europe/Brussels /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

RUN git clone https://github.com/seppegadeyne/apoolminer ./

CMD ["./run.sh"]
