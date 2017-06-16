FROM fpco/stack-build
WORKDIR /root
RUN cabal update
RUN cabal install lambdabot
RUN cabal install goa
RUN cabal exec hoogle -- generate
COPY ./ghci.conf .ghci
ENTRYPOINT ["ghci"]
