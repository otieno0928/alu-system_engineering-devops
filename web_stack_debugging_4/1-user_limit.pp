# Change OS configuration for holberton user to increase file descriptor limit

exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "s/4/4096/g" /etc/security/limits.conf',
  path    => ['/bin', '/usr/bin'],
}
