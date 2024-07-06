#!/bin/bash
clear
echo "Menjalankan Bot3"
while true; do
file="node_modules"
if [ -d "$file" ]; then
while true; do
sleep 2
clear
read -p "Anda Ingin Login Ke Nomor Baru Bot Atau Tidak ? Jawab ( ya/no ) : " gimana
if [[ "$gimana" = "no" || "$gimana" = "n" ]]; then
clear
elif [[ "$gimana" = "ya" || "$gimana" = "y" ]]; then
rm -rf session
clear
echo "Succes Bot Bisa Di Loginkan Ke Nomor Yang Baru !"
sleep 5
clear
fi
play -q $HOME/TOOLSV5/sound/robot2.mp3 &>/dev/null
echo "BOT DI JALANKAN 24 JAM UNTUK BERHENTI CTRL+C "
echo "TUNGGU 10 DETIK "
sleep 10
play -q $HOME/TOOLSV5/sound/klik.mp3 &>/dev/null
npm start
done
else
clear
play -q $HOME/TOOLSV5/sound/salah.mp3 &>/dev/null
echo "Node_Modules Belum Terinstall"
sleep 5
clear
echo "Menginstall Node_Modules"
pkg install yarn -y
yarn cache clean
yarn
fi
done