FROM node:18-slim

WORKDIR /usr/src/app

COPY package.json pnpm-lock.yaml ./

RUN npm install -g pnpm@latest

COPY . .

RUN pnpm install

RUN pnpm run build

EXPOSE 3000

CMD [ "pnpm", "run", "start" ]
