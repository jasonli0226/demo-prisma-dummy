# prisma-demo

&nbsp;

## Setup

```bash
yarn add prisma
yarn add @prisma/client

yarn prisma init
yarn prisma migrate dev --name init

```

&nbsp;

## Docker Command

### Build and start

```bash
docker build --tag demo/jason/prisma-demo .
docker run -d -p 8080:8080 -e "DATABASE_URL=file:./dev.db" \
    --name prisma-demo demo/jason/prisma-demo

```

&nbsp;

### Remove

```bash
docker rm -f prisma-demo
docker image rm demo/jason/prisma-demo

```
