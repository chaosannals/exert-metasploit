# 扫描

```bash
# 获取指定 IP 的扫描结果
nmap -sS -Pn -A -oX <outputs/result.xml> <target>
```

```bash
# 查看数据库连接状态
db_status

# 连接数据库库
db_connect admin:123456@127.0.0.1/msf

# 把扫描结果导入到数据库
db_import <outpush/result.xml>
```

```bash
# 空闲服务器 扫描脚本
# 查找网络内可用的 空闲服务器

# 选择扫描器
use auxiliary/scanner/ip/ipidseq

# 查看参数
show options

# 设置网络 线程数 等参数
set RHOSTS 192.168.0.0/24
set THREADS 12

# 执行
run
```
