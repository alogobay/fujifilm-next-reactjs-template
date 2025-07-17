FROM node:20-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./package.json /usr/src/app/
RUN npm install yarn
COPY ./ /usr/src/app
RUN yarn && yarn build
ENV NODE_ENV=production
ENV PORT=3000
EXPOSE 3000
CMD ["yarn","run","start"]
