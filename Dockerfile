FROM alpine:3.22@sha256:8a1f59ffb675680d47db6337b49d22281a139e9d709335b492be023728e11715
RUN apk add --no-cache curl docker-cli
COPY start-mongodb.sh /start-mongodb.sh
RUN chmod +x /start-mongodb.sh
ENTRYPOINT ["/start-mongodb.sh"]
