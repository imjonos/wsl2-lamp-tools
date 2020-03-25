#!/bin/bash
# This script is used for Install LAMP on Ubuntu.
# Created by Eugeny Nosenko https://coders.studio
# Feel free to modify it

#Add your hosts
hosts=( "wsl2", "test.com", "test2.com" )

export WINIP=$(cat /etc/resolv.conf | grep 'nameserver' | cut -f 2 -d ' ')
export WSLIP=$(ip addr show eth0 | grep 'inet ' | cut -f 6 -d ' ' | cut -f 1 -d '/')

for host in "${hosts[@]}"
do
    rm /tmp/hosts
    if grep $host /mnt/c/Windows/System32/drivers/etc/hosts
    then
        cp /mnt/c/Windows/System32/drivers/etc/hosts /tmp/hosts
        sed -i "s/.*$host/$WSLIP  $host/" /tmp/hosts
        cat /tmp/hosts > /mnt/c/Windows/System32/drivers/etc/hosts
    else
        echo "$WSLIP  $host\n" >> /mnt/c/Windows/System32/drivers/etc/hosts
    fi
done

rm /tmp/hosts
if grep "winhost" /mnt/c/Windows/System32/drivers/etc/hosts
then
    cp /mnt/c/Windows/System32/drivers/etc/hosts /tmp/hosts
    sed -i "s/.*winhost/$WINIP  winhost/" /tmp/hosts
    cat /tmp/hosts > /mnt/c/Windows/System32/drivers/etc/hosts
else
    echo "$WINIP  winhost\n" >> /mnt/c/Windows/System32/drivers/etc/hosts
fi

cat /mnt/c/Windows/System32/drivers/etc/hosts
sudo cp /mnt/c/Windows/System32/drivers/etc/hosts /etc/hosts
echo "DONE!\n"
