#!/usr/bin/env bash

"""
awk 数据流处理工具
"""
# print以逗号分割，参数以空格为界
echo | awk ' {var1="v1"; var2="v2"; var3="v3"; print var1, var2, var3;}'


# 打印每一行的第二个和第三个字段
awk '{print $2, $3}' log.txt

# 统计文件的行数
awk ' END {print NR}' log.txt
# 等同于
wc -l log.txt

# 累加每一行的第一个字段
echo -e '1\n 2\n 3\n 4\n' | awk 'BEGIN{num = 0; print "begin";} {sum += $1;} END {print "=="; print sum}'

# 处理外部变量
var = 10
echo | awk '{print v}' v=$var  # 输入来自stdin
awk '{print v}' v=$var file  # 输入来自file

# 将外部shell命令的输出读入到变量out中
echo | awk '{"grep root /etc/passwd" | getline out; print out }'

# 在awk中使用循环
for(i=0;i<10;i++){print $i;}
for(i in array){print array[i]}

echo '2015_04_22 20:12:22: how are you!'|awk -F ':' '{print $1 ":" $2 ":" $3; print $4;}'
# >2015_04_22 20:12:22
# >how are you!

# 找到指定的服务，然后kill掉
ps -ef|grep mysql|grep -v MFORWARD|awk '{print $2}'|xargs kill -9;

# awk 实现head, tail命令
# head
awk 'NR<=10{print}' log.txt
# tail
awk '{buffer[NR%10] = $0;} END{for(i=0;i<11;i++){print buffer[i%10]}}' log.txt

# 打印指定列
ls -lrt | awk '{print $6}'
ls -lrt | cut -f6

# 打印指定行
awk 'NR==4,NR==6{print}'

# 打印确定区域的文本, start-end
awk '/start_pattern/, /end_pattern/' log.txt

#----------------------迭代文件----------------------
# 1. while迭代文件中的每一行
while read line;
do
echo $line;
done < file.txt
# 改成shell
cat log.txt | (while read line; do echo $line;done)
# 换成awk
cat log.txt | awk '{print}'

# 2. 迭代一行中的每一个单词
for word in $line
do
echo $word;
done

# 3. 迭代每一个字符
for((i=0;i<$(#word);i++))
do
echo $(word:i:1);
done


# 组合查找本地目录下的所有二进制文件
ls -lrt | awk '{print $9}'|xargs file|grep ELF|awk '{print $1}'|tr -d ':'