FROM golang:latest

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN go get github.com/derekparker/delve/cmd/dlv

RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/aws/aws-xray-sdk-go/...

RUN mkdir -p /go/src/quickstart
COPY go/src/quickstart /go/src/quickstart
WORKDIR /go/src/

#RUN go build -gcflags "-N -l" quickstart

EXPOSE 8080

CMD cd quickstart && bee run
#CMD ["cd", "quickstart", "&&", "bee", "dlv", "--listen=:2345", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "./quickstart"]
