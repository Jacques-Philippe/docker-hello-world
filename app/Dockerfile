# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
# Copy dependencies
COPY package.json yarn.lock ./
RUN yarn install --production
# Copy the actual application code
COPY . . 
CMD ["node", "src/index.js"]
EXPOSE 3000