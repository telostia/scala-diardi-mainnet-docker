FROM ubuntu:20.04
ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y build-essential cmake git libssl-dev wget unzip

WORKDIR /root

ENV VERSION="v7.9.3"

# RUN mkdir -p /Diardi && cd /Diardi && \
RUN wget https://github.com/scala-network/Scala/releases/download/${VERSION}/scala-${VERSION}-linux-x64.zip \
  && unzip scala-${VERSION}-linux-x64.zip
# RUN rm scala-v7.9.2-linux-x64.zip

WORKDIR /root

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

EXPOSE 22821-22822

# CMD ["./scalad --testnet"]
# CMD ["./scala-wallet-cli --testnet"]

ENTRYPOINT ["bash"]
# ENTRYPOINT ["bash", "./scalad --testnet"]
# ENTRYPOINT ["bash" , "start.sh"]
