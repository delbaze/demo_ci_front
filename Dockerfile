FROM node:lts

RUN mkdir app

WORKDIR /app

COPY public public
COPY package.json ./
COPY setup.js ./

COPY tsconfig.json ./

RUN npm install

COPY src src


CMD npm start