FROM ubuntu:xenial
RUN rm -f /etc/resolv.conf && echo '8.8.8.8' > /etc/resolv.conf
RUN apt-get update
RUN apt-get install -y git vim curl
RUN curl -fs https://raw.githubusercontent.com/mafintosh/node-install/master/install | sh
RUN node-install 8.9.1
RUN npm install -g dat
