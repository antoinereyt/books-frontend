FROM node:12-alpine
WORKDIR /app

# Only copy the deps things and install them to leverage the Docker cache.
ADD package.json /app
ADD yarn.lock /app
RUN yarn install

ADD . /app

EXPOSE 3000
CMD yarn start
