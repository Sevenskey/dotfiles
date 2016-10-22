#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias ssk='sudo sslocal -c /etc/shadowsocks.json -d start'
alias sskt='sudo sslocal -c /etc/shadowsocks.json -d stop'
alias pyweb='python -m SimpleHTTPServer '
alias pxc='proxychains'
alias cws='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/connect.conf'

PS1='[\u@\h \W]\$ '
