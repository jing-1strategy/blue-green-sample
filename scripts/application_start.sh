#!/usr/bin/env bash

systemctl start nginx

CUR_STATE=$(systemctl is-active nginx)

if [[ $CUR_STATE == "active" ]]; then
    echo "Nginx service is active."
    exit 0
else
    echo "Nginx service is not active. State '$CUR_STATE'. Failing."
    exit 1
fi