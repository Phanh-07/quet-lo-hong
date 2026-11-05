#!/bin/bash
TARGET="192.168.188.129"
echo "[*] Dang quét cong va dich vu tren $TARGET..."
sudo nmap -sV -sC $TARGET -oN scan_after_ports.txt
echo "[*] Dang quét lo hong CVE tren $TARGET..."
sudo nmap -sV --script vuln $TARGET -oN scan_after_vuln.txt
echo "[+] Hoàn tat! Ket qua duoc luu tai scan_after_ports.txt va scan_after_vuln.txt"
