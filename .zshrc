sudo apt update
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"

ZSH_THEME="rkj-repos"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git extract z autojump zsh-syntax-highlighting zsh-autosuggestions)

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
alias proxy_on='export HTTPS_PROXY="http://${hostip}:7890";export https_proxy="http://${hostip}:7890";export HTTP_PROXY="http://${hostip}:7890";export http_proxy="http://${hostip}:7890";export all_proxy="socks5://${hostip}:7890";env|grep -i proxy;'
alias proxy_off='unset HTTPS_PROXY;unset HTTP_PROXY;unset http_proxy;unset https_proxy;unset all_proxy;'
alias proxy_show='env|grep -i proxy;'

export hostip=192.168.228.1
alias proxy_on='export HTTPS_PROXY="http://${hostip}:10811";export https_proxy="http://${hostip}:10811";export HTTP_PROXY="http://${hostip}:10811";export http_proxy="http://${hostip}:10811";export all_proxy="socks5://${hostip}:10810";env|grep -i proxy;'
alias proxy_off='unset HTTPS_PROXY;unset HTTP_PROXY;unset http_proxy;unset https_proxy;unset all_proxy;'
alias proxy_show='env|grep -i proxy;'



wget -e "https_proxy=http://192.168.253.1:10811"
