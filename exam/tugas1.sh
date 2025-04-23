#!/bin/bash
echo "Masukan nama files:"
read file

log="status.log"
echo "Log: $(date)" >> $log
if [ -e "$file" -a -r "$file" -a -s "$file" ]; then
    echo "file $file valid dan dapat dibaca [$(date)] "|| tee -a $log
elif [ -z "$file" ]; then
    echo "input tidak boleh kosong"
else
    echo "file $file tidak valid atau kosong"
fi
