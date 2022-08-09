FROM node

WORKDIR /usr/src/

COPY . .

EXPOSE 4000

RUN npm i && npm build && npx prisma generate

CMD [ "npm", "start" ]
