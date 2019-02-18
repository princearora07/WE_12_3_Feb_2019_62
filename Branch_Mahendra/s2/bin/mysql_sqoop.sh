#!/bin/bash
echo "load new data"
export 	SPARK_HOME='test'

max_val=$(hive -S -e "select count($2) from stg_s2.$1;")
echo $max_val

if [[ $max_val -lt 1 ]]; then
max_val=0;
fi

sqoop import --connect jdbc:mysql://localhost:3306/retail --username root --password cloudera --table $1 --hive-import --hive-table stg_s2.$1 --fields-terminated-by '|' --incremental append --check-column $2 --last-value $max_val -m 1
