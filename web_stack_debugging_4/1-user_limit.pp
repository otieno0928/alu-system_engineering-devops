# Increase hard and soft file descriptor limits for the holberton user

exec { 'change-os-configuration-for-holberton-user':
  command => 'echo "holberton soft nofile 4096" >> /etc/security/limits.conf && echo "holberton hard nofile 4096" >> /etc/security/limits.conf',
  path    => ['/bin', '/usr/bin'],
}
