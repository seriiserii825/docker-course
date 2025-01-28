FROM node:21-alpine

RUN npm install -g nodemon

WORKDIR /app

COPY packages.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
