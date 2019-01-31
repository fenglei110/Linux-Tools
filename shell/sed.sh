#!/usr/bin/env bash

"""
sed 文本替换
非交互式的编辑器，不会修改文件，除非使用shell的重定向保存结果
常用选项：
-n 使用silent模式，默认不输出到屏幕上
-e 直接在指令模式上进行sed的动作编辑
-f filename  可以直接执行filename的sed动作
-i 原文件修改
常用命令：
 g  行内全局替换
 s  替换，一般搭配g使用
 d  删除
 p 间某选择的资料印出
 ...

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

# 打印一个文件的300~500行
sed -n '300,500p' log.txt
# 先输出300行以后的内容，再在其中选前200行
cat log.txt | tail -n +300 | head -n 200
# 先输出前500行，再在其中选300行之后的内容
cat log.txt | head -n 500 | tail -n +300
