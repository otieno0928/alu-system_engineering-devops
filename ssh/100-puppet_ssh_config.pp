# Configure SSH client to use private key ~/.ssh/school and refuse password authentication

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?[[:space:]]*PasswordAuthentication',
  ensure => present,
}

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?[[:space:]]*IdentityFile',
  ensure => present,
}
