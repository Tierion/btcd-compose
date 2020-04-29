FROM golang:1.14.2

RUN go get github.com/btcsuite/btcd/...
RUN mkdir /root/.btcd && mkdir /root/.btcctl
RUN chmod -R 777 /root/.btcd
RUN chmod -R 777 /root/.btcctl

WORKDIR /root

ENTRYPOINT ["btcd"]
