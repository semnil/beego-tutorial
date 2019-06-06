FROM golang:latest

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee

RUN mkdir -p /go/src/quickstart
COPY go/src/quickstart /go/src/quickstart
WORKDIR /go/src/

EXPOSE 8080

CMD cd quickstart && bee run
