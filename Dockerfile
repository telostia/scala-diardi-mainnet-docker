FROM ubuntu:20.04
ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y build-essential cmake git libssl-dev wget unzip

WORKDIR /root

ENV VERSION="v8.0.2"

# RUN mkdir -p /Diardi && cd /Diardi && \
RUN wget https://github.com/scala-network/Scala/releases/download/${VERSION}/scala-${VERSION}-x86_64-unknown-linux-gnu.zip \
  && unzip scala-${VERSION}-x86_64-unknown-linux-gnu.zip
# RUN rm scala-v7.9.2-linux-x64.zip

WORKDIR /root

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

EXPOSE 22821-22822

# CMD ["./scalad"]
# CMD ["./scala-wallet-cli"]

ENTRYPOINT ["bash"]
# ENTRYPOINT ["bash", "./scalad"]
# ENTRYPOINT ["bash" , "start.sh"]
