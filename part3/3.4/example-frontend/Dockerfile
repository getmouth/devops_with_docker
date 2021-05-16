FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .
RUN apt-get update -y && apt-get install -y curl ca-certificates && \
 curl -sL https://deb.nodesource.com/setup_14.x | bash  && \
 apt-get install -y nodejs && node -v && npm -v && \
 npm install -g serve && npm install && \
 npm run build && apt-get purge -y --auto-remove curl && \
 rm -rf /var/lib/apt/lists/* && \
 useradd -m appuser

USER appuser

CMD ["serve","-s", "-l","5000", "build"]
