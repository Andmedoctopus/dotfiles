FROM ubuntu:20.04


RUN apt-get update &&\
    apt-get upgrade &&\
    apt-get -y install openssh-server sudo

RUN useradd -rm -s /bin/bash -g root -G sudo -u 1000 test

RUN  echo 'test:test' | chpasswd

RUN service ssh start


CMD ["/usr/sbin/sshd","-D"]
