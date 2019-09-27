FROM gcc:latest as build

WORKDIR /build_hisi

# ADD ./src /app/src

VOLUME hisilicon_deps

RUN apt-get update && \
    apt-get install -y \
      git cmake && rm -rf /var/lib/apt/lists/* \
    && \
    git clone https://github.com/OpenIPC/pj_helper.git && \
    cd pj_helper/ && git submodule init && git submodule update && ./compile.sh