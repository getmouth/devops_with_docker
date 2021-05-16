FROM ubuntu:18.04

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .
ENV PORT=8080

RUN apt-get update -y && apt-get install -y gcc wget && \
    wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz && \
    tar -C /usr/local/ -xzf go1.16.4.linux-amd64.tar.gz && \
    export PATH="/usr/local/go/bin:$PATH"  && \
    go build . && go test ./... && useradd -m appuser && \
    apt-get purge -y --auto-remove curl gcc && \
     rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["./server"]
