FROM node:11
WORKDIR /dist
COPY package.json /dist
RUN npm install
COPY . /dist
CMD ["forever", "server.js"]
EXPOSE 4000