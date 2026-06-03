FROM nginx:alpine AS builder

COPY index.html /usr/share/nginx/html/index.html

# Nginx will serve the content on port 80
EXPOSE 80

# The default command for Nginx is already set to start the server, so no CMD necessary.