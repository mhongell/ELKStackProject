#!/bin/bash

#Print free memory
free -h > ~/backups/freemem/free_mem.txt
#Print disk usage
du -h > ~/backups/diskuse/disk_usage.txt
#Print open files
lsof > ~/backups/openlist/open_list.txt
#Print disk space
df -h > ~/backups/freedisk/free_disk.txt

