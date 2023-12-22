#!/usr/bin/pup
# INstall an specific version of flask "2.1.0"

packege {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
