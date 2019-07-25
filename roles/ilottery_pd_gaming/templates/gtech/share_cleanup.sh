site_id=$1
balancing_retention_days=$2
failed_retention_days=$3
standard_retention_days=$4
orphan_retention_days=$5

### Balancing
find /srv/esshare/renaissance/balancing -mtime +${balancing_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/databalance/${site_id} -mtime +${balancing_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/finxfer -mtime +${balancing_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/playerver -mtime +${balancing_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/txsxfer -mtime +${balancing_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/dayend -mtime +${balancing_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;

### GIS
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/substat/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/substat/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/drwdesc/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/drwdesc/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/drwevent -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/drwrslt/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/drwrslt/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/out/este/subswagxfer -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/substat/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/substat/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/drwdesc/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/drwdesc/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/drwevent -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/drwrslt/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/drwrslt/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/out/gm/subswagxfer -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;

### Processes
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/autopht/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/autopht/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/autoplt/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/autoplt/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/einstantEsteAutopht/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/este/einstantEsteAutopht/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/autopht/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/autopht/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/autoplt/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/autoplt/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/einstantEsteAutopht/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gm/einstantEsteAutopht/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/gms/rstrtdplyr -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/out/gms/rstrtdplyr -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/cap/clmsumm/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/clps/in/cap/clmsumm/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;

### The others
find /srv/esshare/renaissance/application/${site_id}/clps/in/lottery/claim -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/crm/out -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/este/wagxfer/processed -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/este/wagxfer/failed -mtime +${failed_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id}/vouchers/out/securepc -mtime +${standard_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;

### In case something was left
find /srv/esshare/renaissance/databalance/${site_id} -mtime +${orphan_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
find /srv/esshare/renaissance/application/${site_id} -mtime +${orphan_retention_days} -type f -name '*'  -print0 | xargs -r0 rm --;
