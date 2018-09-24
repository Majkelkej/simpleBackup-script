#!/bin/sh

THESITE="BackupName"
DEST="/backup_folder/"
THEDATE=`date +%Y%h%d%H%M`
BACKUP="/home/username/folder/"

tar zcfp ${DEST}${THESITE_${THEDATE}.tar.gz -C / ${BACKUP}

#Uncomment to delete older backup files....
#find ${DEST}${THESITE}* -mtime +7 -exec rm {} \;

