#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias watchsensors="watch \"sensors | grep 'temp3\|edge:\|fan1'\""
alias sensors.cpu="sensors | grep 'temp3\|fan1\|edge:'"
alias py="python"
alias watchcpu="watch cat /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_cur_freq"
alias du.1="du --max-depth 1 -h"
alias docker.start="sudo systemctl start docker"
alias docker.stop="sudo systemctl stop docker.socket&&sudo systemctl stop docker.service"

PS1="\[\e[36m\]\u\[\e[m\] \[\e[35m\]\W\[\e[m\] \\$ "

export LC_ALL=en_US.UTF-8
