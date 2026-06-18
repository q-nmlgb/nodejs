FROM node:alpine3.22

WORKDIR /tmp

COPY index.html index1.js package.json ./

EXPOSE 3000/tcp

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl gcompat iproute2 coreutils &&\
    apk add --no-cache bash &&\
    chmod +x index1.js &&\
    npm install

CMD ["node", "index1.js"]
