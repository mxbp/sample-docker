FROM nginx:1.24.0-alpine
COPY ./build /usr/share/nginx/html
USER nginx
EXPOSE 3000
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
