# http-proxy

```
docker run -d \
  -p 180:80 \
  -p 18081:8081 \
  -e MYSQL_HOST=172.16.0.8 \
  -e MYSQL_PORT=3306 \
  -e MYSQL_USER=root \
  -e MYSQL_PASS=2019 \
  -e MYSQL_DB=proxy \
  -e REDIS_HOST=172.16.0.8 \
  -e REDIS_PORT=6379 \
  -e ADMIN_PASS=test fine/http-proxy


docker run -d \
  -p 180:80 \
  -p 18081:8081 \
  -e MYSQL_HOST=172.16.0.8 \
  -e MYSQL_PASS=2019 \
  -e REDIS_HOST=172.16.0.8 \
  -e ADMIN_PASS=test fine/http-proxy
```
