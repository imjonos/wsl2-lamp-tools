# LAMP Tools (Laravel)
Sripts for install and manage LAMP on Ubuntu WSL2. 

# install-lamp.sh
Apache, PHP7.4, MariaDB, Redis, laravel-echo-server, nodejs, npm, envoy, composer, Virtualhost Manage Script (https://github.com/RoverWire/virtualhost)

#How to use

$ cd ~

$ wget -O install-lamp https://raw.githubusercontent.com/imjonos/lamp-tools/master/install-lamp.sh

$ chmod +x install-lamp

$ install-lamp

# init-laravel.sh
This script is used for Init fresh Laravel App.

#How to use

$ cd ~

$ wget -O /usr/local/bin/init-laravel https://raw.githubusercontent.com/imjonos/lamp-tools/master/init-laravel.sh

$ chmod +x /usr/local/bin/init-laravel

$ init-laravel

# wsl2-hosts.sh
This script is used for config hosts ( WSL2 and Windows).
WSL2 do not have static IP. This script help you use Virtual Host with tools like xDebug.

#How to use

$ cd ~

$ wget -O /usr/local/bin/wsl2-hosts https://raw.githubusercontent.com/imjonos/lamp-tools/master/wsl2-hosts.sh

$ chmod +x /usr/local/bin/wsl2-hosts

$ wsl2-hosts

# start-lamp.sh
This script is used for start LAMP after runing WSL2.

#How to use

$ cd ~

$ wget -O /usr/local/bin/tart-lamp https://raw.githubusercontent.com/imjonos/lamp-tools/master/start-lamp.sh

$ chmod +x /usr/local/bin/start-lamp

$ start-lamp.sh
