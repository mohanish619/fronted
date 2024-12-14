FROM node:18 AS build
WORKDIR /app/frontend
COPY . /app/frontend
RUN npm install
RUN npm run build

FROM nginx:alpine
# Copy from dist instead of build
COPY --from=build /app/frontend/dist /usr/share/nginx/html
EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
