FROM ubuntu:14.04

WORKDIR /opt

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python && \
    apt-get install -y python3-pip && \
    apt-get install -y wget \
    curl \
    unzip 
    
RUN git clone https://github.com/shalabhsuman/vcftools.git
RUN cd vcftools
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install