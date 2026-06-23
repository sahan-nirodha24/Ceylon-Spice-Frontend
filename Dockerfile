# Use the official, lightweight Nginx image from Docker Hub (Alpine Linux based)
FROM nginx:alpine

# Add a custom maintainer label (Optional)
LABEL maintainer="ceylon-spice-frontend"

# Remove the default Nginx index.html file
RUN rm -rf /usr/share/nginx/html/*

# Copy all project files (HTML, CSS, JS, Images) into the Nginx server directory
COPY . /usr/share/nginx/html

# Fix permissions to prevent 403 Forbidden errors
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
