#!/bin/bash

# script to backup .sql files

DB01="ccnet-db"
DB02="seafile-db"
DB03="seahub-db"

DATE=`date +%Y%h%d-%H%M`
DBSRV="localhost"
DBUSER="username"
DBPASS="userpass"

DEST="/backup/database/"

# Dump DB01
mysqldump --host=${DBSRV} --user=${DBUSER} --password=${DBPASS} --opt ${DB01} > ${DEST}${DB01}.sql.${DATE}
# Compress dump file
gzip ${DEST}${DB01}.sql.${DATE}

#Dump DB02
mysqldump --host=${DBSRV} --user=${DBUSER} --password=${DBPASS} --opt ${DB02} > ${DEST}${DB02}.sql.${DATE}
# Compress dump file
gzip ${DEST}${DB02}.sql.${DATE}

#Dump DB03
mysqldump --host=${DBSRV} --user=${DBUSER} --password=${DBPASS} --opt ${DB03} > ${DEST}${DB03}.sql.${DATE}
# Compress dump file
gzip ${DEST}${DB03}.sql.${DATE}


# Cleanup old dump files
find ${DEST}*sql* -mtime +7 -exec rm {} \;
