FROM alpine:latest AS build
WORKDIR /app
COPY index.html /app/

FROM alpine:latest
WORKDIR /app
COPY --from=build /app /app
RUN adduser -S appuser && chown -R appuser /app
USER appuser
EXPOSE 80
CMD ["http.server", "-d", "/app", "80"]