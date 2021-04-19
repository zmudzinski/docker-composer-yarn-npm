FROM php:8-alpine

# Install CURL
RUN apk upgrade && apk add \
    curl \
    nodejs npm \
    yarn \
    openssh-client \
    git \
    libpng-dev

# Install GD
RUN docker-php-ext-install gd

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
