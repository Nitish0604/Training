SOURCE_DIR="/d/OneDrive - Olam International/Desktop/New Folder"
BACKUP_DIR="/d/OneDrive - Olam International/Desktop/Backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Create Directory if not exists

mkdir -p "$BACKUP_DIR"


# Create a compressed tar file
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"