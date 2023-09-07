
# connect to a bash inside a named container ("$1")
dockerbash() {
    docker exec -it "$1" /bin/bash
}

# forward php commands to docker container
function dphp()
{
    # call a docker-php script in current directory to forward php commands
    # ./docker-php $@

    # call container directly
    docker compose exec -it web php $@
}

# forward composer commands to a docker-compose container called "web" in the current directory
function dcomposer()
{
    docker compose exec -it web composer $@
}

# forward any command to a docker-compose container called "web" in the current directory
function d() {
    docker compose exec -it web $@
}