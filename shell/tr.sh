#!/usr/bin/env bash

"""
tr用于转换
"""
# 通用用法，0-9加密为9876543210, 然后输出
echo 123 | tr '0-9' '9876543210'

# 把文件中的\n转化为==输出
cat log.txt | tr '\n' '=='

# -c 求补集
cat log.txt | tr -c '0-9' -print

# -d 删除字符输出
cat log.txt | tr -d '1-9'

# 删除非数字数据输出
cat log.txt | tr -d -c '0-9 \n'
