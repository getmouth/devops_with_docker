FROM golang:1.16.4-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .
ENV PORT=8080
ENV CGO_ENABLED=0

RUN go build . && go test ./... && adduser -D appuser

USER appuser

CMD ["./server"]
