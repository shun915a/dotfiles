eval "$(starship init zsh)"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-completions

if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

autoload -Uz compinit
compinit -u

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select



# alias

alias lsa='ls -a -l'
alias cdp='cd ~/projects'
alias vi=nvim
alias viz='vi ~/.zshrc'
alias viv='vi ~/.config/nvim/init.vim'
alias be='bundle exec'


# ghq peco hub

alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'



# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


plugins=(
    zsh-autosuggestions
)
