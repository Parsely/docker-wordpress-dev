#!/bin/bash

echo "Patching Apache config files to make PHP errors easier to see"
sed -i 's:ErrorLog ${APACHE_LOG_DIR}/error.log:ErrorLog /dev/stderr:' /etc/apache2/apache2.conf /etc/apache2/sites-enabled/000-default.conf
sed -i 's:autorestart=true:autorestart=true\nredirect_stderr=true:' /etc/supervisor/conf.d/supervisord-apache2.conf
sed -i 's:childlogdir=/var/log/supervisor:childlogdir=/var/log/supervisor\nloglevel=debug:' /etc/supervisor/supervisord.conf
echo "=> Done!"
