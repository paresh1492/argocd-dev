# Use the official NGINX image as the base image
FROM nginx:latest

# Remove the default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static web application files into the NGINX web root directory
COPY . /usr/share/nginx/html/

# Expose the default NGINX port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
