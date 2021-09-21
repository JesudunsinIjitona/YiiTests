echo 'deploy staging'
rsync -vrzhe "ssh -o StrictHostKeyChecking=no" --exclude vendor/ . centos@3.236.229.149:/var/www/html/YiiTests

ssh centos@3.236.229.149 <<EOF
	cd /var/www/html/YiiTests
    composer install
EOF