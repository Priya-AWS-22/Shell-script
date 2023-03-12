#!/bin/bash

   ACTION=$1

    if [ "$ACTION" == "start" ];  then
       echo -e "\e[32m payment is starting \e[0m"

    else

    if [ "$ACTION" == "stop" ] then 
       echo -e "\e[31m payment is stopped \e[0m"

    fi