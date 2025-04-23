#!/bin/bash


echo "=== File Checker ==="
echo "Tools ini digunakan untuk mengecek file dan folder"
echo "Tools ini akan mengecek apakah file dapat dibaca dan tidak kosong"
echo "Tools ini juga akan mengecek apakah folder ada dan dapat diakses"
echo "Tools ini juga akan membuat log file"

echo "Cara menggunakan tools ini"
echo "Pakai windows path /c/Users/username"
echo "Pakai linux path /home/username"
echo "Pakai mac path /Users/username"
echo "Jangan lupa Local disk C atau yang lain harus huruf kecil"

echo "Masukan path folder :"
read -r folder
folder=$(echo "$folder" | sed 's|\\|/|g')


echo "Folder yang di input: $folder"
log="Log_file_check.log"
echo "Log dimulai pada: $(date)" >> "$log"

if [ -d "$folder" ]; then
    echo "Folder ditemukan: $folder"
    echo "Memulai pengecekan isi file"

    for file in "$folder"/*; do
        if [ -f "$file" ]; then
            if [ -r "$file" -a -s "$file" ]; then
                echo "[OK] $file dapat dibaca" | tee -a "$log"
                elif [ -f "$file" ]; then
                echo "[WARNING] $file dapat dibaca tetapi kosong" | tee -a "$log"
            else
                echo "[ERROR] $file tidak dapat dibaca" | tee -a "$log"
            fi
        fi
    done
else
    echo "Folder tidak ditemukan"
    echo "[ERROR] Folder tidak ditemukan: $folder" >> "$log"
fi

echo "Log selesai: $(date)" >> "$log"