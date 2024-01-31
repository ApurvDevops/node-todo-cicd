FROM node:14-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
RUN npm run test
CMD ["node", "app.js"]
