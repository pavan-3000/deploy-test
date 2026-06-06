FROM nginx:alpine AS build

COPY index.html /usr/share/nginx/html/index.html
cd
# NGINX runs as its own user, so no need to switch to a non-root user here
vbrgtyrfe
FROM nginx:alpine

COPY --from=build /usr/share/nginx/html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
