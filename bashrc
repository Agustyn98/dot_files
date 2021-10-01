#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sensors.cpu="sensors | grep 'Package\|fan'"
alias docker.stop="systemctl stop docker && systemctl stop docker.socket"
alias py="python"
alias watchcpu="watch cat /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_cur_freq"

#Original:
#PS1='[\u@\h \W]\$ '
PS1="\[\e[36m\]\u\[\e[m\] \[\e[35m\]\W\[\e[m\] \\$ "

export LC_ALL=en_US.UTF-8
