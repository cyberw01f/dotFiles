# .bashrc

# Copyright (c) 2017 Abhineet Dubey. All rights reserved.
# Use of this source code is governed by the GPLv3 license that can be
# found in the LICENSE file.

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#print help
alias yelp='cat ~/.bashrc | grep alias'
alias fcow='fortune | cowsay'
#eye candy
alias sf='screenfetch'
#alias bq='python3 path_to_folder/bashquote.py'

#directory navigation
alias dev='cd ~/workspace'
alias notes='cd ~/gdrive/Notes'
alias tree='tree -Csuh'

#dnf shortcuts
alias upgrade='sudo dnf upgrade -y'
alias upgrader='sudo dnf upgrade --refresh -y'
alias install='sudo dnf install'
alias erase='sudo dnf erase'
alias search='sudo dnf search'
alias undo='sudo dnf history undo last'

#important tools
alias speed='speedtest-cli'
alias o='xdg-open'
#alias unetbootin='sudo QT_X11_NO_MITSHM=1 unetbootin'
alias systemctlr='systemctl list-unit-files --type=service | grep enabled'

#network shortcuts
alias ip='ip addr | grep wlp9s0'
alias pingg='ping -c 3 google.com'
