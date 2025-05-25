FROM wordpress:latest

# bump PHP limits to 2 GB
RUN { \
    echo 'upload_max_filesize = 2048M'; \
    echo 'post_max_size = 2048M'; \
    echo 'memory_limit = 2048M'; \
    echo 'max_execution_time = 600'; \
    echo 'max_input_time = 600'; \
} > /usr/local/etc/php/conf.d/uploads.ini
