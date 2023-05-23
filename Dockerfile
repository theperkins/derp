# Dockerfile

# ==== CONFIGURE =====
# Use a Node 18 base image
FROM --platform=linux/amd64 node:18.16.0
# Set the working directory to /app inside the container
WORKDIR /app
# Copy app files
COPY package.json .
# ==== BUILD =====
# Install dependencies
RUN npm install
#copy all files
COPY . .

RUN npm run build
# Start the app

CMD ["npm", "start"]

# FROM nginx:1.21

# RUN rm /etc/nginx/conf.d/default.conf
# COPY config/nginx.conf /etc/nginx/conf.d/

EXPOSE 8000
# EXPOSE 8081
# CMD ["nginx", "-g", "daemon off;"]