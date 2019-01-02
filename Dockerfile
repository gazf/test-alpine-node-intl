FROM alpine:edge
ADD index.js .
RUN apk --update add nodejs npm
RUN node -v
RUN npm install -g n
RUN n stable
RUN node .
