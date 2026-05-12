#!/bin/bash
echo "→ 清理临时缓存文件..."
rm -rf /tmp/script_temp/*
echo "→ 重置临时权限..."
chmod 755 /tmp
echo "→ 清理完成"
echo "✅ 系统初始化全部完成！"