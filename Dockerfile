FROM nginx:1.25.4-alpine
RUN apk upgrade --no-cache
COPY ./build /usr/share/nginx/html
USER nginx
EXPOSE 3000
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
