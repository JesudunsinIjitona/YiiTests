echo 'building'
/usr/local/bin/composer install
./vendor/bin/codecept run
