FROM node:9

WORKDIR /app

RUN yarn add -g contentful-cli

COPY package.json .
RUN yarn install

COPY . .

USER node
EXPOSE 3000

CMD ["yarn", "run", "start:dev"]
