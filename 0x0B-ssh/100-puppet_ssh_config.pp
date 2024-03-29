# Set up client SSH configuration file to connect to a server
# without typing a password.

include stdlib

file_line{'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
}

file_line{'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    IdendityFile ~/.ssh/school',
}
