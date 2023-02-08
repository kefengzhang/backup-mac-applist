#!/usr/bin/env bash

#设置定时任务，每50分钟
rm -f cornjob
cFolder="$(pwd)"
#设定定时任务
echo "*/50 * * * * $cFolder/backup.sh  > /dev/null 2>&1" | crontab
#获得一次壁纸
./backup.sh  >> /dev/null 2>&1
