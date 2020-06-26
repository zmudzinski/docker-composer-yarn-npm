FROM php:7-alpine

# Install CURL
RUN apk upgrade && apk add \
    curl \
    nodejs npm \
    yarn \
    openssh-client
 
# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

