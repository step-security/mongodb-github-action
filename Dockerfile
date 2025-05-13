FROM docker:stable@sha256:fd4d028713fd05a1fb896412805daed82c4a0cc84331d8dad00cb596d7ce3e3a
RUN apk add --no-cache curl
COPY start-mongodb.sh /start-mongodb.sh
RUN chmod +x /start-mongodb.sh
ENTRYPOINT ["/start-mongodb.sh"]
