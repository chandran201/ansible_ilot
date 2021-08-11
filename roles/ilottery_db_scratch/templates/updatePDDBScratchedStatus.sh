#!/bin/sh

db2 "connect to PDDB" 1>/dev/null
db2 "set serveroutput OFF" 1>/dev/null
db2 -x "update devops.config set VALUE = 'FALSE' where id = 'SCRATCHED'"
db2 "disconnect PDDB" 1>/dev/null