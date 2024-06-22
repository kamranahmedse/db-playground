FROM alpine:latest

RUN apk add --no-cache curl jq

COPY . /importer
WORKDIR /importer

CMD ["sh", "importer.sh"]
