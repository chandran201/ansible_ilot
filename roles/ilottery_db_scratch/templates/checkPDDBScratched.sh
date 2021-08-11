#!/bin/sh

db2 "connect to PDDB" 1>/dev/null
db2 "set serveroutput OFF" 1>/dev/null
db2 -x "select VALUE from devops.config where id = 'SCRATCHED'" | sed -e 's/ //g'
db2 "disconnect PDDB" 1>/dev/null