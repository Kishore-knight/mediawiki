# Use the official PHP image with the latest Apache
FROM php:8.1-apache

# Install necessary PHP extensions and utilities
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    mariadb-client \
    curl \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli zip

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Download and install MediaWiki
ENV MEDIAWIKI_VERSION 1.41.1
RUN curl -o mediawiki.tar.gz -SL https://releases.wikimedia.org/mediawiki/1.41/mediawiki-$MEDIAWIKI_VERSION.tar.gz \
    && tar -xvzf mediawiki.tar.gz -C /var/www/html --strip-components=1 \
    && rm mediawiki.tar.gz



# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
