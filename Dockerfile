#Build do Frontend React
FROM node:20-alpine AS build-frontend
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

#Execução do Backend e Servidor de Produção
FROM node:20-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV PORT=3001

COPY package*.json ./
RUN npm ci --only=production

#Copia código do backend e build do frontend
COPY server ./server
COPY --from=build-frontend /app/dist ./dist
COPY schema.sql seed.sql ./

EXPOSE 3001

CMD ["node", "server/src/server.js"]
