FROM golang

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/golang/dep/cmd/dep
RUN dep ensure
RUN go get -u github.com/beego/bee

CMD ["bee", "run"]
