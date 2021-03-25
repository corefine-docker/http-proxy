FROM fine/centos
RUN wget https://openresty.org/package/centos/openresty.repo
RUN mv openresty.repo /etc/yum.repos.d/
RUN yum install -y openresty && \
    yum install -y openresty-resty
ADD proxygateway /usr/local/openresty/nginx/proxygateway
ADD start.sh /usr/local/openresty/nginx/start.sh
RUN mv /usr/local/openresty/nginx/conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf_bak && \
    ln -s /usr/local/openresty/nginx/proxygateway/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
CMD ["/usr/local/openresty/nginx/start.sh"]
