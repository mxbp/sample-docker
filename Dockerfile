FROM alpine:latest
ARG VERSION
RUN echo "${VERSION}" > .version
CMD [ "cat", ".version" ]
