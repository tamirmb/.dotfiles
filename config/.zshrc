export PATH="$HOME/.local/bin:$PATH"
source <(fzf --zsh)

# Colored ls, plus colors for grep
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd   # optional: tweak the ls color scheme
alias grep='grep --color=auto'

# Colored prompt
autoload -U colors && colors
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# Optional: colored tab-completion lists
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias lgit='lazygit'
alias zshrc='nvim $HOME/.zshrc'
alias dotfiles='cd $HOME/.dotfiles'
