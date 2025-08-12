# Dockerfile - build a tiny nginx image for a static website
FROM nginx:stable-alpine
# Remove default content and copy your site
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
