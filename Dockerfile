FROM node:10

WORKDIR /app

COPY ./package.json /app/package.json

RUN yarn
RUN yarn build

COPY . .

ENV NODE_ENV production
ENV WEB_MEMORY 1024

ENTRYPOINT ["npm", "start"]
