#Define SSH config file path
$ssh_config_file = '/etc/ssh/ssh_config'

#configure to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path    => $ssh_config_file,
  line    => '    IdentityFile ~/.ssh/school',
  ensure  => present,
}

#refuse to authenticate using a password
file_line { 'Turn off passwd auth':
  path    => $ssh_config_file,
  line    => '    PasswordAuthentication no',
  ensure  => present,
}
