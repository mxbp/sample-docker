FROM alpine:latest

ARG VERSION

RUN apk update && \
    apk upgrade && \
    echo "${VERSION}" > .version

CMD [ "cat", ".version" ]
