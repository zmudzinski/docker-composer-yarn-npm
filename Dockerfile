FROM php:8.1.5-alpine

RUN apk upgrade && apk add \
    curl \
    nodejs npm \
    yarn \
    openssh-client \
    git

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
