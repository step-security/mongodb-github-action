FROM alpine:3.24@sha256:8ddefa941e689fc29abcdeb8dae3b3c6d139cc08ce9a52633931160701770685
RUN apk upgrade --no-cache zlib && apk add --no-cache curl docker-cli jq
COPY start-mongodb.sh /start-mongodb.sh
RUN chmod +x /start-mongodb.sh
ENTRYPOINT ["/start-mongodb.sh"]
