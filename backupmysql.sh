#!/bin/bash
#50 10 * * * /var/work/backup/backupmysql.sh
cd /var/work/backup
dir=`date "+%Y-%m"`
mkdir -p $dir
cd $dir
subfix=`date "+%Y-%m-%d_%H%M%S"`
mysqldump -u root -pyanghuolong123 zd_miaopost --skip-lock-tables > miaopost_"$subfix".sql

git add .
git commit -m "sql backup"
git push origin master:master
