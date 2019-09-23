set -e

if [ !  -f  /var/swapfile ]; then
	fallocate -l 8G /var/swapfile
	chmod 600 /var/swapfile
	mkswap /var/swapfile
	swapon /var/swapfile
	bash -c 'echo "/var/swapfile swap swap defaults 0 0" >> /etc/fstab'
else 
	echo "**ERROR: swap file already exists"
fi

