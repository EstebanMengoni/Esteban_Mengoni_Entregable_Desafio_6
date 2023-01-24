#!/bin/bash

echo -e "\nIngrese una opcion\n0. Salir\n1. Enable server\n2. Start server\n3. Stop server\n"

read opcion

while [ $opcion != "0" ]
do
        case $opcion in
                1)
                        sudo systemctl enable devops.service
                        echo -e "\nHabilitando el  servicio"
                        ;;
                2)
                        sudo systemctl start devops.service
                        echo -e "\nIniciando servidor"
                        ;;
                3)
                        sudo systemctl stop devops.service
                        echo -e "\nDeteniendo servidor"
                        ;;
        esac

echo -e "\nIngrese otra opcion\n0. Salir\n1. Enable server\n2. Start server\n3. Stop server\n"

read opcion

done