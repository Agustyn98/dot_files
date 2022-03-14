# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/agus/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz compinit promptinit
compinit
promptinit

#prompt walters
#PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '


source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# ALIASES:
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
alias hibernate="sudo systemctl hibernate"
alias suspend="sudo systemctl suspend"
alias monitor.mirror="xrandr --output DP-1 --auto --same-as eDP-1"
alias monitor.right="xrandr --output DP-1 --auto --right-of eDP-1"
alias monitor.left="xrandr --output DP-1 --auto --left -of eDP-1"
alias gpu="sudo intel_gpu_top"
alias rm="rm -i"
alias hdd="sudo smartctl -i -n standby /dev/sda1"
alias wifi.off="nmcli radio wifi off"
alias wifi.on="nmcli radio wifi on"
alias free="free --mega"
alias mpvyt="mpv --ytdl-format='bestvideo[height<=1090]+bestaudio/best'"
# Example : ffmpeg -i video.mp4 -ss 00:09:35 -to 00:12:08 -c copy ~/output.mp4
function cut_video() { ffmpeg -i $1 -ss $2 -to $3 -c copy ~/cut_video.mp4; }
alias voltage="sudo intel-undervolt measure -s 0.5"
function mount_usb() { sudo mount -o umask=0 $1 $2; }


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	  exec startx
fi
