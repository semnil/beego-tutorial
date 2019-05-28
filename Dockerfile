FROM golang:latest

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN mkdir -p /go/src/quickstart
COPY . /go/src/quickstart
WORKDIR /go/src/quickstart

RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee

CMD ./quickstart bee run
