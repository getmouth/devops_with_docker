FROM docker

WORKDIR /usr/src/app

COPY . .

RUN apk add git && \
 git clone https://github.com/docker-hy/ml-kurkkumopo-frontend.git && \
 cd ml-kurkkumopo-frontend

CMD ./build.sh
