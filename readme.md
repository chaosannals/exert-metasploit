# exert-metasploit

## 连接 PostgreSQL 数据库

```bash
# 启动 PostgreSQL
service postgresql start

# 使用 postgres 用户启用 psql 终端
sudo -u postgres psql
```

```sql
/* 创建一个用户 */
CREATE USER admin WITH PASSWORD '123456';

/* 给该用户创建一个数据库 */
CREATE DATABASE msf OWNER admin;

/* 查看数据库列表 */

\l

/* 退出 psql 终端 */
quit
```

```bash
# 进入 msf 终端
msfconsole

# 连接数据库
db_connect admin:123456@127.0.0.1/msf

# 查看数据库连接状态
db_status
```

## 模块 modules 目录

### auxiliary

负责执行信息收集、扫描、嗅探、指纹识别、口令猜测和Dos攻击等功能的辅助模块

### exploits

利用系统漏洞进行攻击的动作，此模块对应每一个具体漏洞的攻击方法（主动、被动）

### payloads

成功exploit之后，真正在目标系统执行的代码或指令。分为3种类型的payload，分别是single、stages和stagers。shellcode是特殊的payload，用于拿shell。

- single：all-in-one。完整的payload，这些payload都是一体化的，不需要依赖外部的库和包。
- stagers：目标计算机内存有限时，先传输一个较小的payload用于建立连接。
- stages：利用stagers建立的连接下载后续payload 。

### encoders

对payload进行加密，躲避AntiVirus检查的模块。

### nops

提高payload稳定性及维持大小。在渗透攻击构造恶意数据缓冲区时，常常要在真正要执行的Shellcode之前添加一段空指令区， 这样当触发渗透攻击后跳转执行ShellCode时，有一个较大的安全着陆区，从而避免受到内存 地址随机化、返回地址计算偏差等原因造成的ShellCode执行失败，提高渗透攻击的可靠性。

### post

后期渗透模块。在取得目标系统远程控制权后，进行一系列的后渗透攻击动作，如获取敏感信息、跳板攻击等操作。
