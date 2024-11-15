#!/bin/bash
# MySQL database backup
DB_NAME="my_database"
USER="db_user" 
PASSWORD="db_pass"
BACKUP_DIR="/path/to/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
mysqldump -u $USER -p$PASSWORD $DB_NAME > $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql
echo "Database backup completed: $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql"