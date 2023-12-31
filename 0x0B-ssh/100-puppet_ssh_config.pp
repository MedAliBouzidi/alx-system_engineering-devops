# Set up client SSH configuration file to connect to a server
# without typing a password.

file_line{'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line{'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    IdendityFile ~/.ssh/school',
  replace => true,
}
