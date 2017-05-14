#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#################################### PATHs and etc ###############################################

export PATH=$PATH:/usr/local/bin/scripts

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Background function

function bg() {
    ($* &> /dev/null &)
}

############################# Default bash look ##################################################

#export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

############################# Custom bash looks ##################################################

# Custom bash config 1 (Cyan) # Overwatch
export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;11m\]^_^\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;14m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\W\[$(tput sgr0)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;252m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"


# Custom bach config (?) # HighNoon
#export PS1="\[\033[38;5;12m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;11m\]^_^\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;12m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

# Custom Bashlook 2 (Blue) # HighNoon
#export PS1="\[\033[38;5;12m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput sgr0)\]\[\033[38;5;12m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;11m\]^_^\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;12m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

# Custom Bashlook 3 (Red) # HighNoon
#export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\[$(tput sgr0)\]\[\033[38;5;1m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;11m\]\\\\_^\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;9m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;1m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

################################### ls Color Config ##############################################


[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

#[ -e "/etc/.dir_colors" ] && DIR_COLORS="/etc/.dir_colors"
#[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
#[ -e "$DIR_COLORS" ] || DIR_COLORS=""
#eval "`dircolors -b $DIR_COLORS`"

################################## Overwatch Aliases #############################################

alias ls='ls --color=auto'
alias grep='grep --color=auto'

################################ HighNoon Aliases ################################################

alias honey=/home/camio/Documents/Honeyview/Honeyview.exe
alias xe=cconv
alias st=speedtest-cli
alias gedit='bg gedit -s'
alias cdscripts='cd /usr/local/bin/scripts/ && ll'
#alias scripts='/usr/local/bin/scripts/'
alias cymatrix='cmatrix -bs -C cyan && clear'
alias rematrix='cmatrix -bs -C red && clear'
alias blmatrix='cmatrix -bs -C blue && clear'
alias ..="cd .."
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias wget="wget -c"
alias histg="history | grep"

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'

# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

# Progress bar on file copy. Useful evenlocal.
alias cpProgress="rsync --progress -ravz"
alias tcalc="gcalccmd"

# cli Translator aliases
alias jaentrans="trans ja:en"
alias ennotrans="trans en:no"
alias noentrans="trans no:en"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# lcd will cd and ls

alias lcd=changeDirectory
function changeDirectory {
  cd $1 ; ls -la
}

# varde/etc HighNoon aliases
alias todolist="cat ~/Dropbox/bashrc/TODO"
alias todoedit="gedit ~/Dropbox/bashrc/TODO"
alias stlog="cat ~/Documents/McCree/VARDE/Netlog/Speedtest.txt"
alias vardelogs="xdg-open ~/Documents/McCree/VARDE/Netlog/"
alias aliashelp="cat ~/Dropbox/bashrc/aliases"
alias jacheat="cat ~/Dropbox/bashrc/.japanmeanings"
alias jaedit="gedit ~/Dropbox/bashrc/.japanmeanings"
alias imback="shutdown -c"


##########################Alias definition script from HighNoon #################################
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

################################# Currency Converter (xe) ########################################

cconv() {
  wget -qO- "http://www.google.com/finance/converter?a=$1&from=$2&to=$3" |  sed '/res/!d;s/<[^>]*>//g';
}

################################# HighNoon ECHOs #################################################

#fortune | lolcat
#echo
#echo Remember your TO DO list!!   todolist = cat file
#echo

################################# Overwatch ECHOs ################################################

neofetch
echo
echo Remember your TO DO list!!   todolist = cat file
echo


##################################################################################################
