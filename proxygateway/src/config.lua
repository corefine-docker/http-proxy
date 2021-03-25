local config = {};
config['mysql_host'] = "config_mysql_host"
config['mysql_port'] = "config_mysql_port"
config['mysql_user'] = "config_mysql_user"
config['mysql_pass'] = "config_mysql_pass"
config['mysql_db'] =   "config_mysql_db"

-- 如果开启限流需要正确配置redis
config["redis_host"] = "config_redis_host"
config["redis_port"] = "config_redis_port"
config["redis_pass"] = "config_redis_pass"
config["redis_db"] = "config_redis_db"

config['admin_name'] = "admin"
config['admin_pass'] = "config_admin_pass"

-- 需要通过接口远程管理时打开下面的配置
-- config['api_key'] = "your apikey"

return config;
