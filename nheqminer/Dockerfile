FROM first087/bitcoin-nicehash-miner:base
LABEL maintainer="cglvodoi97@gmail.com"

RUN git clone -b Linux https://github.com/MN-repo/docker-bitcoin-nicehash-miner.git --depth=1

RUN cd nheqminer/cpu_xenoncat/Linux/asm/ \
    && sh assemble.sh \
    && cd ../../../Linux_cmake/nheqminer_cpu \
    && cmake . \
    && make -j $(nproc)
