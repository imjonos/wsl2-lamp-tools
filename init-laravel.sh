#!/bin/bash
# This script is used for Init fresh Laravel App.
# Created by Eugeny Nosenko https://coders.studio
# Feel free to modify it

npm install
npm run dev
sudo chmod -R 775 ./bootstrap
sudo chmod -R 775 ./storage
sudo chgrp -R www-data ./bootstrap
sudo chgrp -R www-data ./storage
composer install
php artisan vendor:publish
php artisan key:generate
php artisan migrate
php artisan db:seed
