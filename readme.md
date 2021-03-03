# exert-metasploit

```bash
# 进入命令行
msfconsole
```

## msfconsole 终端

```bash
# 帮助
help

# 重载，自定义模块等添加或修改代码后要重载。
reload_all

# 查看MSF有没有连接上后台数据库。
db_status

# 
```

## msfdb 数据库

```bash
# 初始化数据库
msfdb init

# 重新初始化
msfdb reinit

# 删除数据库
msfdb delete

# 重启
msfdb start

# 停止
msfdb stop

# 查看状态
msfdb status

# 启动数据库并进入终端
msfdb run
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
