FROM ubuntu

# Install necessary packages
RUN apt-get update && apt-get install -y \
  nginx

# Copy compiled CSS files from the local machine
COPY static/css /var/www/html/css

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]