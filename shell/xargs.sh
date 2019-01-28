#!/usr/bin/env bash
"""
参数说明：
-d 定义定界符，默认空格
-n 指定输出多行
-I {} 指定替换字符串
"""
# xargs能够将输入数据转化为特定命令的命令行参数; 这样，可以配合很多命令来组合使用。将多行输出转化为单行输出
cat log.txt | xargs

# 转化为3行输出
cat log.txt | xargs -n 3

# 统计行数
find /opt/module/ -type f -name "*.py" -print0 | xargs -0 wc -l

# redis通过str存储数据，通过set储存索引，需要使用索引来查出所有的值
./redis-cli smembers $1 | awk '{print $1}'|xargs -I {} ./redis-cli get {}