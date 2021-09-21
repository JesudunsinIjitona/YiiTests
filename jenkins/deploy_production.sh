echo 'Deploying'
rsync -vrzhe "ssh -o StrictHostKeyChecking=no" --exclude vendor/ --exclude jenkins/ . centos@3.235.60.121:/var/www/html/YiiTests

ssh centos@3.235.60.121 <<EOF
	cd /var/www/html/YiiTests
    composer install
EOF