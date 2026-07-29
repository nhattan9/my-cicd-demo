FROM node:20-alpine AS runner
WORKDIR /app
COPY package*.json . 
RUN npm ci --production
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
