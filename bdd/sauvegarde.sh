#!/bin/bash
# On liste nos bases de données
LISTEBDD=$( echo 'show databases' | mysql -u root -p00000000)
for BDD in $LISTEBDD do

    if [[ $BDD != "information_schema" ]] && [[ $BDD != "mysql" ]] && [[ $BDD != "Database" ]]; 
    
    then
    CHEMIN=/workspace-cci/bdd/sauvegarde/$BDD

    mysqldump -u backup --single-transaction --password= $BDD > "$CHEMIN/$BDD.sql"
    echo "|Sauvegarde de la base de donnees $BDD.sql ";
    fi

done