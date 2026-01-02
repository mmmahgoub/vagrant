# Create a user and add to sudo group

user { 'sysadmin':
  ensure     => present,
  shell      => '/bin/bash',
  groups     => ['sudo'],
  managehome => true,
}

# Install NTP package

package { 'ntp':
  ensure => installed,
}

# Configure NTP server

file { '/etc/ntp.conf':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @("NTP_CONF")

# NTP configuration

driftfile /var/lib/ntp/ntp.drift

server 0.asia.pool.ntp.org iburst

restrict -4 default kod notrap nomodify nopeer noquery
restrict -6 default kod notrap nomodify nopeer noquery
restrict 127.0.0.1
restrict ::1
| NTP_CONF
  ,
  notify  => Service['ntp'],
}

# Enable and start NTP service

service { 'ntp':
  ensure  => running,
  enable => true,
  require => Package['ntp'],
}
