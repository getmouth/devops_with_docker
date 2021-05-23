FROM golang:1.16.4-alpine as build-stage

WORKDIR /usr/app

COPY . .
ENV PORT=8080
ENV CGO_ENABLED=0

RUN go build . && go test ./... && adduser -D appuser

USER appuser

FROM scratch

COPY --from=build-stage /usr/app/server /

CMD ["/server"]
