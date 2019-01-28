#!/usr/bin/env bash

# 查找py文件和pdf文件，注意间隔
find . \( -name ".*py" -o -name "*.pdf" \) -print

# -iregex 忽略大小写的正则

# 查找当前目录下所有非txt文本
find . ! -name "*.txt" -print

# -type f 文件 / d目录 / |符号链接
# 指定搜索深度，打印出当前目录的文件
find . -maxdepth 2 -type f

# 列出所有目录
find . -type d -print

# 可以判断文件类型
find redis-cli
redis-cli: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=a858be637560cc0b6106c3f11591da00154d7a81, stripped

find log.txt
log.txt: ASCII text

# 按时间搜索
"""
1. -atime 访问时间，单位是天
2. -mtime 修改时间(内容发生变动)
3. -ctime 变化时间(元数据或权限发生变化)
"""
# 最近5天被访问的所有文件
find . -atime 5 -type f -print

# 5天前被访问的所有文件
find . -atime +5 -type f -print

# 寻找大于1M的文件
find . -type f -size +1M

# 查找某种权限的所有文件
find . -type f -perm 777

# 查找root用户的所有文件
find . -type f -user root

# 查找结束后删除
find . -type f -name "*.pdf" -delete
find . -type f -name "*.pdf" | xargs rm

# 查找后变更权限，root改为feng
find . -type f -user root -exec chown feng {} \;
# {}是一个特殊字符，对于每一个匹配的文件，{}会被替换成相应的文件名

# 找到文件后copy到另一个文件
find . -type f -mtime +5 -name ".py" -exec cp {} other.py \;

# 可以自己将多个命令写一个脚本，然后-exec调用脚本
-exec ./自定义.sh {} \;