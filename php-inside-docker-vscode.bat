:: forward call to php executable inside a docker container
docker exec -i {container_name} php %*

:: add this to VS code settings
:: "php.validate.executablePath" : '/path/to/php.bat'
