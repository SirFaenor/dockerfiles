
# connect to a bash inside a named container ("$1")
dockerbash() {
    docker exec -it "$1" /bin/bash
}

# call a docker-php script in current directory to forward php commands
# e.g. "dphp artisan route:list"
function dphp()
{
    ./docker-php $@
}
