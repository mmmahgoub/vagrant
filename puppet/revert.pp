# Remove the user and home directory
user { 'sysadmin':
  ensure     => absent,
  managehome => true,
}

# Stop and disable ntp
service { 'ntp':
  ensure => stopped,
  enable => false,
}

# Remove NTP package
package { 'ntp':
  ensure => absent,
}

# Remove ntp configuration file
file { '/etc/ntp.conf':
  ensure => absent,
}
