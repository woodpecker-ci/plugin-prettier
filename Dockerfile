FROM node:22-alpine

ENV NODE_ENV=production

WORKDIR /app

RUN apk add -U --no-cache yq jq

RUN npm install --global prettier@3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
