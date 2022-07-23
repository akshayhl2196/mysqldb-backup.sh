#!/bin/bash


USER="_"
# PASSWORD="PASSWORD"
HOST="Database Host"
DB_NAME="_"


#Backup_Directory_Locations

BACKUPROOT="/backup/mysql_dump"
TSTAMP=$(date +"%d-%b-%Y-%H-%M-%S")
S3BUCKET="s3://<Bucket_Name>



#logging

LOG_ROOT="/backup/mysql_dump/logs/dump.log"
#Dump of Mysql Database into S3\
echo "$(tput setaf 2)creating backup of database start at $TSTAMP" >> "$LOG_ROOT"
mysqldump  -h "<Database Host>  -u<USER NAME>  -p"PASSWORD" > $BACKUPROOT/$DB_NAME-$TSTAMP.sql | aws s3 cp - s3://<bucket name>/<file name.sql>


~
~
~
~
