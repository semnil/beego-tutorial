FROM golang:latest

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN mkdir -p /go/src/app
COPY . /go/src/app
WORKDIR /go/src/app

RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee

CMD bee run
