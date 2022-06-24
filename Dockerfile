FROM node:14-alpine

RUN addgroup -S nodejs && adduser -S nodejs -G nodejs

USER nodejs:nodejs

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install

COPY . .

RUN npx prisma generate

RUN npx prisma migrate dev

EXPOSE 8080

CMD ["node", "index.js"]
