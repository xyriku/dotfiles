# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH


# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# aliases
alias ls="eza --icons=always"
alias yabaiconfig="nvim ~/.config/yabai/yabairc"
alias skhdconfig="nvim ~/.config/skhd/skhdrc"
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.lua"
alias task="~/personal/scripts/changetask.sh"
alias newquote="~/personal/scripts/newquote.sh"
alias i3config="~/.config/i3/config"
alias niriconfig="~/.config/niri/config.kdl"

# Keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=3000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups

#plugins=(
#  git tmux flutter gh
#  zsh-autosuggestions zsh-syntax-highlighting
#  fzf-tab)


source ~/.zsh/catppuccin_latte-zsh-syntax-highlighting.zsh
#fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
ZSH_TMUX_AUTOSTART=true

#source $ZSH/oh-my-zsh.sh

eval "$(oh-my-posh init zsh --config $HOME/catppuccin_latte.omp.json)"



### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/tmux/tmux.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

zinit light Aloxaf/fzf-tab
autoload -U compinit; compinit

eval "$(zoxide init --cmd cd zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
