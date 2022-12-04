FROM ubuntu:20.04
ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y build-essential cmake git libssl-dev wget unzip

WORKDIR /root

# RUN mkdir -p /Diardi && cd /Diardi && \
RUN wget https://github.com/scala-network/Scala/releases/download/v7.9.2/scala-v7.9.2-linux-x64.zip \
  && unzip scala-v7.9.2-linux-x64.zip
# RUN rm scala-v7.9.2-linux-x64.zip

WORKDIR /root

COPY start.sh start.sh
RUN chmod +x start.sh

EXPOSE 22821-22822

# CMD ["./scalad --testnet"]
# CMD ["./scala-wallet-cli --testnet"]

ENTRYPOINT ["bash"]
# ENTRYPOINT ["bash", "./scalad --testnet"]
# ENTRYPOINT ["bash" , "start.sh"]
