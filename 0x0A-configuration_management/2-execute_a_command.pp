# Manifest terminates a process called killmenow

exec {'pkill -9 ./killmenow':
path => '/bin/'
}
