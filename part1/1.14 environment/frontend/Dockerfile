FROM node:14.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .
RUN node -v && npm -v
RUN npm install -g serve && npm install
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

CMD ["serve","-s", "-l","5000", "build"]