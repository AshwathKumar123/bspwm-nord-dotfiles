#
# ~/.bashrc
#

# begin default bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# default bash startup prompt
# commented out when using starship/other prompts
# PS1='[\u@\h \W]\$'

# end default bashrc

# begin custom bashrc

# exports

# text editor
export EDITOR=vim

# startup

# fetch util

rxfetch

# starship prompt

eval "$(starship init bash)"

# aliases

# git

alias clone='git clone'

# system/other

alias cls='clear'
alias ls='ls --color=auto'
alias ..='cd ..'
alias grep='grep --color=auto'
alias df='df -h'
alias kernel='uname -s -r'
alias nano='nano -m'
alias ...='cd .. && cd ..'
alias sn='shutdown now'
alias rbt='reboot'
alias free='free -h'
alias xftar='bsdtar -xf'
alias uzip='unzip'
alias spd='speedtest-cli'
alias visudo='sudo EDITOR=vim visudo'
alias e='$EDITOR'
alias wtr='curl wttr.in'

# rice flags

alias tty-clock='tty-clock -c -C 4 -b'
alias nf='neofetch'
alias rx='rxfetch'
alias um='unimatrix --color blue'
alias bp='bash-pipes'
alias rr='curl -s L https://raw.githubusercontent.com/cryptodragonlady/rickrollrc/master/roll.sh | bash'

# pacman and yay

alias paccleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias yaycleanup='yay -Rns $(yay -Qtdq)'
alias pacsyu='sudo pacman -Syyu'
alias yaysyu='yay -Syyu'
alias yaysua='yay -Sua' # aur upgrades only
alias pacunlock='sudo rm /var/lib/pacman/db.lck'

# open configs

alias alacritty-config='$EDITOR ~/.config/alacritty/alacritty.yml'
alias bashrc='$EDITOR ~/.bashrc'
alias bspwmrc='$EDITOR ~/.config/bspwm/bspwmrc'
alias i3-config='$EDITOR ~/.config/i3/config'
alias i3status-config='$EDITOR ~/.config/i3status/i3status.conf'
alias mirrorlist='$EDITOR /etc/pacman.d/mirrorlist'
alias picom-config='$EDITOR ~/.config/picom/picom.conf'
alias polybar-bspwm='$EDITOR ~/.config/polybar/nord-bspwm/configs/normal/config.ini'
alias polybar-i3='$EDITOR ~/.config/polybar/nord-i3/configs/normal/config.ini'
alias sxhkdrc='$EDITOR ~/.config/sxhkd/sxhkdrc'
alias xinitrc='$EDITOR ~/.xinitrc'
alias xresources='$EDITOR ~/.Xresources'

# end custom bashrc
