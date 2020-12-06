#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_addr = 0.0.0.0
bind_port = 7000
bind_udp_port = 7001
kcp_bind_port = 7000
dashboard_port = 7500
token = 12345678
dashboard_user = admin
dashboard_pwd = admin
vhost_http_port = 10080
vhost_https_port = 10443
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
