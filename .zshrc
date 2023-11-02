ZSH_THEME="rkj-repos"

plugins=(git extract z autojump zsh-syntax-highlighting zsh-autosuggestions)

export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
alias proxy_on='export HTTPS_PROXY="http://${hostip}:7890";export https_proxy="http://${hostip}:7890";export HTTP_PROXY="http://${hostip}:7890";export http_proxy="http://${hostip}:7890";export all_proxy="socks5://${hostip}:7890";env|grep -i proxy;'
alias proxy_off='unset HTTPS_PROXY;unset HTTP_PROXY;unset http_proxy;unset https_proxy;unset all_proxy;'
alias proxy_show='env|grep -i proxy;'
