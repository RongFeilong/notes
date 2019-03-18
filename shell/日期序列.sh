#!/usr/bin/env bash
set -e
# 调度命令：
# sh 日期序列.sh 2>&1

## 参数的默认值
start_dt='2017-12-18'
end_dt='2018-01-05'

## 判断入参
if [ $# -eq 1 ]; then
   echo "参数错误：参数数量需为0或2个。"
   exit 1
fi

if [ $# -eq 2 ]; then
   start_dt=$1
   end_dt=$2
   echo "使用参数：start_dt=${start_dt}, end_dt=${end_dt}......."
fi

## 开始计算日期序列
echo "开始日期：${start_dt}, 结束日期：${end_dt}"
dt=`date -d "$start_dt last day" +%Y-%m-%d`
while [ `date -d "$dt" +%s` -lt `date -d "$end_dt" +%s` ]
do
   dt=`date -d "$dt next day" +%Y-%m-%d`
   echo "${dt}..."
done
echo "日期序列结束。"
