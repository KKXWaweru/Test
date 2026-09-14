FROM node:26-alpine AS build
WORKDIR /app

COPY package*.json ./
RUN npm i

COPY . .

RUN npm run build

# --- Serving the application with Nginx ---
FROM nginx:stable-alpine

# Copy the static build files from Build to Nginx's public folder
# Note: Change "dist" to "build" if you are using Create React App instead of Vite
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 for traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]