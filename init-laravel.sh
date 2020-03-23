#!/bin/bash
# This script is used for Init fresh Laravel App.
# Created by Eugeny Nosenko https://coders.studio
# Feel free to modify it

cp ./.env.example ./.env
php artisan key:generate

sudo chmod -R 775 ./bootstrap
sudo chmod -R 775 ./storage
sudo chgrp -R www-data ./bootstrap
sudo chgrp -R www-data ./storage

composer install
php artisan vendor:publish

php artisan migrate
php artisan db:seed

npm install
npm run dev
