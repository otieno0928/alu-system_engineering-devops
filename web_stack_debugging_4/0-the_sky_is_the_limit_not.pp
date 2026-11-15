# Increase the ULIMIT file descriptor limit for Nginx to handle high concurrency

exec { 'fix--for-nginx':
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/g" /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
