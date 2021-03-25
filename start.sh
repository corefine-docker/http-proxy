#!/bin/bash

if [ ! $MYSQL_PORT ];then
  MYSQL_PORT=3306
fi
if [ ! $MYSQL_USER ];then
  MYSQL_USER=root
fi
if [ ! $MYSQL_DB ];then
  MYSQL_DB=proxy
fi
if [ ! $REDIS_PORT ];then
  REDIS_PORT=6379
fi
sed -i "s/config_mysql_host/$MYSQL_HOST/" /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_mysql_port/$MYSQL_PORT/" /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_mysql_user/$MYSQL_USER/" /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_mysql_pass/$MYSQL_PASS/" /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_mysql_db/$MYSQL_DB/"     /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_redis_host/$REDIS_HOST/" /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_redis_port/$REDIS_PORT/" /usr/local/openresty/nginx/proxygateway/src/config.lua
sed -i "s/config_admin_pass/$ADMIN_PASS/" /usr/local/openresty/nginx/proxygateway/src/config.lua

/usr/local/openresty/nginx/sbin/nginx -g 'daemon off;'
