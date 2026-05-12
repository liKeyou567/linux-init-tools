#!/bin/bash
echo "====================================="
echo "  System Automation Script Running"
echo "====================================="
sleep 1

echo -e "\n[1/4] 检查系统环境..."
bash ./utils/env_check.sh

echo -e "\n[2/4] 配置网络参数..."
bash ./utils/network.sh

echo -e "\n[3/4] 记录运行日志..."
bash ./utils/log.sh

echo -e "\n[4/4] 完成初始化清理..."
bash ./utils/cleanup.sh

echo -e "\n✅ 所有自动化任务执行完成！"