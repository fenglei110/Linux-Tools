#!/usr/bin/env bash
"""
参数说明：
-n 按每行数字个数排序输出
-r 逆序排序
"""
sort -n log.txt

sort -r log.txt

"""
uniq消除重复行
"""
sort log.txt | uniq

# 统计各行在文件中出现的次数
sort log.txt | uniq -c

# 找出重复行
sort log.txt | uniq -d