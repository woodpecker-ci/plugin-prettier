FROM node:20-alpine

ENV NODE_ENV=production

WORKDIR /app

RUN npm install --global prettier@3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
