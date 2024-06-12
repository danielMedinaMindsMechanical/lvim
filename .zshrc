export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export NVM_DIR="$HOME/.nvm"
export EDITOR=lvim
export COMPOSER_ALLOW_XDEBUG=0
export PATH=$PATH:/home/daniel/.local/bin/laravel-dev-tools/builds

ZSH_THEME="gentoo"
RPROMPT='%F{green}[%*]%f'

plugins=(git)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vi="lvim"
alias viz="lvim ~/.zshrc"
alias lg="lazygit"
alias cw="cd ~/work"
alias tm="tmux"
set -o vi

PS1='%(!.%B%F{red}.%B%F{green}%n) %F{blue}%(!.%1~.%~)
 ${vcs_info_msg_0_}%F{blue}%(!.#.>)%k%b%f '

 # If fzf is installed via git clone
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#  # Setup fzf
# if [ -f /usr/share/fzf/key-bindings.zsh ]; then
#     source /usr/share/doc/fzf/examples/key-bindings.zsh
# fi

# if [ -f /usr/share/fzf/completion.zsh ]; then
#     source /usr/share/doc/fzf/examples/completion.zsh
# fi

# exists purely for reference 
# export PYTHONPATH=$PYTHONPATH:/usr/lib/freecad-python3/lib
# if [ ! -n "$(grep -P "[[:space:]]winhost" /etc/hosts)" ]; then
#   export winhost=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
#   printf "%s\t%s\n" "$winhost" "winhost" | sudo tee -a "/etc/hosts"
# fi
#
