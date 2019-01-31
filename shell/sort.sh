#!/usr/bin/env bash
"""
参数说明：
-n 按每行数字个数排序输出
-r 逆序排序
"""
sort -n log.txt

sort -r log.txt

"""
uniq消除重复行,注意必须是连续行
"""
sort log.txt | uniq

# 统计各行在文件中出现的次数
sort log.txt | uniq -c

# 找出重复行
sort log.txt | uniq -d

# 一个ip.txt文件，每行一条ip记录，共若干行，实现‘统计出现次数最多的前三个ip及其次数’
sort ip.txt | uniq -c | sort -rn | head -n 3