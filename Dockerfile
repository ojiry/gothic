FROM golang

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/beego/bee

CMD ["bee"]
