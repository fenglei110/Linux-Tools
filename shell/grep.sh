#!/usr/bin/env bash
"""
grep 文本搜索
grep match_pattern file  默认访问匹配行
常用参数：
1. -o 只输出匹配的文本(是文本不是行)
2. -v 只输出没有匹配的文本行
3. -c 统计文件中包含文本的次数
4. -n 打印匹配的行号
5. -i 搜索时忽略大小写
6. -l 打印文件名
"""
# 递归搜索文件中包含‘class’的匹配行
grep "class" /home/f/Document/shell -R -n

# 匹配多模式
grep -e "class" -e "print" filename -n

# 将日志中所有带where条件的sql语句查找出来
cat log.*|tr a-z A-Z|grep "from"|grep "where" >> b

# 统计log日志中包含where的次数
grep -c "where" log.*

# >> 追加输出到一个文件
# > 覆盖输出到一个文件