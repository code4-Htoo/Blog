FROM wordpress:latest

# Copy local files to the container
COPY . /var/www/html

# Set environment variables for WordPress
ENV WORDPRESS_DB_HOST=${DB_HOST}
ENV WORDPRESS_DB_USER=${DB_USER}
ENV WORDPRESS_DB_PASSWORD=${DB_PASSWORD}
ENV WORDPRESS_DB_NAME=${DB_NAME}

# Expose port 80
EXPOSE 80
