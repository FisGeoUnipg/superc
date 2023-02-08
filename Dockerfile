# syntax=docker/dockerfile:1
FROM nginx
COPY static-html-directory /usr/share/nginx/html
