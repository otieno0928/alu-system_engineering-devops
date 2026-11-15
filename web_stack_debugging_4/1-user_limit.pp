# Increase the file descriptor limits for the holberton user to prevent 'Too many open files' errors

exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "/holberton/s/4/4096/g" /etc/security/limits.conf || echo "holberton hard nofile 4096\nholberton soft nofile 4096" >> /etc/security/limits.conf',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
