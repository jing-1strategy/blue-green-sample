#!/usr/bin/env bash

temp=`cat /var/www/html/new/index.html`

sed -i -e "s|<body>.*</body>|$temp|g" /var/www/html/index.html

# systemctl start nginx

# CUR_STATE=$(systemctl is-active nginx)

# if [[ $CUR_STATE == "active" ]]; then
#     echo "Nginx service is active."
#     exit 0
# else
#     echo "Nginx service is not active. State '$CUR_STATE'. Failing."
#     exit 1
# fi