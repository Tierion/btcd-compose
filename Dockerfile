FROM golang:1.14.2

# Grab and install the latest version of btcd and it's dependencies.
RUN go get github.com/btcsuite/btcd/...

# wallet, p2p, and rpc
EXPOSE 8332 8333 8334

# testnet wallet, p2p, and rpc
EXPOSE 18332 18333 18334

RUN mkdir /root/.btcd && mkdir /root/.btcctl
RUN chmod -R 777 /root/.btcd
RUN chmod -R 777 /root/.btcctl

WORKDIR /root

ENTRYPOINT ["btcd"]
