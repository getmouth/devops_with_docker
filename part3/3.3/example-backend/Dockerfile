FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .
ENV PORT=8080

RUN useradd -m appuser && go build .
RUN go test ./...

USER appuser

CMD ["./server"]
