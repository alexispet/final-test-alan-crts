FROM node:21.6-alpine3.18 as build

WORKDIR /app
COPY package.json package-lock.json ./

RUN npm install --only=production
COPY . .

FROM node:21.6-alpine3.18 as express
LABEL org.opencontainers.image.source https://github.com/alexispet/final-test-alan-crts

WORKDIR /app

COPY --from=build /app/database ./database
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package.json .
COPY --from=build /app/app.js .

COPY docker/express/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

RUN apk add curl

ENTRYPOINT [ "docker-entrypoint" ]

CMD [ "npm", "run", "start" ]