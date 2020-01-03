### Hive 常用操作和SQL

##### 查看表容量大小，单位G
``` bash
hadoop fs -du /user/hive/warehouse/cdm_cp01_db.db/cp1104_sub_acct | awk '{ SUM += $1 } END { print SUM/(1024*1024*1024)}'
```

