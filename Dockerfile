FROM node:14-alpine

RUN addgroup -S nodejs && adduser -S nodejs -G nodejs sudo

USER nodejs:nodejs

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install

RUN npx prisma generate

COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
