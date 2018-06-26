#!/bin/bash
echo "Enabling php5 from php7"
a2dismod php7.0
a2enmod php5.6
service apache2 restart
update-alternatives --set php /user/bin/php5.6
update-alternatives --set phar /usr/bin/phar5.6
update-alternatives --set phar.phar /usr/bin/phar.phar5.6

echo "Current php version is ";
php -v
