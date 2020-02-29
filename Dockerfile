# Common arg values for ENVs accross staging container
ARG NAME_APP=hello
ARG GOOS=linux
ARG GOARCH=amd64
ARG GOARM=

#  BUILD STAGE
# =============
FROM dockercore/golang-cross AS builder

ARG NAME_APP
ARG GOOS
ARG GOARCH
ARG GOARM

COPY ./src/ $GOPATH/src
WORKDIR $GOPATH/src

# Set ENVs to build
ENV \
    GO111MODULE=on \
    NAME_APP=$NAME_APP \
    GOOS=$GOOS \
    GOARCH=$GOARCH \
    GOARM=$GOARM

# RUN go get . # In case your application has dependencies
RUN go build \
    -a \
    --ldflags "\
        -w -extldflags \"-static\"" \
    -o $GOPATH/bin/$NAME_APP \
    .

RUN mv $GOPATH/bin/$NAME_APP /

#  FINAL STAGE
# =============
FROM alpine

ARG NAME_APP
WORKDIR /root
USER root
RUN mkdir -p /root/bin
COPY --from=builder /$NAME_APP /$NAME_APP
