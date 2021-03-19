#!/bin/bash
echo "Welcome to your new bdd"

mysql --local-infile=1 --user=root --host=localhost -e "CREATE DATABASE IF NOT EXISTS library;" -p00000000
mysql --local-infile=1 --user=root --host=localhost -p00000000 library < library.sql

