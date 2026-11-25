#!/bin/bash
# Author: Tarun Kumar
# Roll Number: 2601730055
# University: K.R. Mangalam University

if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE_FOLDER="$1"

# Expand ~ if present
if [[ "$SOURCE_FOLDER" == ~* ]]; then
    SOURCE_FOLDER="${SOURCE_FOLDER/#\~/$HOME}"
fi

if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"
LOG_FILE="$BACKUP_DIR/backup.log"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
FOLDER_NAME=$(basename "$SOURCE_FOLDER")
ARCHIVE_NAME="${FOLDER_NAME}_backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

echo "Creating backup of: $SOURCE_FOLDER"
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SOURCE_FOLDER")" "$FOLDER_NAME" 2>/dev/null

if [ $? -eq 0 ]; then
    SIZE=$(du -sh "$ARCHIVE_PATH" | awk '{print $1}')
    LOG_ENTRY="[$(date '+%Y-%m-%d %H:%M:%S')] SUCCESS: Created $ARCHIVE_NAME | Size: $SIZE | Source: $SOURCE_FOLDER"
    echo "$LOG_ENTRY" >> "$LOG_FILE"
    echo "Backup completed successfully!"
    echo "Archive: $ARCHIVE_PATH"
    echo "Size   : $SIZE"
    echo "Logged : $LOG_FILE"
else
    LOG_ENTRY="[$(date '+%Y-%m-%d %H:%M:%S')] ERROR: Backup failed for $SOURCE_FOLDER"
    echo "$LOG_ENTRY" >> "$LOG_FILE"
    echo "Error: Backup operation failed."
    exit 1
fi