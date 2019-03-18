#!/usr/bin/env bash

file_list=(
file1
file2
file3
)

for f in ${file_list[@]}
do
    echo "运行脚本：$f..."
done