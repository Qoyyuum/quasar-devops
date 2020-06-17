#!/bin/bash -x

# From Dockerfile:
# RUN if [ "x$port" = "x" ]; then if [ "$mode" = "ssr"]; then $port=3000; else $port=8080; fi; else echo Ports will use defaults; fi
# ENV port ${port}
# RUN echo "Port is ${port}"

if test -z $1 ; then 
    echo "No mode specified. Default to spa"
else if $1==""
    quasar build -m $1
fi
