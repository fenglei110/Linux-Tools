## 磁盘管理
#### 磁盘空间
1. 查看磁盘空间  
df -h
2. 查看当前目录所占空间大小  
du -sh
3. 查看当前目录下所有子文件夹排序后的大小  
du -sh `ls` | sort

#### 打包/压缩
1. 打包，是将多个文件归并到一个文件  
tar -cvf etc.tar /path  
2. 压缩  
gzip demo.txt

#### 解包/解压缩
tar -xvf demo.tar    
bzip2 -d demo.tar.bz2  
gunzip demo.tar.gz


#### 文件分布
1. /dev 设备信息
2. /bin/sbin 可执行文件
3. /lib/lib64 动态库/静态库
4. /opt 第三方文件
5. /user 第三方头文件和库
6. /home 家目录
7. /etc 系统文件
8. /lost+found 丢失文件
9. /root 管理员的家目录
10. /var 系统日志文件/缓存文件 

- /etc/hosts 主机名到ip地址的映射关系的文件
- /etc/resolv.conf DNS服务的配置文件
- /etc/gateway 建立动态路由需要用到的文件
- /etc/services 定义了网络服务的端口
- /etc/mtab 记载现在系统已经装载的文件系统，包括操作系统建立的虚拟文件等，而/etc/fstab是系统准备装载的
- /etc/fstab 记录了计算机上硬盘分区的相关信息，启动Linux的时候，检查分区的fsck命令，和挂载分区的mount命令，都需要fstab中的信息，来检查和挂载磁盘
