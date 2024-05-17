#!/bin/bash

# Define the nginx configuration file
NGINX_CONF="nginx.conf"

# Update the configuration file
sed -i '' 's/server old_app_1:80;/server new_app_1:80;/' "$NGINX_CONF"
sed -i '' 's/server old_app_2:80;/server new_app_2:80;/' "$NGINX_CONF"

# Reload NGINX configuration inside the Docker container
docker exec load_balancer nginx -s reload
