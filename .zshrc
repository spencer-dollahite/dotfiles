set -o vi
bindkey "^R" history-incremental-search-backward  # Add reverse history search
alias p='python3'
alias v='vim'

# grab vpn IP for reverse shells and such
tunip=$(ip addr show tun0 | grep 'inet ' | awk '{ print $2 }' | cut -d/ -f1) 

# Target IP: replace with current target and source this file or spawn new shell
tip=10.10.10.13
