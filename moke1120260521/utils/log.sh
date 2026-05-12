#!/bin/bash
echo "→ 创建运行日志目录..."
mkdir -p /tmp/script_logs
echo "→ 记录执行时间: $(date)" > /tmp/script_logs/run.log
echo "→ 日志已保存"
cat /tmp/script_logs/run.log
echo "✅ 日志模块执行完成"