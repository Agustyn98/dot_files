#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias watchsensors="watch \"sensors | grep 'Package\|fan1'\""
alias sensors.cpu="sensors | grep 'Package\|fan1\|edge'"
alias py="python"
alias watchcpu="watch cat /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_cur_freq"
alias du.1="du --max-depth 1 -h"
alias docker.start="sudo systemctl start docker"
alias docker.stop="sudo systemctl stop docker.socket;sudo systemctl stop docker.service"
alias bluetooth.start="sudo systemctl start bluetooth"
alias bluetooth.stop="sudo systemctl stop bluetooth"
#alias sudo="doas"
alias hibernate="sudo systemctl hibernate"
alias suspend="sudo systemctl suspend"
alias monitor.mirror="xrandr --output DP-1 --auto --same-as eDP-1"
alias monitor.right="xrandr --output DP-1 --auto --right-of eDP-1"
alias monitor.left="xrandr --output DP-1 --auto --left -of eDP-1"
alias gpu="sudo intel_gpu_top"
alias mount="mount -o gid=users,fmask=113,dmask=002"

PS1="\[\e[36m\]\u\[\e[m\] \[\e[35m\]\W\[\e[m\] \\$ "
#PS1="\[\e[36m\]si\e[m\] \[\e[35m\]\W\[\e[m\] \\$ "

export LC_ALL=en_US.UTF-8
