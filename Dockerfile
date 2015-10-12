FROM haskell:7.10
MAINTAINER Arnau Siches <asiches@gmail.com>

RUN cabal update \
 && cabal install

COPY ghci.conf /root/.ghci
