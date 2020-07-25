FROM node:lts-alpine

ENV HOST=0.0.0.0
ENV PORT=3000

RUN mkdir /app
WORKDIR /app
COPY . .

RUN yarn
RUN yarn build

CMD [ "yarn", "start" ]

EXPOSE 3000
