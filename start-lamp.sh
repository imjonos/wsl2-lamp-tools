#!/bin/bash
# This script is used for Install LAMP on Ubuntu.
# Created by Eugeny Nosenko https://coders.studio
# Feel free to modify it

sudo wsl2-hosts
sudo service apache2 start
sudo service mysql start
sudo service redis-server start
sudo service ssh start
