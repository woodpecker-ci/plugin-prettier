FROM node:18-alpine

ENV NODE_ENV=production

RUN npm install --frozen-lockfile

RUN "prettier --version"

CMD prettier --check .
