#!/bin/bash

echo "Starting backup..."

WEB_DIR="/var/www/devops-web-project"
BACKUP_DIR="/var/backups/devops-web-project"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/website-$DATE.tar.gz"

sudo mkdir -p "$BACKUP_DIR"

if sudo tar -czf "$BACKUP_FILE" "$WEB_DIR"; then
    echo "Backup completed successfully."
    echo "Backup file: $BACKUP_FILE"
else
    echo "ERROR: Backup failed."
    exit 1
fi
