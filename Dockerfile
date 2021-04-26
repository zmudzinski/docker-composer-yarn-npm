FROM php:8-alpine

# Install CURL
RUN apk upgrade && apk add \
    curl \
    nodejs npm \
    yarn \
    openssh-client \
    git \
    libpng-dev \
    libxml2-dev

# Install GD & Exif
RUN docker-php-ext-install gd
RUN docker-php-ext-install exif
RUN docker-php-ext-install soap

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
