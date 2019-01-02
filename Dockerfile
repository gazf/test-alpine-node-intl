FROM alpine:edge
ADD index.js .
RUN apk --update add nodejs npm
RUN node -v
RUN node .
