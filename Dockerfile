FROM node:10-alpine
WORKDIR /usr/src/app
ENV PATH=/app/node_modules/.bin:$PATH
COPY *.json /app/
RUN npm install
COPY . .
EXPOSE 3001
CMD ["node", "server.js"]
