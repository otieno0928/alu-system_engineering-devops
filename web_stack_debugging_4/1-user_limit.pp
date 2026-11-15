# Increase the file descriptor limit for the holberton user to prevent too many open files errors

exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "s/nofile 4/nofile 4096/g" /etc/security/limits.conf || true',
  path    => ['/bin', '/usr/bin'],
}
