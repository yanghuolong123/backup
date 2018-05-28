#!/bin/bash
#50 10 * * * /var/work/backup/backupmysql.sh

cd /var/work/backup/yhlbbs/sqldata
dir=`date "+%Y-%m"`
mkdir -p $dir
cd $dir
subfix=`date "+%Y-%m-%d_%H%M%S"`
mysqldump -u root -pyanghuolong123 yhlbbs --skip-lock-tables > yhlbbs_"$subfix".sql

cd /var/work/backup

git pull origin master:master
git add .
git commit -m "backup"
git push origin master:master
