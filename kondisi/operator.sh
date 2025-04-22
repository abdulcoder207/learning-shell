#!/bin/bash
# -eq sama dengan (==) 
# -ne tidak sama dengan (!=)
# -gt lebih besar dari (>)
# -lt lebih kecil dari (<)
# -ge lebih besar dari atau sama dengan (>=)
# -le lebih kecil dari atau sama dengan (<=)
# -z string kosong contoh [-z "$data"]
# -n string tidak kosong contoh [-n "$data"]
# -d direktori contoh [-d "/home/user"]
# -f file contoh [-f "file.txt"]
# -e file ada contoh [-e "file.txt"]
# -s file tidak kosong contoh [-s "data.txt"]
# -r file dapat dibaca contoh [-r "config.ini"]
# -w file dapat ditulis contoh [-w "log.txt"]
# -x file dapat dieksekusi contoh [-x "script.sh"]
# -o atau contoh [ -z "$input" -o "input" = "exit"]
# -a dan contoh [ -e file.txt -a -s file.txt ]
# ! negasi contoh [ ! -e file.txt ]
# && dan contoh [ $angka -eq 5] && echo "angka 5"
# || atau

echo "=== Operator Perbandingan ==="

# ini cara menemukan apakah file ada atau tidak
file="data.txt"
if [ -e "$file" ]; then
    echo "File $file ada."
else
    echo "File $file tidak ada."
fi

# ini cara menentukan apakah string kosong atau tidak
echo "Masukakn nama:"
read nama

if [ -z "$nama" ]; then
    echo "nama tidak boleh kosong"
else
    echo "nama anda adalah $nama"
fi

