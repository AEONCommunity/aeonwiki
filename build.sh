python3 -m mkdocs build
rm -r /var/www/aeon.wiki/html/*
cp -r site/* /var/www/aeon.wiki/html/
sudo service nginx restart
date

#/etc/nginx/sites-enabled/default
#/var/www/
