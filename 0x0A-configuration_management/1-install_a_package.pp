# Install flask using pip3

package {'python3':
ensure => 'installed'
}

exec {'sudo /bin/apt update':
before => Package['python3']
}

package {'pip3':
ensure  => 'installed',
require => Exec['sudo /bin/apt update']
}

package {'flask':
ensure   => '2.1.0'
provider => 'pip3'
require  => Package['pip3']
}
