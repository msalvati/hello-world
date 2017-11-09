#!/bin/sh
#
#---------------------------------
# script backup 
#---------------------------------
# questo non lo uso piu'! me lo aveva dato umbe...

home_dir="/home/marta"
backup_dirs="$home_dir/.thunderbird /media/WINE/MARTA"
backup_date=`date +%Y%m%d`
backup_file=$backup_date"_backup.tar.gz"
backup_dest_dir="backup"
echo "tar czf $backup_dest_dir/$backup_file $backup_dirs"
tar czf $backup_dest_dir/$backup_file $backup_dirs

backup_host="10.10.49.211"
backup_remote_dir="marta/backup"
user='marta'
pwd='mart'
echo "ncftpput -u $user -p $pwd $backup_host $backup_remote_dir $backup_dest_dir/$backup_file"
ncftpput -u $user -p $pwd $backup_host $backup_remote_dir $backup_dest_dir/$backup_file

