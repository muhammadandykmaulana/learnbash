#!/bin/bash

read -p "Username: " username
while true; do
    read -s -p "Password: " password
    echo $password 
    read -s -p "Password (again): " password2
    echo $password2
    echo "Succes Gan"
    [ "$password" = "$password2" ] && break
    echo "Please try again"
done
