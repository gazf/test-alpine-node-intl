FROM alpine:edge
ADD index.js .
ADD package.json .
RUN apk --update add nodejs-current npm
RUN npm install
RUN NODE_ICU_DATA="/node_modules/full-icu"
ENV NODE_ICU_DATA /node_modules/full-icu
RUN pwd && ls && printenv
RUN node -v
RUN node .
