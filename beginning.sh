#!/bin/sh

echo "Please enter atacking remote ip address:"

# Read user input into a variable
read r_address

sudo nmap -sV $r_address

gobuster dir -u $r_address -w /usr/share/seclists/Discovery/Web-Content/big.txt

echo "How was it?"
echo "If it is not working, please concider using ZAP, SQLMAP, OpenVAS, Burpsuite..."
