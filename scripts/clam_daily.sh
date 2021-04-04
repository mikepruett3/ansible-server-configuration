#!/usr/bin/env bash
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
$(command -v find) / \
    -type f \
    -mtime -1 \
    | grep -v "/proc" \
    | grep -v "/sys" \
    | grep -v "/dev" \
    | grep -v "/run" \
    | grep -v "/var/log/lastlog" \
    | grep -v "nohup" >> /tmp/filelist.txt
$(command -v clamdscan) --multiscan --log /root/scanlog_$timestamp.txt --file-list=/tmp/filelist.txt
rm -f /tmp/filelist.txt