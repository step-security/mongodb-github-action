FROM alpine:3.23@sha256:5b10f432ef3da1b8d4c7eb6c487f2f5a8f096bc91145e68878dd4a5019afde11
RUN apk upgrade --no-cache zlib && apk add --no-cache curl docker-cli jq
COPY start-mongodb.sh /start-mongodb.sh
RUN chmod +x /start-mongodb.sh
ENTRYPOINT ["/start-mongodb.sh"]
