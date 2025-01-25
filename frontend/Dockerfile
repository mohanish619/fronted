# Build Stage
FROM node:18 AS build
WORKDIR /app/frontend

# Copy the React app's code to the container
COPY . /app/frontend

# Install dependencies and build the React app
RUN npm install
RUN npm run build

# Production Stage
FROM nginx:alpine

# Copy the build folder into the Nginx server
COPY --from=build /app/frontend/build /usr/share/nginx/html

# Expose port 80 to make the app accessible
EXPOSE 80

# Copy custom Nginx configuration if needed (Ensure nginx.conf exists in your project)
COPY nginx.conf /etc/nginx/nginx.conf

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
