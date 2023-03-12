#!/bin/bash

Simple If
    if [ expression ]; then
        command1
        command2
        command3
    fi 

    if [ "$ACTION" == "start" ];  then
       echo -e "\e[32m payment is starting \e[0m"

    fi