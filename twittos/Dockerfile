FROM node:lts-alpine as build
RUN npm install -g http-server
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.19.0-alpine as prod-stage
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g", "daemon off;" ]

# docker build -t twittos .
# docker ps /   docker ps -a  / docker images
# docker run -p 8000:80 -it --name twittos twittos