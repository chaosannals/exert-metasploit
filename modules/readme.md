# 模块

只有 modules 固定的几个目录会被扫描，自定义不会，所以不要直接在 modules 下创建目录存放脚本。

```bash
# 如果没有目录需要创建
mkdir ~/.msf4/modules/auxiliary

# 用户的 ~/.msf4/modules 目录是个人模块目录
ln -s <project_path>/modules/auxiliary/exert ~/.msf4/modules/auxiliary/exert

# 启动时可以指定一个目录替代默认的 ~/.msf4/modules 路径。
msfconsole -m /path/to/modules/

# 把 exert 模块目录链接到 matesploit 的模块目录下 auxiliary 中。
ln -s <project_path>/modules/exert/ /usr/share/metasploit-framework/modules/auxiliary/exert
```

```bash
# 加载额外的模块
loadpath /path/to/modules

```
