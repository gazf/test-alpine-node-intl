FROM alpine:edge
ADD index.js .
ADD package.json .

RUN apk --update add nodejs-current npm
RUN npm install

ENV NODE_ICU_DATA /node_modules/full-icu
RUN node .
