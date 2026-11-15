# Increase hard and soft file descriptor limits for the holberton user

exec { 'change-os-configuration-for-holberton-user':
  command => 'grep -q "holberton" /etc/security/limits.conf && sed -i "/holberton/s/4/4096/g" /etc/security/limits.conf || echo -e "holberton soft nofile 4096\nholberton hard nofile 4096" >> /etc/security/limits.conf',
  path    => ['/bin', '/usr/bin'],
}
