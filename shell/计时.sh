#!/usr/bin/env bash

batch_start=`date '+%s'`
## 实际运行时的程序主体。
sleep 2
batch_end=`date '+%s'`
set +e
batch_timing=`expr $batch_end - $batch_start` ## set -e 会捕获这里的输出值
set -e
echo "batch结束。`date '+%F %T'` 耗时：`expr $batch_timing / 60` minutes `expr $batch_timing % 60` seconds"
