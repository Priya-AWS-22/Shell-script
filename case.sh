#!/bin/bash

#case $var in

# opt1) cmd1 ;;

# opt2) cmd2 ;;

#esac

ACTION=$1

case $ACTION in

start) 
    echo "start the payment"
    exit 0
;;
stop)
    echo "stop the payment"
    exit 2
;;
esac