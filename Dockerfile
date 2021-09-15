FROM php:8-alpine

# Install CURL
RUN apk upgrade && apk add \
    curl \
    nodejs npm \
    yarn \
    openssh-client \
    git \
    libpng-dev \
    libxml2-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

# Install GD & Exif
RUN docker-php-ext-install gd
RUN docker-php-ext-install exif
RUN docker-php-ext-install soap

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
