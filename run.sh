#!/bin/bash
set -x
set -e
[ -n "${CLEAN_CONFIG:-}" ] && rsync -a --delete /app/config-orig/ /app/config/
[ -f "/app/config/global.php" ] || rsync -a --delete /app/config-orig/ /app/config/
chown -R www-data:www-data /app/config
/etc/init.d/apache2 start
tail -F /var/log/apache2/* 
