
alias ll='ls -lh'
alias lt='ls -lhrt'

export PS1='[\u@\h \W]\$ '
export PATH=$PATH:/workspace/bin

#export PATH=$PATH:/opt/crosstool-ng-1.10.0/bin
#export PATH=$PATH:/opt/crosstool-ng-1.9.3/bin
#export PATH=$PATH:/root/x-tools/arm-cortex_a9-linux-gnueabi/bin
#export CROSS_COMPILE=arm-linux-

#export http_proxy="172.16.55.51:808"
#export ftp_proxy="172.16.55.51:808"

export PROMPT_COMMAND='{ msg=$(history 1 | { read x y; echo $y; });user=$(whoami); echo $msg:$PWD:$(date "+%Y-%m-%d %H:%M:%S"):$user:$(who am i); } >> /workspace/.history-$(date "+%Y-%m")'
#export PROMPT_COMMAND='{ msg=$(history 1 | { read x y; echo $y; });user=$(whoami); echo $msg:$PWD:$(date "+%Y-%m-%d %H:%M:%S"):$user:$(who am i); } >> ~/.local/.history-$(date "+%Y-%m")'

cd /workspace

#git
alias gitlog1='git log --pretty=format:"%h - %cd %an : %s" --date=iso'
alias gitlog2='git log --pretty=format:"%h %s" --graph'

#screen
alias sl='screen -ls'
alias sr='screen -D -R'

#eda_tools
source /eda/common.sh

