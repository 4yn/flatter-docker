FROM debian:bullseye-slim

RUN \
    apt-get update && \
    apt-get upgrade && \
    apt-get install -y git build-essential cmake

RUN apt-get install -y \
    libgmp-dev libmpfr-dev fplll-tools \
    libfplll-dev libeigen3-dev \
    libblas-dev liblapack-dev
RUN git clone https://github.com/keeganryan/flatter.git
RUN mkdir -p /flatter/build && \
    cd /flatter/build && \
    cmake .. && \
    make && \
    make install && \
    ldconfig

ENTRYPOINT ["/usr/local/bin/flatter"]