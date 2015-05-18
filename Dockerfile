FROM ubuntu
MAINTAINER Krister Johansson <hello@nodejs.how>
WORKDIR /var/ziftrCoin
RUN apt-get update
RUN apt-get install -y wget
RUN wget "https://d19y4lldx7po3t.cloudfront.net/assets/downloads/0.9.3/ziftrcoin-0.9.3-linux64.tar.gz"
RUN tar -xvzf ziftrcoin-0.9.3-linux64.tar.gz
RUN rm ziftrcoin-0.9.3-linux64.tar.gz

ADD ./src/ziftrcoin.conf /root/.ziftrcoin/ziftrcoin.conf

EXPOSE 10332 11332
CMD ["64/./ziftrcoind"]