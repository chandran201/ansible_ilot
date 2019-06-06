#!/bin/bash
#
# Script Name: jblogrotate.sh
# Description: Clean up jboss logs per container. Make sure that
#              rotated are gziped and older then given are deleted
# Author:      Piotr.Bugala@IGT.com
#

jbpath=/var/log/jbossas
rotate=$1
logs=(console.log server.log alert.log)

for jblog in ${logs[@]} ;do
  find $jbpath -maxdepth 2 -type f -mtime +1 -name "${jblog}.*[^.gz]" -exec gzip {} \;
  find $jbpath -maxdepth 2 -type f -mtime +${rotate} -name "${jblog}.*" -exec rm -f {} \;
done
  find $jbpath -maxdepth 2 -type f -mtime +1 -name "*_container.log.*[^.gz]" -exec gzip {} \;
  find $jbpath -maxdepth 2 -type f -mtime +${rotate} -name "*_container.log.*" -exec rm -f {} \;
