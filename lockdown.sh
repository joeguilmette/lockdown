#!/bin/bash  
  
echo "Setting 755 for all folders in /var/www"  
sudo find /var/www/*/htdocs/ -type d -exec chmod 0775 {} \; # 755 all folders  
echo "Setting 644 for all files in /var/www"  
sudo find /var/www/*/htdocs/ -type f -exec chmod 0675 {} \; # 644 all files.
echo "Setting ownership for /var/www to www-data"  
sudo chown -R www-data:www-data /var/www/
echo "Change group for /var/www/*/htdocs to wordmove"  
sudo chgrp -R wordmove /var/www/*/htdocs/