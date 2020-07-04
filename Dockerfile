FROM node:12-alpine
WORKDIR /app
ADD . /app
RUN yarn install
EXPOSE 3000
CMD yarn start