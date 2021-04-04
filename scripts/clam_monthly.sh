#!/usr/bin/env bash
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
$(command -v clamdscan) --multiscan --log /root/scans/scanlog_monthly_$timestamp.txt /
rm -f /tmp/filelist.txt
