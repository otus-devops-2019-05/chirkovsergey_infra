ssh -A -t 35.241.146.23 ssh root@someinternalhost
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa && ssh -A -t 35.241.146.23 ssh 10.132.0.8

eval `ssh-agent -s` && ssh-add && ssh -A -t 35.241.146.23 ssh 10.132.0.8

https://debian.pro/567

доп_дз
можно ходить на оба сервера по имени

cat ~/.ssh/config 
Host *
ForwardAgent yes

Host bastion
HostName 35.241.146.23

Host someinternalhost
HostName 10.132.0.8
ProxyCommand ssh bastion nc %h %p

