#!/bin/bash

echo "Starting backup..."

WEB_DIR="/var/www/devops-web"
BACKUP_DIR="/var/backups/devops-web"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

sudo mkdir -p "$BACKUP_DIR"

sudo tar -czf "$BACKUP_DIR/website-$DATE.tar.gz" "$WEB_DIR"

echo "Backup completed."
echo "Backup location: $BACKUP_DIR"
