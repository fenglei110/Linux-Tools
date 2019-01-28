## 进程管理
#### 查询进程
1. 查看mysql进程  
ps -ef | grep mysql
2. 显示所有进程  
ps -ajx
3. 实时进程信息  
top
4. 查看指定端口的进程情况  
netstat -tunlp |grep 8000
5. 查看端口占用情况   
lsof -i:3306
6. 查看用户user的进程所打开的所有文件  
lsof -u user
7. 查看init进程当前打开的文件  
lsof -c init
8. 查询指定的进程打开的文件  
lsof -p 23295
9. 查询指定目录下被进程开启的文件  
lsof +d opt/module/

#### 终止进程
1. 杀死指定进程  
kill PID
2. 杀死相关进程  
kill -9 PID
3. 杀死job工作  
kill %number

#### 进程监控
查看系统中使用CPU，使用内存最多的进程  
top (->) p  
- p:根据cpu使用百分比进行排序
- M:根据驻留内存大小排序
- i:使top不显示任何闲置或僵死进程

#### 分析线程栈
pmap  
输出进程内存的状况，可以用来分析线程堆栈