FROM alpine:edge
ADD index.js .
ADD package.json .
RUN apk --update add nodejs-current npm
RUN npm install
RUN export NODE_ICU_DATA=$(cd $(dirname $0) && pwd)/node_modules/full-icu
RUN node -v
RUN node .
