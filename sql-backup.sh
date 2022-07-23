#!/bin/bash


USER="root"
# PASSWORD="PASSWORD"
HOST="testdatbase.ckt1rvkddibh.us-east-1.rds.amazonaws.com"
DB_NAME="testdatbase"


#Backup_Directory_Locations

BACKUPROOT="/backup/mysql_dump"
TSTAMP=$(date +"%d-%b-%Y-%H-%M-%S")
S3BUCKET="s3://backup-demo2022"



#logging

LOG_ROOT="/backup/mysql_dump/logs/dump.log"
#Dump of Mysql Database into S3\
echo "$(tput setaf 2)creating backup of database start at $TSTAMP" >> "$LOG_ROOT"
mysqldump  -h testdatbase.ckt1rvkddibh.us-east-1.rds.amazonaws.com  -u admin -p"VuUMkv9phvfMCQ5KyNPI" > $BACKUPROOT/$DB_NAME-$TSTAMP.sql | aws s3 cp - s3://backup-demo2022/test-database-dump.sql

~
~
~
~
~
