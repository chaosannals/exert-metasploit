# 模块

只有 modules 固定的几个目录会被扫描，自定义不会，所以不要直接在 modules 下创建目录存放脚本。

```bash
# 把 exert 模块目录链接到 matesploit 的模块目录下 auxiliary 中。
ln -s <project_path>/modules/exert/ /usr/share/metasploit-framework/modules/auxiliary/exert
```
