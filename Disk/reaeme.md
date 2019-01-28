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
