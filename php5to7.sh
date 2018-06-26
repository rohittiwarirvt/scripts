#!/bin/bash
echo "Enabling php7 from php5"
a2dismod php5.6
a2enmod php7.0
service apache2 start
update-alternatives --set php /user/bin/php7.0
update-alternatives --set phar /usr/bin/phar7.0
update-alternatives --set phar.phar /usr/bin/phar.phar7.0

echo "Current php version is ";
php -v
