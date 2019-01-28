## 用户端里
#### 用户
1. 添加用户  
useradd -m username 
passwd username
2. 删除用户  
userdel -r username  
3. 切换用户  
su user
#### 用户的组 
1. 查看  
groups
2. 将用户添加到组  
usermod -G groupName username  
3. 变更用户所属的组，从原组中删除  
usermod -g groupName username
4. 查看所有的用户及权限  
more /etc/passwd
5. 查看所有的用户组和权限
more /etc/group

#### 用户权限
1. 对所有用户给文件main增加可执行权限  
chmod a+x main
2. 对组用户给文件main增加可写权限  
chmod g+u main
3. 更改文件的拥有者  
chown -R root opt/

#### 环境变量
bashrc与profile都用于保存用户的环境信息，bashrc用于交互式non-loginshell，而profile用于交互式login shell。
- /etc/profile， /etc/bashrc 是全局环境变量设定
- ~/.profile， ~/.bashrc 用户目录下的私有环境变量设定

当登入系统获得一个shell进程时，其读取环境设置脚本分三步：
1. 首先读入/etc/profile，然后根据其内容读取额外的文档，如/etc/profile.d和/etc/inputrc
2. 读取当前登录用户Home目录下的文件~/.bash_profile，其次读取~/.bash_login，最后读取~/.profile，这三个文档设定基本一样，读取有优先关系
3. 读取~/.bashrc
