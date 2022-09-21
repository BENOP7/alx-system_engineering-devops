# Manifest terminates a process called killmenow

exec {'terminate killmenow':
path    => '/bin/',
command => 'pkill -f ./killmenow'
}
