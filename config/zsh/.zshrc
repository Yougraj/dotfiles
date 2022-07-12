# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# aliases
[ -f "${XDG_CONFIG_HOME}/shell/aliases" ] && source "${XDG_CONFIG_HOME}/shell/aliases"

# options
unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

autoload -U compinit 
compinit

bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# alias for git bare repo for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
#alias code='vscodium'
alias ..='cd ..'
alias p='sudo pacman'
alias reboot='sudo reboot'
alias v='nvim'
alias zcf='nvim ~/.config/zsh/.zshrc'
alias Sandroid-studio='sudo _JAVA_AWT_WM_NONREPARENTING=1 android-studio'
alias ls="lsd"
alias kneofetch="neofetch --kitty /home/yougraj/.config/wallpapers/neofetch.jpg"
# alias ls='lsd --group-dirs=first --color=auto -F1 "$@"'
# alias cd='lsd --group-dirs=first --color=auto -F'
# alias lf='lfcd'

# theme/plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/auto-notify/auto-notify.plugin.zsh
source /usr/share/zsh/plugins/you-should-use/you-should-use.plugin.zsh


zstyle ':completion:*' menu select

# history substring search option
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# auto notify options
AUTO_NOTIFY_IGNORE+=("lf" "hugo serve")

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

