zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Added for autojump
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh && . /usr/share/autojump/autojump.sh
source /usr/share/autojump/autojump.sh

# alias ohmyzsh="mate ~/.oh-my-zsh"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias pip=pip3
alias python=python3
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jameshwade/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jameshwade/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jameshwade/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jameshwade/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pyenv configuration
if command -v pyenv 1>/dev/null 2>&1; then
	  eval "$(pyenv init -)"
fi

export PATH=$PATH:/usr/local/go/bin
