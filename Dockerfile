FROM node:14-alpine as build-stage
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install && yarn global add @quasar/cli
ARG mode
COPY build-stage.sh .
RUN chmod u+x build-stage.sh && build-stage.sh $mode

FROM nginx:alpine as prod-stage
WORKDIR /usr/share/www
COPY --from=build-stage /app/dist/${mode} ./
ARG port
RUN cat quasar.conf.js | grep -oP 'port:\s(\d*)' | cut -d " " -f 2 
RUN ${port=cat quasar.conf.js | grep -oP 'port:\s(\d*)' | cut -d " " -f 2 }
EXPOSE ${port}
CMD ["node", "index.js"]