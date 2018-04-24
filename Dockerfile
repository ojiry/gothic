FROM golang

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/golang/dep/cmd/dep
RUN dep init
RUN dep ensure

CMD ["bee"]
