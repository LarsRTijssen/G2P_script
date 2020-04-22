FROM ubuntu:16.04

RUN apt-get update 
RUN apt-get install -y locales locales-all
RUN apt-get install -y make
RUN apt install -y gcc
RUN apt-get install -y python3-pip python3-dev
RUN apt-get install -y valgrind
RUN pip3 install langid


ADD g2p-eand-de-DE-0.119.0-20190409.tar.bz2 /home

WORKDIR /home/g2p-eand-de-DE-0.119.0

RUN make -f Makefile



#ENV LC_ALL en_US.UTF-8
#ENV LANG en-US.UTF-8
#ENV LANGUAGE en_US.UTF-8



#ENTRYPOINT ["python3", "g2p.py"]