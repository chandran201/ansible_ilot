#!/bin/sh

nohup {{ db2home }}/.bashrc; {{ db2scripts }}/runstats PDDB ALL | tee /tmp/runstats_PDDB.logs
nohup {{ db2home }}/.bashrc; {{ db2scripts }}/rebinder PDDB | tee /tmp/rebind_PDDB.log

objs=`grep "SQL object type" /tmp/rebind_PDDB.log | awk -F"." '{print substr($1,2)}' | uniq`
db2 "connect to pddb"
for obj in $objs; do db2 "CALL SYSPROC.ADMIN_REVALIDATE_DB_OBJECTS(NULL, '$obj', NULL)"; done
db2 "disconnect pddb"

nohup {{ db2home }}/.bashrc; {{ db2scripts }}/rebinder PDDB | tee /tmp/rebind_PDDB.log