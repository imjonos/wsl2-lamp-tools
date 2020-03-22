#!/bin/bash
# This script is used for Install LAMP on Ubuntu.
# Created by Eugeny Nosenko https://coders.studio
# Feel free to modify it

sudo apt update
sudo apt upgrade

sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update

#sudo apt install -y php7.4
#php -v

sudo apt install -y apache2
sudo apt install -y mariadb-server

sudo apt install -y libapache2-mod-php7.4 php-mysql
sudo apt install -y php-curl php-json php-cgi php-gd php-zip php-mbstring php-xml php-xmlrpc php-soap
sudo apt install -y phpmyadmin

sudo a2enmod rewrite
sudo service apache2 restart

sudo apt install -y supervisor
sudo apt install -y git
sudo apt install -y redis-server
sudo apt install -y curl dirmngr apt-transport-https lsb-release ca-certificates vim

cd ~
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs
node --version
npm --version

sudo npm install -g laravel-echo-server

cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer
 corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo composer global require laravel/envoy
sudo chmod +x ~/.composer/vendor/bin/envoy
sudo ln -s ~/.composer/vendor/bin/envoy /usr/bin/envoy
envoy
