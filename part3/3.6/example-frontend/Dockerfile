FROM node:14.10.1-alpine as build-stage

WORKDIR /usr/app

COPY . .

RUN npm install && npm run build && \
 adduser -D appuser

USER appuser


FROM nginx:1.19-alpine

COPY --from=build-stage /usr/app/build/ /usr/share/nginx/html

