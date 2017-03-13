#!/bin/bash
ROOT_PASS=$1
NEW_DB=$2
NEW_USER=$3
NEW_PASS=$4

mysql -uroot -p${ROOT_PASS} << END 
    CREATE DATABASE ${NEW_DB};
    CREATE USER '${NEW_USER}'@'%' IDENTIFIED BY '${NEW_PASS}';
    GRANT ALL ON ${NEW_DB}.* TO '${NEW_USER}'@'%';
    FLUSH PRIVILEGES;
END
