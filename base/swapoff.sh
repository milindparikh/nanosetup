set -e

sed -i 's/\/var\/swapfile.*//g' /etc/fstab
swapoff /var/swapfile
rm /var/swapfile


