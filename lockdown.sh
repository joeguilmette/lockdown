#!/bin/bash  
  
echo "Setting 755 for all folders in /var/www"  
sudo find /var/www/ -type d -exec chmod 755 {} \; # 755 all folders  
echo "Setting 644 for all files in /var/www"  
sudo find /var/www/ -type f -exec chmod 644 {} \; # 644 all files.  
echo "Setting ownership for /var/www to www-data"  
sudo chown -R www-data:www-data /var/www/  
echo "Setting proper permissions for /var/www/.ssh"
sudo chmod 700 /var/www/.ssh/
sudo chmod 600 /var/www/.ssh/authorized_keys
sudo chmod 600 /var/www/.ssh/id_rsa
sudo chmod 644 /var/www/.ssh/id_rsa.pub
sudo chown -R www-data:www-data /var/www/.ssh

echo "Current www-data shell settings:"  
cat /etc/passwd | grep www-data  
echo "Setting www-data to /sbin/nologin"  
sudo usermod -s /usr/sbin/nologin www-data  
cat /etc/passwd | grep www-data 
