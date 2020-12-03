FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
COPY package-lock.json .

RUN npm ci

EXPOSE 8000
CMD [ "npm", "start" ]
