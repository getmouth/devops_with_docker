FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .
RUN apt-get update -y && apt-get install -y curl && \
 curl -sL https://deb.nodesource.com/setup_14.x | bash  && \
 apt-get install -y nodejs && node -v && npm -v

RUN npm install -g serve && npm install
RUN useradd -m appuser && npm run build

USER appuser

CMD ["serve","-s", "-l","5000", "build"]
