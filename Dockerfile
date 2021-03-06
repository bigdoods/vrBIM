FROM node:7.5

RUN mkdir -p /app

EXPOSE 3000

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY . /app

RUN npm run build

CMD ["node", "app.js"]
