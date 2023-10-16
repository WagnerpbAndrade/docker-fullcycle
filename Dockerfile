FROM golang:1.21 

COPY . /go/src/app

WORKDIR /go/src/app

RUN go get ./

RUN go build -o app

EXPOSE 8080

CMD [ "./app" ]


