FROM alpine:edge
ADD index.js .
ADD package.json .
RUN apk --update add nodejs-current npm
RUN npm install
RUN export NODE_ICU_DATA="/pipeline/source/node_modules/full-icu"
RUN node -v
RUN node .
