FROM nginx:alpine AS builder

COPY index.html /usr/share/nginx/html

FROM nginx:alpine

COPY --from=builder /usr/share/nginx/html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]