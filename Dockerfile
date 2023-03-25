FROM node:16

WORKDIR /app

# RUN yarn global add contentful-cli

COPY package.json .
RUN yarn install

COPY . .

USER node
EXPOSE 3000

CMD ["yarn", "run", "start:dev"]
