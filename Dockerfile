FROM debian

RUN apt update
RUN apt install wget -y

RUN wget https://github.com/aldostools/webMAN-MOD/raw/master/_Projects_/ps3netsrv/bins/Linux/ps3netsrv_linuxX86_64
RUN chmod +x ps3netsrv_linuxX86_64

EXPOSE 38008

VOLUME /games

ENTRYPOINT ./ps3netsrv_linuxX86_64 /games
