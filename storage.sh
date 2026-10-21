#!/bin/bash

filename="ip.txt"
log_file="slog.txt"

nmap -sn <ip> | grep "report" | cut -d '(' -f2 | cut -d ')' -f1 > "$filename" 

> "$log_file"

while read -r ip
do
    echo "Processing IP: $ip"   
    echo "IP : $ip" >> "$log_file"

    ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no ls1@"$ip" "
        echo 'Disk Space'
        df -h / |  grep 'sda1' || df -h /
        echo 'Memory' 
        free -h" >> "$log_file" 2>/dev/null

done < "$filename"

