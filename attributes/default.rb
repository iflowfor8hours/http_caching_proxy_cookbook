default.http_caching_proxy.cache_path = '/var/cache/nginx/'
default.http_caching_proxy.dns_resolver = '8.8.8.8'
default.http_caching_proxy.cache_size = '512m'
default.http_caching_proxy.remove_inactive_data_after = '2w'
default.http_caching_proxy.temp_path = '/var/cache/nginx/temp'
default.http_caching_proxy.port = '8000'
default.http_caching_proxy.success_time = '1w'
default.http_caching_proxy.fail_time = '1w'
default.http_caching_proxy.allowed_subnets = %w[127.0.0.1/32 192.168.0.0/16 172.16.0.0/12 10.0.0.0/8]
default.http_caching_proxy.denied_subnets = %w[all]
