#!/bin/bash

printf -v minute "%(%M)T"
  if [ "$minute" -ge 20 ] & [ "$minute" -lt 40 ]; then
    echo -ne '\007'
  elif [ "$minute" -ge 40 ] & [ "$minute" -lt 60 ]; then
    echo -ne '\007'
	sleep 1
	echo -ne '\007'
  else
    echo "no chime"
  fi