FROM node:14.10.1-alpine

WORKDIR /usr/app

COPY . .

EXPOSE 3000

RUN yarn && adduser -D appuser

USER appuser

CMD ["yarn", "start"]
