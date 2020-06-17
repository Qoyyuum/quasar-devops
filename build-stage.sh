#!/bin/bash -x

if test -z $1 ; then 
    echo "No mode specified. Default to spa"
else 
    quasar build -m $1
fi