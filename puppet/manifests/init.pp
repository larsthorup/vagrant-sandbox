# include postgresql::server

class {'postgresql::globals':
  version => '9.3',
  manage_package_repo => true,
  encoding => 'UTF8',
  locale  => 'it_IT.utf8',
}

class { 'postgresql::server':
  ensure => 'present',
  listen_addresses => '*',
  manage_firewall => true,
}