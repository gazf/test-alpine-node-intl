FROM alpine:edge
ADD index.js .
ADD package.json .
RUN apk --update add nodejs npm
RUN npm install
RUN node -v
RUN node .
