# Install flask using pip3

package {'pip3':
ensure => 'installed'
}

package {'flask':
ensure  => 'installed'
require => Package['pip3']
}
