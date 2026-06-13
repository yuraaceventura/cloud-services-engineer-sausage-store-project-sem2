FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci
COPY . .

ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm install -g @angular/cli@15 && \
    ng build --configuration=production


    
FROM nginx:1.25-alpine
COPY --from=builder /app/dist/frontend /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]