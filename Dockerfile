FROM node:22-slim AS builder

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential

COPY . .

RUN npm install --production --no-fund

EXPOSE 1969

CMD ["npm", "start"]
