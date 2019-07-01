#!/bin/sh
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
N='\033[0;m'
HIJAU='\033[5;49;92m'
MERAH='\033[0;31m'
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar

read nick #membaca yang ditulis
figlet TermuxJomb
echo Selamat datang $nick ":)" nama ku ALICE
echo $MERAH"Untuk keluar ketik x lalu enter"$N
echo
echo "Silahkan tanyakan sesuatu"
echo Contoh :
echo cara pakai termux insta
read ASK # masukin pertanyaan
FIX="$( echo "$ASK" | sed 's/[[:space:]]/_/g')"
while true; do
if [ $FIX = "x" ]; then
exit 1
else
alice=`curl -s http://zlucifer.hol.es/Project_Alice/index.php?input=$FIX`
echo $HIJAU"$alice"$N
read ASK # masukin pertanyaan
FIX="$( echo "$ASK" | sed 's/[[:space:]]/_/g')"
fi
done
