#!/bin/bash

   echo "simple if condition"
   
   ACTION=$1

    if [ "$ACTION" == "start" ]; then
       echo -e "\e[32m payment is starting \e[0m"
       exit 0
    
    else

          echo -e "\e[31m payment is stopped \e[0m"
          exit 3

    fi