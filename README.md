# YouxinStore
基于SSM搭建一个使用Dubbo做服务治理的分布式商城系统YouxinStore(优信商城)

## 前端
1. Html
2. CSS
3. JavaScript
4. JQuery

## 后端
1. SpringMVC
2. Spring
3. MyBatis
4. SpringSession
5. Quartz
6. Dubbo
7. ElasticSearch集群
8. ActiveMQ
9. FastDFS
10. Druid
11. MySQL 
12. Redis
13. MyCat
14. Nginx集群
15. Tomcat集群
16. Logback
17. Lombok
18. Guava
19. Docker
20. Jsp
21. Apache Shiro
22. PageHelper
23. Swagger2
24. Freemark
25. RocketMQ


## 配置相关

## Linux集群免密码登录

1. 使用ssh工具生成ssh密钥对: `ssh-keygen -t rsa`(所有的选项都默认,然后回车),
2. 将用户主目录下的.ssh目录下的id_rsa.pub文件复制到想要相互通信的其他主机上
3. 在需要相互通信的主机的用户主目录下的.ssh目录下创建authorized_keys文件(如果该文件存在则不需要创建)
4. 将id_rsa.pub文件中的内容追加到authorized_keys文件中`cat id_rsa.pub >> authorized_keys`


## Nginx安装

1. 下载编译环境: `yum install pcre pcre-devel zlib zlib-devel gcc gcc+ gcc-c++ openssl openssl-devel `
2. 解压nginx的源码包: `tar -zxvf nginx-1.6.2.tar.gz`
3. 进行configure配置: `cd nginx-1.6.2 && ./configure --prefix=/usr/local/nginx`
4. 编译安装: `make && make install`
5. 关闭nginx: `/usr/local/nginx/sbin/nginx -s stop`
6. 重启nginx: `/usr/local/nginx/sbin/nginx -s reload`

## Nginx使用Keepalived达到高可用

1. 解压keepalived的压缩包
2. 进行configure配置: `cd /usr/local/soft/keepalived-1.2.18 && ./configure --prefix=/usr/local/keepalived`
3. 编译安装: `make && make install`
4. 将keepalived配置成Linux的服务:
	1. `mkdir /etc/keepalived`
	2. `cp /usr/local/keepalived/etc/keepalived/keepalived.conf /etc/keepalived/`
	3. `cp /usr/local/keepalived/etc/rc.d/init.d/keepalived /etc/init.d/`
	4. `cp /usr/local/keepalived/etc/sysconfig/keepalived /etc/sysconfig/`
	5. `ln -s /usr/local/sbin/keepalived /usr/sbin/`
	6. `ln -s /usr/local/keepalived/sbin/keepalived /sbin/`
5. 设置keepalived服务为开机启动: `chkconfig keepalived on`
6. 直接启动: `service keepalived start`
7. 在`/etc/keepalived/`下创建并编辑两个文件`keepalived.conf`和`nginx_check.sh`

192.168.33.27的keepalived.conf:
	
![Aaron Swartz](https://raw.githubusercontent.com/fuyunwang/Nginx_Settings/master/192.168.33.27.png)

192.168.33.28的keepalived.conf:

![Aaron Swartz](https://raw.githubusercontent.com/fuyunwang/Nginx_Settings/master/192.168.33.28.png)


两个主机采用相同的nginx_check.sh:

![Aaron Swartz](https://raw.githubusercontent.com/fuyunwang/Nginx_Settings/master/nginx_check.png)



