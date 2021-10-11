#!/bin/bash

cat fig
echo Linux Version
echo ""
echo ""

while getopts k:s:l:h: flag
do
    case "${flag}" in
        k) killall ${OPTARG};;
        s) exec ${OPTARG} &;;
        l) echo Comming soon...;;
		h) echo "Use: process -k (process to kill) -s (start a process) -h help (display help)"
    esac
done
