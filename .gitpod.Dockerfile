FROM gitpod/workspace-full:latest

# Install PHP and required extensions
RUN sudo apt-get update && sudo apt-get install -y php php-cli php-mbstring php-xml php-curl php-zip unzip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install Laravel installer
RUN composer global require laravel/installer
