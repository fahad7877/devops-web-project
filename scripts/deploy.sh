#!/bin/bash

echo "Starting deployment..."

SOURCE_DIR="$(dirname "$(dirname "$(realpath "$0")")")"
WEB_DIR="/var/www/devops-web"

echo "Source directory: $SOURCE_DIR"
echo "Web directory: $WEB_DIR"

sudo mkdir -p "$WEB_DIR"

sudo cp -r "$SOURCE_DIR/index.html" "$WEB_DIR/"
sudo cp -r "$SOURCE_DIR/css" "$WEB_DIR/"

sudo chown -R nginx:nginx "$WEB_DIR"
sudo chmod -R 755 "$WEB_DIR"

echo "Deployment completed successfully."
