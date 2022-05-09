#!/bin/bash

kadi=`whoami`

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
  echo "::::::::::::::::::::: Kullanim :::::::::::::::::::::"
  echo "`basename $0` [hostname/ip]"
  echo "`basename $0` [hostname/ip] -lks1"
  echo "`basename $0` [hostname/ip] -lks2"
  echo "`basename $0` [hostname/ip] -lks3"
  echo "`basename $0` [hostname/ip] -lks4"
  echo "Not: PSMP parametresi zorunlu degildir."
  echo "::::::::::::::::::::: Kullanim :::::::::::::::::::::"
  exit 0
elif [ -z "$1" ]; then
  echo "[hostname/ip] zorunludur."
  echo "For usage: `basename $0` -h"
  exit 0
else
    if [ "$2" == "-lks1" ] || [ -z "$2" ]; then
        echo  "$1'e lks1'den baglaniyor..."
        ssh -o UserKnownHostsFile=/dev/null -C -o StrictHostKeyChecking=no $kadi@$1@PSMPIP
        exit 0
    elif [ "$2" == "-lks2" ]; then
        echo  "$1'e lks2'den baglaniyor..."
        ssh -o UserKnownHostsFile=/dev/null -C -o StrictHostKeyChecking=no $kadi@$1@PSMPIP
        exit 0
    elif [ "$2" == "-lks3" ]; then
        echo  "$1'e lks3'den baglaniyor..."
        ssh -o UserKnownHostsFile=/dev/null -C -o StrictHostKeyChecking=no $kadi@$1@PSMPIP
        exit 0
    elif [ "$2" == "-lks4" ]; then
        echo "$1'e lks4'den baglaniyor..."
        ssh -o UserKnownHostsFile=/dev/null -C -o StrictHostKeyChecking=no $kadi@$1@PSMPIP
        exit 0
    else
        echo "Yanlis ya da eksik parametre"

    fi
fi
