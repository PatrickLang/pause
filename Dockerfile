FROM golang:1.11-alpine AS builder
RUN mkdir /src
WORKDIR /src
ADD main.go /src
RUN CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o pause 
