#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_port = 80
dashboard_port = 443
token = 12345678
dashboard_user = admin
dashboard_pwd = admin
vhost_http_port = 10080
vhost_https_port = 10443
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
