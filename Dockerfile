FROM golang:latest

LABEL maintaner = mtalhakrc
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux
ENV IS_DEVELOPMENT = true

WORKDIR /usr/src/app

COPY . .

#RUN go mod download && go mod verify


RUN go build -v -o /usr/src/app/main .


CMD /usr/src/app/main

#CMD echo 'bismillah'

