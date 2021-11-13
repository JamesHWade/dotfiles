zmodload zsh/zprof

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Added for autojump
[ -f /usr/local/etc/profile.d/autojump.sh ]
source /usr/share/autojump/autojump.sh

# alias ohmyzsh="mate ~/.oh-my-zsh"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias pip=pip3
alias python=python3
alias r=radian

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# nvm
source ~/.nvm/nvm.sh
