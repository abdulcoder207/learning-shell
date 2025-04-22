#!/bin/bash
echo "Masukan nama files:"
read file

if [ -e "$file" -a -r "$file" -a -s "$file" ]; then
    echo "file $file valid dan dapat dibaca"
elif [ -z "$file" ]; then
    echo "input tidak boleh kosong"
else
    echo "file $file tidak valid atau kosong"
fi
