#!/usr/bin/env bash

"""
sed 文本替换
"""
# 首处替换, 输出
sed 's/text/replace_text' log.txt

# 全局替换，输出
sed 's/text/replace_text/g' log.txt

# 源文件替换
sed -i 's/text/replace_text/g' log.txt

# 移出空白行
sed '/^$/d' log.txt

# 用&来引用匹配的字符
echo who are you | sed 's/\w+[&]/g'
# $> [who] [are] [you]

