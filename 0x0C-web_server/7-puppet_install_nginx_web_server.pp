package {'nginx':
ensure   => 'installed',
}

file {'/var/www/html':
mode => '0777'
}

file {'/var/www/html/index.html':
ensure  => 'present',
content => 'Hello World!',
owner   => ubuntu,
group   => ubuntu,
}

exec {'append directive':
require => Package['nginx'],
path    => '/bin/',
command => 'sudo sed -i "54i \\rewrite ^/redirect_me https://www.youtube.com/ permanent;" /etc/nginx/sites-available/default; sudo service nginx restart'
}
