FROM node:18

WORKDIR /app

# Clean up any previous installations
RUN rm -rf node_modules package-lock.json

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]
