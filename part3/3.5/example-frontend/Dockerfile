FROM node:14.10.1-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .
RUN node -v && npm -v && \
 npm install -g serve && npm install && \
 npm run build && rm -rf node_modules && \
 adduser -D appuser

USER appuser

CMD ["serve","-s", "-l","5000", "build"]
