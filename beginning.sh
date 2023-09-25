#!/bin/sh

# Ask user to enter an IP address
echo "Please enter attacking remote IP address:"

# Read user input into a variable
read r_address

# Check if the user has entered a valid IP address
if [[ $r_address =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "You have entered a valid IP address!"

    # Run nmap scan
    echo "Running nmap scan..."
    sudo nmap -sV $r_address

    # Run gobuster
    echo "Running gobuster..."
    gobuster dir -u $r_address -w /usr/share/seclists/Discovery/Web-Content/big.txt

    # Ask the user if the scan worked
    echo "How was it?"
    echo "If it is not working, please concider using ZAP, SQLMAP, OpenVAS, Burpsuite..."

else
    echo "You have entered an invalid IP address!"
fi
